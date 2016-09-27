package com.vic.service;

import com.vic.model.Shipping;

public interface ShipService {

public void saveOrUpdate(Shipping ship);
public Shipping getbyid(int id);
}
