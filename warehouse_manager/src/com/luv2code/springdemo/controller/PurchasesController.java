package com.luv2code.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.luv2code.springdemo.entity.PurchaseDetails;
import com.luv2code.springdemo.entity.Purchases;
import com.luv2code.springdemo.service.PurchaseDetailsService;
import com.luv2code.springdemo.service.PurchasesService;


@Controller
@RequestMapping("/purchases")
public class PurchasesController {

	@Autowired
	private PurchasesService purchasesservice;
	@Autowired
	private PurchaseDetailsService purchasedetailsservice;
	
	@GetMapping("/list")
	public String listPurchases(Model theModel)
	{
		List<Purchases> purchases = purchasesservice.getPurchases();
		theModel.addAttribute("purchases",purchases);
		List<PurchaseDetails> purchasedetails = purchasedetailsservice.getPurchaseDetails();
		theModel.addAttribute("purchasedetails",purchasedetails);
		return "list-purchases";
		
	}
}
