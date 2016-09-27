package com.vic.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class MainCart {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cartID;

	@ManyToOne
	@JoinColumn(name = "id")
	private Cart cart;

	@OneToOne
	@JoinColumn(name = "user_name")
	private UserDetails usd;
	private float total;

	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL, targetEntity = Shipping.class)
	private Shipping shipdetail;

	public UserDetails getUsd() {
		return usd;
	}

	public void setUsd(UserDetails usd) {
		this.usd = usd;
	}

	public float getTotal() {
		return total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	public Shipping getShipdetail() {
		return shipdetail;
	}

	public void setShipdetail(Shipping shipdetail) {
		this.shipdetail = shipdetail;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public int getCartID() {
		return cartID;
	}

	public void setCartID(int cartID) {
		this.cartID = cartID;
	}

}
