package com.vic.controller;

import java.io.File;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.vic.model.Product;
import com.vic.service.ProductService;

@Controller
public class ProductController {
	@Autowired(required = true)
	private ServletContext servcon;
	@Autowired
	private ProductService proser;

	// returns the product page using the key value as Map
	@RequestMapping("/product")
	public String product(Map<String, Object> map) {
		Product pro = new Product();
		map.put("product", pro);
		map.put("productList", proser.getAllProduct());
		return "product";
	}

	@RequestMapping("/viewall1")
	public String view(Map<String, Object> map) {
		Product pro = new Product();
		map.put("product", pro);
		map.put("productList", proser.getAllProduct());
		return "viewall1";
	}

	@RequestMapping(value = { "/product"}, method = RequestMethod.POST)
	public String doActions(@ModelAttribute Product product, BindingResult result, @RequestParam String action,
			Map<String, Object> map) {
		System.out.println("OK");
		Product productmodel = new Product();
		switch (action.toLowerCase()) {
		case "add":
			System.out.println("ADding");
			MultipartFile file = product.getImage();
			if (!file.isEmpty()) {
				try {
					File fl = new File(servcon.getRealPath("/"));
					File dir = new File(fl + File.separator + "resources/upload");
					if (!dir.exists())
						dir.mkdirs();
					// Create the file on server
					File serverFile = new File(dir + File.separator + product.getImagename() + ".jpg");
					System.out.println(serverFile);
					file.transferTo(serverFile);
					System.out.println(file);
				} catch (Exception e) {
					System.out.println(e.getMessage());
				}
			}
			proser.add(product);
			productmodel = product;
			break;

		case "edit":
			proser.edit(product);
			productmodel = product;
			break;

		case "delete":
			proser.delete(product.getProductid());
			productmodel = new Product();
			break;

		
		  case "search": Product searchedProductModel =
		  proser.getProduct(product.getProductid()); productmodel =
		  searchedProductModel!=null ? searchedProductModel : new Product();
		  break;
		 
		}
		map.put("productModel", productmodel);
		map.put("productmodelList", proser.getAllProduct());
		return "product";
	}

	@RequestMapping("edit/{productid}")
	public String edit(@PathVariable("productid") int id, @ModelAttribute Product product, BindingResult result,
			Map<String, Object> map) {
		product = proser.getProduct(id);
		map.put("product", product);
		map.put("productList", proser.getAllProduct());
		return "product";
	}

	@RequestMapping("delete/{productid}")
	public String del(@PathVariable("productid") int id, ModelMap model) {
		proser.delete(id);
		return "viewall1";
	}

}
