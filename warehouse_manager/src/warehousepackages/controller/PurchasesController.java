package warehousepackages.controller;

import java.beans.PropertyEditorSupport;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import warehousepackages.entity.Clients;
import warehousepackages.entity.Products;
import warehousepackages.entity.PurchaseDetails;
import warehousepackages.entity.Purchases;
import warehousepackages.service.ClientsService;
import warehousepackages.service.ProductsService;
import warehousepackages.service.PurchaseDetailsService;
import warehousepackages.service.PurchasesService;


@Controller
@RequestMapping("/purchases")
public class PurchasesController extends PropertyEditorSupport
{
	
	@Autowired
	private PurchasesService purchasesservice;
	@Autowired
	private PurchaseDetailsService purchasedetailsservice;
	@Autowired
	private ClientsService clientsservice;
	@Autowired
	private ProductsService productsservice;
	
	@GetMapping("/list")
	public String listPurchases(Model theModel)
	{
		
		List<PurchaseDetails> purchasedetails = purchasedetailsservice.getPurchaseDetails();
		theModel.addAttribute("purchasedetails",purchasedetails);
		return "list-purchases";
		
	}
	
	@GetMapping("/showFormForAddingPurchase")
	public String showFormForAddingPurchase(Model theModel)
	{
		List<Clients> clients = clientsservice.getClients();
		theModel.addAttribute("clients",clients);
		List<Products> products = productsservice.getProducts();
		theModel.addAttribute("products",products);
		Purchases purchase = new Purchases();
		theModel.addAttribute("purchases",purchase);
		return "purchase-form";
	}
	@PostMapping("/savePurchase")
	public String savePurchase(@ModelAttribute("purchases") Purchases purchase,Model theModel)
	{
		
		Integer purchaseid = purchasesservice.savePurchase(purchase);
		PurchaseDetails purchasedetails = new PurchaseDetails();
		theModel.addAttribute("purchasedetails",purchasedetails);
		theModel.addAttribute("purchaseid",purchaseid);
		return "purchasedetails-form";
		
	}
	
	@GetMapping("/savePurchaseDetails")
	public String savePurchaseDetails(@ModelAttribute("purchasedetails") PurchaseDetails purchasedetails)
	{	
		purchasedetailsservice.savePurchaseDetails(purchasedetails);
		return "redirect:/purchases/list";
		
	}
}
