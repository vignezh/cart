package com.vic.model;

import java.io.Serializable;
import java.math.BigInteger;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

import javassist.SerialVersionUID;

@Entity
@Component
public class UserDetails implements Serializable {
	private static final long serialVersionUID = 45678912300L;
	@Column
	public boolean enable;
	@OneToOne
	@JoinColumn(name = "id")
	private Cart ct;
	@Id
	@Size(min = 3, max = 15)
	private String user_name;
	@Size(min = 6, max = 16)
	private String password;
	@Transient
	private String con_password;
	private String mail_id;
	private BigInteger contact;

	// getter and setter for the above user details

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCon_password() {
		return con_password;
	}

	public void setCon_password(String con_password) {
		this.con_password = con_password;
	}

	public String getMail_id() {
		return mail_id;
	}

	public void setMail_id(String mail_id) {
		this.mail_id = mail_id;
	}

	public BigInteger getContact() {
		return contact;
	}

	public void setContact(BigInteger contact) {
		this.contact = contact;
	}

	public boolean isEnable() {
		return enable;
	}

	public void setEnable(boolean enable) {
		this.enable = enable;
	}

	public Cart getCt() {
		return ct;
	}

	public void setCt(Cart ct) {
		this.ct = ct;
	}

}
