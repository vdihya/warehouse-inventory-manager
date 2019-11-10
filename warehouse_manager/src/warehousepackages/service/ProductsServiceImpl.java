package warehousepackages.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import warehousepackages.dao.ProductsDAO;
import warehousepackages.entity.Products;


@Service
public class ProductsServiceImpl implements ProductsService {
	@Autowired
	private ProductsDAO productsdao;
	@Override
	@Transactional
	public List<Products> getProducts() {
		return productsdao.getProducts();
	}
	@Override
	@Transactional
	public void saveProduct(Products product) {
		productsdao.saveProduct(product);
		
		
	}
	@Override
	@Transactional
	public Products getProduct(int theId) {
		return productsdao.getProduct(theId);
	}
	@Override
	@Transactional
	public void deleteProduct(int theId) {
		productsdao.deleteProduct(theId);
	}

}
