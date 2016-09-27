package com.vic.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vic.model.UserDetails;
import com.vic.model.UserRoles;
@Repository
public class RegisterDAOImpl implements RegisterDAO{
@Autowired(required=true)
SessionFactory sf;
	@Override
	public void saveorUpdate(UserDetails usdt) {
		// TODO Auto-generated method stub
		usdt.setEnable(true);
		UserRoles u=new UserRoles();
		u.setUsd(usdt);
		u.setRole("ROLE_USER");
		sf.getCurrentSession().saveOrUpdate(usdt);
		sf.getCurrentSession().saveOrUpdate(u);
	}

}
