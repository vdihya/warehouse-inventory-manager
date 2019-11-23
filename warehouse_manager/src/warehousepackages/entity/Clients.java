package warehousepackages.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name="clients")
public class Clients {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="clientid")
	private int clientid;
	

	@NotEmpty(message="Required field")
	@Column(name="clientname")
	private String clientname;
	

	@NotEmpty(message="Required field")
	@Column(name="address")
	private String address;
	

	@NotEmpty(message="Required field")
	@Size(min=10,message="10 digits required")
	@Column(name="phone")
	private String phone;
	
	public Clients(String string){}


	public Clients() {
		// TODO Auto-generated constructor stub
	}


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
