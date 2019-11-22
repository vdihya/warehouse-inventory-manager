package warehousepackages.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="deliverydetails")
public class DeliveryDetails {
	
	@Id
	@Column(name="deliveryid")
	private int deliveryid;

	@Column(name="status_")
	private String status;
	
	@Column(name="estimated_delivery_by")
	private String estimated;
	
	@Column(name="date_of_schedule")
	private String scheduled;

	public int getDeliveryid() {
		return deliveryid;
	}

	public void setDeliveryid(int deliveryid) {
		this.deliveryid = deliveryid;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getEstimated() {
		return estimated;
	}

	public void setEstimated(String estimated) {
		this.estimated = estimated;
	}

	public String getScheduled() {
		return scheduled;
	}

	public void setScheduled(String scheduled) {
		this.scheduled = scheduled;
	}

	@Override
	public String toString() {
		return "DeliveryDetails [deliveryid=" + deliveryid + ", status=" + status + ", estimated=" + estimated
				+ ", scheduled=" + scheduled + "]";
	}
	
	
	
	
	
	

}
