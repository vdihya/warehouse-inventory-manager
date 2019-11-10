package warehousepackages.dao;

import java.util.List;

import warehousepackages.entity.Clients; 
public interface ClientsDAO {
	public List<Clients> getClients();

	public void saveClient(Clients client);

	public Clients getClient(int clientid);

	public void deleteClient(int clientid);
	}
