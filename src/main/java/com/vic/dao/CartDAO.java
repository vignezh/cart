package com.vic.dao;

import java.util.List;

import com.vic.model.Cart;
import com.vic.model.MainCart;

public interface CartDAO {

	public void add(Cart ct);

	public List getAllProduct();

	public Cart getProductById(int id);

	public void update(Cart ct);

	public void delete(int id);

	public void save(MainCart maincart);

}
