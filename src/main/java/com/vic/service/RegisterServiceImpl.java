package com.vic.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vic.dao.RegisterDAO;
import com.vic.model.UserDetails;

@Service
@Transactional
public class RegisterServiceImpl implements RegisterService{
@Autowired(required=true)
RegisterDAO reg;
	@Override
	public void saveOrUpdate(UserDetails usd) {
		// TODO Auto-generated method stub
		reg.saveorUpdate(usd);
	}

}
