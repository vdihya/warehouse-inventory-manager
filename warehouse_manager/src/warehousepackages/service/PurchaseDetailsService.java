package warehousepackages.service;

import java.util.List;


import warehousepackages.entity.PurchaseDetails;

public interface PurchaseDetailsService {

	List<PurchaseDetails> getPurchaseDetails();

	Integer savePurchaseDetails(PurchaseDetails purchasedetails);

	int checkPurchase(Integer purchaseid);

}
