package org.generation.app.controller;

import java.util.List;

import org.generation.app.model.Products;
import org.generation.app.service.IProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/products")
public class ProductsController {
	
	@Autowired
	IProductsService productsService;
	
	@GetMapping("{id}")
	public Products getProductsById(@PathVariable("id") long idProduct) {
		return productsService.getProductById(idProduct);
		
	}
	
	@GetMapping
	public List<Products> getAllProducts(){
		return productsService.getAllProducts();
		
	}

}
