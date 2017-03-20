package com.niit.jewellarycartbackend.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.jewellarycartbackend.domain.Supplier;


@Repository
public interface SupplierDAO {

	public List<Supplier> list();

	
	public boolean save(Supplier supplier);

	
	public boolean update(Supplier supplier);

	
	public boolean delete(String id);

	
	public boolean delete(Supplier supplier);

	public Supplier getSupplierByID(String id);

	
	public Supplier getSupplierByName(String name);

}
