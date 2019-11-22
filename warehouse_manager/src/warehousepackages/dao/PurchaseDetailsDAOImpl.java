package warehousepackages.dao;

import java.util.List;

import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureQuery;

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
	public Integer savePurchaseDetails(PurchaseDetails purchasedetails) {

		Session currentSession = sessionFactory.getCurrentSession();
		Integer purchaseid = (Integer) currentSession.save(purchasedetails);
		return purchaseid;
	}

	@Override
	public int checkPurchase(Integer purchaseid) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		StoredProcedureQuery query = currentSession.createStoredProcedureQuery("unitlimitcheck")
			    .registerStoredProcedureParameter("pid", int.class, ParameterMode.IN).registerStoredProcedureParameter(
			        "result", int.class, ParameterMode.OUT).setParameter("pid",purchaseid);
			query.execute();
			int result= (int) query.getOutputParameterValue("result");
		return result;
	}

}
