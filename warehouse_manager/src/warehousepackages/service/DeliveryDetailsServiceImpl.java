package warehousepackages.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import warehousepackages.dao.DeliveryDetailsDAO;
import warehousepackages.entity.DeliveryDetails;

@Service
public class DeliveryDetailsServiceImpl implements DeliveryDetailsService {

	@Autowired
	private DeliveryDetailsDAO deliverydetailsdao;
	@Override
	@Transactional
	public List<DeliveryDetails> getDeliveryDetails() {
		// TODO Auto-generated method stub
		return deliverydetailsdao.getDeliveryDetails();
	}

}
