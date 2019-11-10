package warehousepackages.dao;

import java.util.List;

import warehousepackages.entity.PurchaseDetails;

public interface PurchaseDetailsDAO {

	List<PurchaseDetails> getPurchaseDetails();

	void savePurchaseDetails(PurchaseDetails purchasedetails);

}
