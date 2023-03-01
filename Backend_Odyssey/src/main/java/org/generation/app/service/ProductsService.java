package org.generation.app.service;

import java.util.List;

import org.generation.app.model.Products;
import org.generation.app.repository.IProductsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductsService implements IProductsService {

	@Autowired
	IProductsRepository productsRepository;
	
	@Override
	public Products getProductById(long idProduct) {
		return productsRepository.findById(idProduct);

	}


	@Override
	public List<Products> getAllProducts() {
		List<Products> allProducts = (List<Products>)productsRepository.findAll();
		return allProducts;
	}

}
