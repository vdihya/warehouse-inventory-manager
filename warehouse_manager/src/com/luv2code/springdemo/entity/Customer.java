package com.luv2code.springdemo.entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="products")
public class Customer 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="productid")
	private int productid;
	
	@Column(name="productname")
	private String productname;
	
	@Column(name="productcat")
	private String productcat;

	@Column(name="puc")
	private float puc;

	@Column(name="min")
	private int min;

	@Column(name="stockdate")
	private String stockdate;

	@Column(name="units")
	private String units;
	

	public Customer() 
	{
		
	}



	public int getProductid() {
		return productid;
	}



	public void setProductid(int productid) {
		this.productid = productid;
	}



	public String getProductcat() {
		return productcat;
	}

	public void setProductcat(String productcat) {
		this.productcat = productcat;
	}

	public float getPuc() {
		return puc;
	}

	public void setPuc(float puc) {
		this.puc = puc;
	}

	public int getMin() {
		return min;
	}

	public void setMin(int min) {
		this.min = min;
	}

	public String getStockdate() {
		return stockdate;
	}

	public void setStockdate(String stockdate) {
		this.stockdate = stockdate;
	}

	public String getUnits() {
		return units;
	}

	public void setUnits(String units) {
		this.units = units;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	@Override
	public String toString() {
		return "Customer [productid=" + productid + ", productname=" + productname + ", productcat=" + productcat
				+ ", puc=" + puc + ", min=" + min + ", stockdate=" + stockdate + ", units=" + units + "]";
	}

	
	
	

}
