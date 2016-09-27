package com.vic.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vic.model.Cart;
import com.vic.model.Product;
import com.vic.service.CartService;
import com.vic.service.ProductService;

@Controller
public class CartController {
	@Autowired
	private CartService catser;
	@Autowired(required=true)
	private ProductService proser;
	private String username;

	@ModelAttribute
	public void getuserdata(HttpServletRequest req) {
		Authentication authen = SecurityContextHolder.getContext().getAuthentication();
		String name = authen.getName();
		HttpSession ses = req.getSession();
		ses.setAttribute("usr", name);
		username = (String) ses.getAttribute("usr");
		System.out.println((String) ses.getAttribute("usr"));
	}
	
	@RequestMapping(value="/cart")
	public String getcrt(Model map) {
		Cart cart = new Cart();
		List<Cart> crt = catser.getAllProduct();
		map.addAttribute("cart", cart);
		map.addAttribute("cartList", catser.getAllProduct());
		return "cart";
	}

	//all products are listed in order that users can add it to their cart
	@RequestMapping("addtocart/{productid}")
	public String addcart(@PathVariable("productid") int id) {

		Cart cart = new Cart();
		Product pr = proser.getProduct(id);
		List<Cart> crt = catser.getAllProduct();
		System.out.println(crt);
		for (int i = 0; i < crt.size(); i++) 
		{
			System.out.println("cart contents");
			int op = crt.get(i).getProduct().getProductid();
			System.out.println(op);
			System.out.println(id);
			if (op == id) 
			{
				int quantity = crt.get(i).getQuantity() + 1;
				crt.get(i).setQuantity(quantity);
				int price = pr.getProductprice() * quantity;
				crt.get(i).setTotal(price);
				System.out.println("update");
				catser.update(crt.get(i));	
				return "redirect:/cart";
			}
		}
		cart.setQuantity(1);
		cart.setTotal(pr.getProductprice());
		cart.setProduct(pr);
		System.out.println("add");
		catser.add(cart);
		return "redirect:/cart";
	}
//deleting the items from the cart of user
	@RequestMapping("delete/cart/{id}")
	public String delcart(@PathVariable("id") int id, ModelMap model) {
		System.out.println("item delete from cart");
		catser.delete(id);
		return "redirect:/cart";
	}

}
