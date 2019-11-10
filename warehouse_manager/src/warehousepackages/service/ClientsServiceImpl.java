package warehousepackages.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import warehousepackages.dao.ClientsDAO;
import warehousepackages.entity.Clients;

@Service
public class ClientsServiceImpl implements ClientsService 
{
	@Autowired
	private ClientsDAO clientsdao;
	@Override
	@Transactional
	public List<Clients> getClients() {
		
		return clientsdao.getClients(); //delegate to DAO
	}
	@Override
	@Transactional
	public void saveClient(Clients client) {
		// TODO Auto-generated method stub
		clientsdao.saveClient(client);
	}
	@Override
	@Transactional
	public Clients getClient(int clientid) {
		
		return clientsdao.getClient(clientid);
	}
	@Override
	@Transactional
	public void deleteClient(int clientid) {

		 clientsdao.deleteClient(clientid);
		
	}
	

}
