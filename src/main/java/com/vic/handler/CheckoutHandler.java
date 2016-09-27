package com.vic.handler;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import com.vic.model.Cart;
import com.vic.model.MainCart;
import com.vic.model.Shipping;
import com.vic.model.UserDetails;
import com.vic.service.CartService;
import com.vic.service.ShipService;

@Component
public class CheckoutHandler {
	@Autowired
	HttpServletRequest re;

	public Shipping startFlow() {
		System.out.println("flow started");
		return new Shipping();
	}

	@Autowired
	CartService cs;
	@Autowired
	ShipService shipservice;

	public void saveaddress(Shipping shipment) {
		String uname;
		Authentication auth1 = SecurityContextHolder.getContext().getAuthentication();
		String name = auth1.getName();
		HttpSession ses = re.getSession();
		ses.setAttribute("u", name);
		uname = (String) ses.getAttribute("u");
		UserDetails userDetails = new UserDetails();
		userDetails.setUser_name(uname);
		shipment.setUserDetails(userDetails);
		int id = shipment.getShipid();
		shipservice.saveOrUpdate(shipment);
	}

	public void savecart(Shipping shipment) {
		MainCart cart = new MainCart();
		List<Cart> cartitems = cs.getAllProduct();
		float total = 0;
		for (int i = 0; i < cartitems.size(); i++) {
			total = (float) (total + cartitems.get(i).getTotal());
		}
		cart.setTotal(total);
		int shid = shipment.getShipid();
		cart.setUsd((shipment.getUserDetails()));
		cart.setShipdetail(shipservice.getbyid(shid));

		for (int j = 0; j < cartitems.size(); j++) {
			int id = cartitems.get(j).getId();
			Cart carts = cs.getProductById(id);
			cart.setCart(carts);
			cs.save(cart);
		}

	}

}
