package org.generation.app.service;

import java.util.List;

import org.generation.app.model.Products;

public interface IProductsService {

	public Products getProductById(long id);
	public List<Products> getAllProducts();
	
}
