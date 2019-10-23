package com.luv2code.springdemo.dao;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.query.Query;

import com.luv2code.springdemo.entity.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	//inject session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Customer> getCustomers() 
	{
		
		//get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		
		//create a query
		Query<Customer> theQuery = currentSession.createQuery("from Customer order by productname",Customer.class);
		
		//execute query and get result list
		List<Customer> customers = theQuery.getResultList();
		
		//return results
		return customers;
		
	}

	@Override
	public void saveCustomer(Customer theCustomer) {
		// TODO Auto-generated method stub
		//get current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();
				currentSession.saveOrUpdate(theCustomer);
				
				
				
			
		
	}

	@Override
	public Customer getCustomer(int theId) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Customer theCustomer = currentSession.get(Customer.class, theId);
		//create a query 
		return theCustomer;
	
		
	
	}

	@Override
	public void deleteCustomer(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		@SuppressWarnings("rawtypes")
		Query theQuery = currentSession.createQuery("delete from Customer where productid=:productid");
		theQuery.setParameter("productid", theId);
		theQuery.executeUpdate();
		
	}

}
