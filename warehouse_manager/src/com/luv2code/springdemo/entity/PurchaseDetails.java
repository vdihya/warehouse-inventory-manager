package com.luv2code.springdemo.entity;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="purchasedetails")
public class PurchaseDetails implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@ManyToOne
	@JoinColumn(name ="purchaseid")
	private Purchases purchaseid;
	
	@Column(name="cost")
	private double cost;
	
	@Column(name="units")
	private int units;
	
	@Column(name="date_of_purchase")
	private String date_of_purchase;

	public Purchases getPurchaseid() {
		return purchaseid;
	}

	public void setPurchaseid(Purchases purchaseid) {
		this.purchaseid = purchaseid;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public int getUnits() {
		return units;
	}

	public void setUnits(int units) {
		this.units = units;
	}

	public String getDate_of_purchase() {
		return date_of_purchase;
	}

	public void setDate_of_purchase(String date_of_purchase) {
		this.date_of_purchase = date_of_purchase;
	}

	@Override
	public String toString() {
		return "PurchaseDetails [purchaseid=" + purchaseid + ", cost=" + cost + ", units=" + units
				+ ", date_of_purchase=" + date_of_purchase + "]";
	}
	
	
	
	
	

}
