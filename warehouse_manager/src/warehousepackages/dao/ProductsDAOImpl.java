package warehousepackages.dao;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import warehousepackages.entity.Products;

import org.hibernate.Session;

import org.hibernate.SessionFactory;

import org.hibernate.query.Query;

@Repository
public class ProductsDAOImpl implements ProductsDAO {

	//inject session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Products> getProducts() 
	{
		
		//get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		
		//create a query
		Query<Products> theQuery = currentSession.createQuery("from Products order by productname",Products.class);
		
		//execute query and get result list
		List<Products> products = theQuery.getResultList();
		
		//return results
		return products;
		
	}

	@Override
	public void saveProduct(Products product) {
		// TODO Auto-generated method stub
		//get current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();
				currentSession.saveOrUpdate(product);
				
				
				
			
		
	}

	@Override
	public Products getProduct(int theId) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Products product = currentSession.get(Products.class, theId);
		//create a query 
		return product;
	
		
	
	}

	@Override
	public void deleteProduct(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		@SuppressWarnings("rawtypes")
		Query theQuery = 
		currentSession.createQuery("delete from Products where productid=:productid");
		theQuery.setParameter("productid", theId);
		theQuery.executeUpdate();
		
	}

}
