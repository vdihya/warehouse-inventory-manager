package warehousepackages.service;

import java.util.List;

import warehousepackages.entity.Products;
public interface ProductsService {
	
	public List<Products> getProducts();

	public void saveProduct(Products theCustomer);

	public Products getProduct(int theId);

	public void deleteProduct(int theId);

}
