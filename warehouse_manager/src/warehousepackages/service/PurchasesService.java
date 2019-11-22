package warehousepackages.service;

import java.util.List;
import warehousepackages.entity.Purchases;

public interface PurchasesService {

	List<Purchases> getPurchases();

	Integer savePurchase(Purchases purchase);
	
}
