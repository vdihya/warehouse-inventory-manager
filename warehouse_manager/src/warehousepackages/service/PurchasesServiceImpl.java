package warehousepackages.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import warehousepackages.dao.PurchasesDAO;
import warehousepackages.entity.Purchases;

@Service
public class PurchasesServiceImpl implements PurchasesService {

	@Autowired
	private PurchasesDAO purchasesdao;
	
	@Override
	@Transactional
	public List<Purchases> getPurchases() {
		return purchasesdao.getPurchases();
	}

	@Override
	@Transactional
	public Integer savePurchase(Purchases purchase) {
		return purchasesdao.savePurchase(purchase);
		
	}

	
}
