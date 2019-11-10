package warehousepackages.dao;

import java.util.List;

import warehousepackages.entity.Products;

public interface ProductsDAO {

	public List<Products> getProducts();

	public void saveProduct(Products product);

	public Products getProduct(int theId);

	public void deleteProduct(int theId);
}
