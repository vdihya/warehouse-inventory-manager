package warehousepackages.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import warehousepackages.dao.PurchaseDetailsDAO;
import warehousepackages.entity.PurchaseDetails;

@Service
public class PurchaseDetailsServiceImpl implements PurchaseDetailsService {

	@Autowired
	private PurchaseDetailsDAO purchasedetailsdao;
	@Override
	@Transactional
	public List<PurchaseDetails> getPurchaseDetails() {
		return purchasedetailsdao.getPurchaseDetails();
	}
	@Override
	@Transactional
	public Integer savePurchaseDetails(PurchaseDetails purchasedetails) {
		return purchasedetailsdao.savePurchaseDetails(purchasedetails);
	}
	@Override
	@Transactional
	public int checkPurchase(Integer purchaseid) {
		return purchasedetailsdao.checkPurchase(purchaseid);
	}

}
