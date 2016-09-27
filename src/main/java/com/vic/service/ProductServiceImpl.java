package com.vic.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vic.dao.ProductDAO;
import com.vic.model.Product;

@Service
@Transactional
public class ProductServiceImpl implements ProductService{
@Autowired(required=true)
ProductDAO proddao;

@Override
	public void add(Product product) {
		// TODO Auto-generated method stub
	proddao.add(product);
	}

	@Override
	public void edit(Product product) {
		// TODO Auto-generated method stub
		proddao.edit(product);
	}

	@Override
	public void delete(int productId) {
		// TODO Auto-generated method stub
		proddao.delete(productId);
	}

	@Override
	public Product getProduct(int productId) {
		// TODO Auto-generated method stub
		return proddao.getProduct(productId);
	}

	@Override
	public List getAllProduct() {
		// TODO Auto-generated method stub
		return proddao.getAllProduct();
	}

	@Override
	public List getAllFormals() {
		// TODO Auto-generated method stub
		return proddao.getAllFormals();
	}

	@Override
	public List getAllCasuals() {
		// TODO Auto-generated method stub
		return proddao.getAllCasuals();
	}

	@Override
	public List getAllSports() {
		// TODO Auto-generated method stub
		return proddao.getAllSports();
	}

/*
	@Override
	public void find(int id) {
		// TODO Auto-generated method stub
		proddao.find(id);
	}
	*/
}
