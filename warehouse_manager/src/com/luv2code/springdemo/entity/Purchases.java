package com.luv2code.springdemo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="purchases")
public class Purchases 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="purchaseid")
	private int purchaseid;
	
	@ManyToOne
	@JoinColumn(name ="clientid")
	private Clients clientid;
	
	 @ManyToOne
	 @JoinColumn(name ="productid")
	private Customer productid;
	 
	 public Purchases()
	 {
		 
	 }

	public int getPurchaseid() {
		return purchaseid;
	}

	public void setPurchaseid(int purchaseid) {
		this.purchaseid = purchaseid;
	}

	public Clients getClientid() {
		return clientid;
	}

	public void setClientid(Clients clientid) {
		this.clientid = clientid;
	}

	public Customer getProductid() {
		return productid;
	}

	public void setProductid(Customer productid) {
		this.productid = productid;
	}

	@Override
	public String toString() {
		return "Purchases [purchaseid=" + purchaseid + ", clientid=" + clientid + ", productid=" + productid + "]";
	}

	
}
