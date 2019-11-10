package warehousepackages.service;

import java.util.List;
import warehousepackages.entity.Purchases;

public interface PurchasesService {

	List<Purchases> getPurchases();

	Purchases savePurchase(Purchases purchase);

	
}
