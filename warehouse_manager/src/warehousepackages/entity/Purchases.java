package warehousepackages.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="purchases")
public class Purchases 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="purchaseid")
	private int purchaseid;
	
	@Column(name="clientid")
	private int purchaseclientid;
	
	@Column(name="productid")
	private int purchaseproductid;
	

	public Purchases()
	 {
		 
	 }

	public int getPurchaseid() {
		return purchaseid;
	}

	public void setPurchaseid(int purchaseid) {
		this.purchaseid = purchaseid;
	}

	

	public int getPurchaseclientid() {
		return purchaseclientid;
	}

	public void setPurchaseclientid(int purchaseclientid) {
		this.purchaseclientid = purchaseclientid;
	}

	public int getPurchaseproductid() {
		return purchaseproductid;
	}

	public void setPurchaseproductid(int purchaseproductid) {
		this.purchaseproductid = purchaseproductid;
	}

	@Override
	public String toString() {
		return "Purchases [purchaseid=" + purchaseid + ", purchaseclientid=" + purchaseclientid + ", purchaseproductid="
				+ purchaseproductid + "]";
	}

	

	
}
