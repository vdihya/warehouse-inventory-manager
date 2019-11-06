package com.luv2code.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.luv2code.springdemo.entity.Clients;
import com.luv2code.springdemo.service.ClientsService;

@Controller
@RequestMapping("/clients")
public class ClientsController {

	@Autowired
	private ClientsService clientsservice;
	
	@GetMapping("/list")
	public String listClients(Model theModel)
	{
		List<Clients> clients = clientsservice.getClients();
		theModel.addAttribute("clients",clients);
		return "list-clients";
	}
	
	@GetMapping("/showFormForAddingClient")
	public String showFormForAddingClient(Model theModel)
	{
		Clients client = new Clients(); 
		theModel.addAttribute("client",client);
		return "client-form";
	}
	
	@PostMapping("/saveClient")
	public String saveClient(@ModelAttribute("client") Clients client)
	{
		clientsservice.saveClient(client);
		return "redirect:/clients/list";
	}
	
	@GetMapping("/showFormForUpdatingClient")
	public String showFormForUpdatingClient(@RequestParam("clientid") int clientid,Model theModel)
	{
		Clients client = clientsservice.getClient(clientid);
		theModel.addAttribute("client",client);
		return "client-form";
	}
	@GetMapping("/delete")
	public String deleteClient(@RequestParam("clientid") int clientid)
	{
		clientsservice.deleteClient(clientid);
		return "redirect:/clients/list";
	}
}
