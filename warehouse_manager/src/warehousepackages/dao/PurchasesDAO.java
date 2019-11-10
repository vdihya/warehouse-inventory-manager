package warehousepackages.dao;

import java.util.List;
import warehousepackages.entity.Purchases;

public interface PurchasesDAO {

	List<Purchases> getPurchases();

	Purchases savePurchase(Purchases purchase);


}
