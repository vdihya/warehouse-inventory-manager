package warehousepackages.dao;

import java.util.List;


import warehousepackages.entity.PurchaseDetails;

public interface PurchaseDetailsDAO {

	List<PurchaseDetails> getPurchaseDetails();

	Integer savePurchaseDetails(PurchaseDetails purchasedetails);

	int checkPurchase(Integer purchaseid);

	void deletePurchase(int purchaseid);

}
