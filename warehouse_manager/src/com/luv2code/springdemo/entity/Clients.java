package com.luv2code.springdemo.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="clients")
public class Clients {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="clientid")
	private int clientid;
	
	@Column(name="clientname")
	private String clientname;
	
	@Column(name="address")
	private String address;
	
	@Column(name="phone")
	private String phone;
	
	public Clients(){}


	public int getClientid() {
		return clientid;
	}


	public void setClientid(int clientid) {
		this.clientid = clientid;
	}


	public String getClientname() {
		return clientname;
	}

	public void setClientname(String clientname) {
		this.clientname = clientname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "Clients [clientid=" + clientid + ", clientname=" + clientname + ", address=" + address + ", phone="
				+ phone + "]";
	}
	
	
	
}
