package warehousepackages.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import warehousepackages.entity.Purchases;

@Repository
public class PurchasesDAOImpl implements PurchasesDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Purchases> getPurchases() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Purchases> theQuery = currentSession.createQuery("from Purchases",Purchases.class);
		List<Purchases> purchases = theQuery.getResultList();
		return purchases;
	}

	@Override
	public Integer savePurchase(Purchases purchase) {

		Session currentSession = sessionFactory.getCurrentSession();
		Integer purchaseid = (Integer) currentSession.save(purchase);
		return purchaseid;
		
	}
}

