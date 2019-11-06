package com.luv2code.springdemo.dao;

import java.util.List;
import com.luv2code.springdemo.entity.Clients; 
public interface ClientsDAO {
	public List<Clients> getClients();

	public void saveClient(Clients client);

	public Clients getClient(int clientid);

	public void deleteClient(int clientid);
	}
