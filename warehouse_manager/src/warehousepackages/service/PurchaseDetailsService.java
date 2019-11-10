package warehousepackages.service;

import java.util.List;

import warehousepackages.entity.PurchaseDetails;

public interface PurchaseDetailsService {

	List<PurchaseDetails> getPurchaseDetails();

	void savePurchaseDetails(PurchaseDetails purchasedetails);

}
