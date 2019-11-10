package warehousepackages.service;

import java.util.List;

import warehousepackages.entity.Clients;

public interface ClientsService {

	public List<Clients> getClients();

	public void saveClient(Clients client);

	public Clients getClient(int clientid);

	public void deleteClient(int clientid);
	
}
