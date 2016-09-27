package com.vic.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vic.model.Product;

@Repository
@Transactional
public class ProductDAOImpl implements ProductDAO {

	@Autowired(required = true)
	SessionFactory ss;

	@Override
	public void add(Product product) {
		// TODO Auto-generated method stub
		ss.getCurrentSession().save(product);
	}

	@Override
	public void edit(Product product) {
		// TODO Auto-generated method stub
		ss.getCurrentSession().update(product);
	}

	@Override
	public void delete(int productId) {
		// TODO Auto-generated method stub
		ss.getCurrentSession().delete(getProduct(productId));
	}

	@Override
	public Product getProduct(int productId) {
		// TODO Auto-generated method stub
		return (Product) ss.getCurrentSession().get(Product.class, productId);
	}

	@Override
	public List getAllProduct() {
		// TODO Auto-generated method stub
		return ss.getCurrentSession().createQuery("from Product").list();
	}

	@Override
	public List getAllFormals() {
		// TODO Auto-generated method stub
		return ss.getCurrentSession().createQuery("from Product where category='formals'").list();
	}

	@Override
	public List getAllCasuals() {
		// TODO Auto-generated method stub
		return ss.getCurrentSession().createQuery("from Product where category='casuals'").list();
	}

	@Override
	public List getAllSports() {
		// TODO Auto-generated method stub
		return ss.getCurrentSession().createQuery("from Product where category='sports'").list();
	}

/*	@Override
	public void find(int id) {
		// TODO Auto-generated method stub
		((ProductDAOImpl) ss.getCurrentSession()).find(id);
	}
*/
}
