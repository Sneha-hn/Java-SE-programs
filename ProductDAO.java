package com.niit.jewellarycartbackend.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.jewellarycartbackend.domain.Product;

@Repository
public interface ProductDAO {
	// declare the methods related to CRUD operation

		
		public List<Product> list();

		
		public boolean save(Product product);

		
		public boolean update(Product product);

		
		public boolean delete(String id);

		
		public boolean delete(Product product);

		
		public Product getProductByID(String id);

		
		public Product getProductByName(String name);

}
