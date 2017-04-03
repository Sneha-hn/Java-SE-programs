package com.niit.jewellarycartbackend.domain;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;


@Entity
@Table
@Component
public class Category {

	
	private String id;

	
	private String name;

	private String description;
	
	private Set<Product> products;
	
	@OneToMany(mappedBy="category",fetch= FetchType.EAGER) // to fetch the list of products lazy will wait for the action to perform but not in case of eager
	public Set<Product> getProducts() { // to get the list of products
		return products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}

	
	
	@Id
	public String getId() {
		return id;
	}

	
	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
