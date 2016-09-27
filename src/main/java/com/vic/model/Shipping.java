package com.vic.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import org.springframework.stereotype.Component;

@Entity
@Component
public class Shipping implements Serializable {
	private static final long serialVersionUID = 45678912300L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int shipid;
	private String name;
	private String email;
	private String address;
	private String contact;
	private String city;
	private String pincode;

	/*@OneToOne
	@JoinColumn(name="user_name")
	private UserDetails usd;
	
	public UserDetails getUsd() {
		return usd;
	}

	public void setUsd(UserDetails usd) {
		this.usd = usd;
	}*/

	public int getShipid() {
		return shipid;
	}

	public void setShipid(int shipid) {
		this.shipid = shipid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public UserDetails getUserDetails() {
		return userDetails;
	}

	public void setUserDetails(UserDetails userDetails) {
		this.userDetails = userDetails;
	}

	@OneToOne
	@JoinColumn(name = "user_name")
	private UserDetails userDetails;

}
