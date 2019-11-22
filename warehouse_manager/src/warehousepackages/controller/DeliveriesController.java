package warehousepackages.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import warehousepackages.entity.DeliveryDetails;
import warehousepackages.service.DeliveryDetailsService;

@Controller
@RequestMapping("/deliveries")
public class DeliveriesController {
	
	@Autowired 
	private DeliveryDetailsService deliverydetailsservice;

	@GetMapping("/list")
	public String listDeliveries(Model theModel)
	{
		
		List<DeliveryDetails> deliverydetails = deliverydetailsservice.getDeliveryDetails();
		theModel.addAttribute("deliverydetails",deliverydetails);
		return "list-deliveries";
		
	}
}
