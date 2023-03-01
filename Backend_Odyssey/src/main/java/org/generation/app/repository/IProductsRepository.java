package org.generation.app.repository;

import java.util.List;

import org.generation.app.model.Products;
import org.springframework.data.repository.CrudRepository;

public interface IProductsRepository extends CrudRepository<Products, Long> {
	
	Products findById(long idProduct);
	List<Products> findAllByName(String name);
	

}
