package com.niit.jewellarycartbackend.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.jewellarycartbackend.domain.Category;


public interface CategoryDAO {
	// declare the methods related to CRUD operation

	// get all categories
	public List<Category> list();

	// create category
	public boolean save(Category category);

	// update category
	public boolean update(Category category);

	// delete category by id
	public boolean delete(String id);

	// delete category by category
	public boolean delete(Category category);

	// get category by id
	public Category getCategoryByID(String id);

	// get category by name
	public Category getCategoryByName(String name);

}
