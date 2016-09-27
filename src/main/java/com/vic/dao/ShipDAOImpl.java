package com.vic.dao;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vic.model.Shipping;

@Repository
@Transactional
public class ShipDAOImpl implements ShipDAO {
	@Autowired
	SessionFactory sf;

	@Override
	public void saveOrUpdate(Shipping ship) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().saveOrUpdate(ship);
	}

	@Override
	public Shipping getbyid(int id) {
		// TODO Auto-generated method stub
		return (Shipping) sf.getCurrentSession().get(Shipping.class, id);
	}

}
