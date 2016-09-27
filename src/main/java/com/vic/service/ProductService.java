package com.vic.service;

import java.util.List;

import com.vic.model.Product;

public interface ProductService {
	public void add(Product product);
	public void edit(Product product);
	public void delete(int productId);
	public Product getProduct(int id);
	public List getAllProduct();
	public List getAllFormals();
	public List getAllCasuals();
	public List getAllSports();
//	public void find(int id);

}
