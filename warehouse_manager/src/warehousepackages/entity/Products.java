package warehousepackages.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="products")
public class Products 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="productid")
	private int productid;
	

	@NotEmpty(message="Required field")
	@Column(name="productname")
	private String productname;
	

	@NotEmpty(message="Required field")
	@Column(name="productcat")
	private String productcat;


	@NotNull(message="Required field")
	@Column(name="puc")
	private float puc;

	@Min(value=10,message="must be greater than 10 units")
	@Column(name="min")
	private int min;


	@NotEmpty(message="Required field")
	@Column(name="stockdate")
	private String stockdate;


	@NotNull(message="Required!")
	@Min(value=10,message="must be greater than 10 units")
	@Column(name="units")
	private String units;
	

	public Products(String string) 
	{
		
	}


	public Products() {
		// TODO Auto-generated constructor stub
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
