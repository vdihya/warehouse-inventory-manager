package warehousepackages.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import warehousepackages.entity.Products;
import warehousepackages.service.ProductsService;

@Controller
@RequestMapping("/products")
public class ProductsController {
	
	@Autowired
	private ProductsService productsservice;
	
	@GetMapping("/list")
	public String listCustomers(Model theModel)
	{
		List<Products> products = productsservice.getProducts();
		theModel.addAttribute("products",products);
		return "list-products";
	}
	
	@GetMapping("/showFormForAddingProduct")
	public String showFormForAdd(Model theModel)
	{
		Products product= new Products();
		theModel.addAttribute("product",product);
		return "product-form";
	}
	@PostMapping("/saveProduct")
	public String saveProduct(@Valid @ModelAttribute("product") Products product, BindingResult theBindingResult) {
		if(theBindingResult.hasErrors())
		{
			return "product-form";
			
		}
		else
		{
			productsservice.saveProduct(product);
			return "redirect:/products/list";
		}
	}
	@GetMapping("/showFormForUpdatingProduct")
	public String showFormForUpdate(@RequestParam("productid") int theId,Model theModel)
	{
		
		Products product = productsservice.getProduct(theId);
		theModel.addAttribute("product",product);

		return "product-form";
		
	}
	@GetMapping("/delete")
	public String deleteProduct(@RequestParam("productid") int theId)
	{
		productsservice.deleteProduct(theId);
		return "redirect:/products/list";
	}
}
