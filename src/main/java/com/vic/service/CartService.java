package com.vic.service;

import java.util.List;

import com.vic.model.Cart;
import com.vic.model.MainCart;

public interface CartService {
	public void add(Cart cart);

	public List getAllProduct();

	public Cart getProductById(int id);

	public void update(Cart ct);

	public void delete(int id);

	public void save(MainCart maincart);

}
