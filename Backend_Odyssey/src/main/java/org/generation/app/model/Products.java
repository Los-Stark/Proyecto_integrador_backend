package org.generation.app.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "products")
public class Products {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long idProducts;
	@Column(name = "nombre")
	private String name;
	@Column(name = "precio")
	private int price;
	@Column(name = "categoria")
	private int category;
	@Column(name = "enlaceimagen")
	private String imageURL;
	
	
	public long getIdProducts() {
		return idProducts;
	}
	public void setIdProducts(long idProducts) {
		this.idProducts = idProducts;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public String getImageURL() {
		return imageURL;
	}
	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}
	
	

}
