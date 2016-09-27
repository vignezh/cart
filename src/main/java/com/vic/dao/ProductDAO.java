package com.vic.dao;

import java.util.List;

import com.vic.model.Product;

public interface ProductDAO {
	public void add(Product product);
	public void edit(Product product);
	public void delete(int productId);
	public Product getProduct(int productId);
	public List getAllProduct();
	public List getAllFormals();
	public List getAllCasuals();
	public List getAllSports();
//	public void find(int id);
}
