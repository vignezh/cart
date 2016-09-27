package com.vic.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vic.dao.ShipDAO;
import com.vic.model.Shipping;

@Service
@Transactional
public class ShipServiceImpl implements ShipService {
	@Autowired
	private ShipDAO shipdao;

	
	public void saveOrUpdate(Shipping ship) {
		// TODO Auto-generated method stub
		shipdao.saveOrUpdate(ship);
	}

	
	public Shipping getbyid(int id) {
		// TODO Auto-generated method stub
		return shipdao.getbyid(id);
	}

}
