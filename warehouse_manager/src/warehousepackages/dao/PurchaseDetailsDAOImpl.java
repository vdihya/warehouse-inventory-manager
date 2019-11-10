package warehousepackages.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import warehousepackages.entity.PurchaseDetails;

@Repository
public class PurchaseDetailsDAOImpl implements PurchaseDetailsDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<PurchaseDetails> getPurchaseDetails() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<PurchaseDetails> theQuery = currentSession.createQuery("from PurchaseDetails",PurchaseDetails.class);
		List<PurchaseDetails> purchasesdetails = theQuery.getResultList();
		return purchasesdetails;
	}

	@Override
	public void savePurchaseDetails(PurchaseDetails purchasedetails) {

		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(purchasedetails);
		
	}

}
