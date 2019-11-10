package warehousepackages.dao;

import java.util.List;
import warehousepackages.entity.Purchases;

public interface PurchasesDAO {

	List<Purchases> getPurchases();

	Integer savePurchase(Purchases purchase);


}
