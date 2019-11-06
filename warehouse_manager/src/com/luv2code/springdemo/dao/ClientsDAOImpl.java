package com.luv2code.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.luv2code.springdemo.entity.Clients;

@Repository
public class ClientsDAOImpl implements ClientsDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Clients> getClients() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Clients> theQuery = 
				currentSession.createQuery("from Clients",Clients.class);
		List<Clients> clients = theQuery.getResultList();
		
		return clients;
	}

	@Override
	public void saveClient(Clients client) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(client);
		
	}

	@Override
	public Clients getClient(int clientid) {
		Session currentSession = sessionFactory.getCurrentSession();
		Clients client = currentSession.get(Clients.class, clientid);
		return client;
	}

	@Override
	public void deleteClient(int clientid) {
		Session currentSession = sessionFactory.getCurrentSession();
		@SuppressWarnings("rawtypes")
		Query theQuery = 
				currentSession.createQuery("delete from Clients where clientid=:clientid");
		theQuery.setParameter("clientid", clientid);
		theQuery.executeUpdate();
	}

}
