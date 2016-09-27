package com.vic.dao;

import com.vic.model.Shipping;

public interface ShipDAO {
	public void saveOrUpdate(Shipping ship);

	public Shipping getbyid(int id);
}
