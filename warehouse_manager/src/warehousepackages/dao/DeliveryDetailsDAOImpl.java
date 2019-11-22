package warehousepackages.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import warehousepackages.entity.DeliveryDetails;

@Repository
public class DeliveryDetailsDAOImpl implements DeliveryDetailsDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<DeliveryDetails> getDeliveryDetails() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<DeliveryDetails> theQuery = currentSession.createQuery("from DeliveryDetails",DeliveryDetails.class);
		List<DeliveryDetails> deliverydetails = theQuery.getResultList();
		return deliverydetails;
	}
}
