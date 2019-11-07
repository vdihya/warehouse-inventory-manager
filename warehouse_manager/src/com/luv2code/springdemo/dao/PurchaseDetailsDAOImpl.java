package com.luv2code.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.luv2code.springdemo.entity.PurchaseDetails;

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

}
