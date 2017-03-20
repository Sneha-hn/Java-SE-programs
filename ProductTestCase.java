/*package com.niit.jewellarycartbackendtest;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.jewellarycartbackend.dao.ProductDAO;
import com.niit.jewellarycartbackend.domain.Product;

public class ProductTestCase {
	@Autowired
	private static Product product;
	
	@Autowired
	private static ProductDAO productDAO;
	
	
	
	
	public static void main(String args[])
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext ();
		context.scan("com.niit");
		context.refresh();
		
		product = (Product) context.getBean("product");
		 productDAO = (ProductDAO) context.getBean("productDAO");
		
		 product.setId("SN16030001");
			product.setName("EARRINGS");
			product.setDescription("Earings collection");
			product.setPrice(100);
			product.setCategory_id("SN1603001");
			product.setSupplier_id("SN1603001");
	   	
		
	boolean flag = productDAO.save(product);
	
	if(flag)
	{
		System.out.println("product Added.....");
	}
	else
	{
		System.out.println("Product not Added...");
	}
	}
	
	@BeforeClass
	public static void init() {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext ();
		context.scan("com.niit");
		context.refresh();
		
		 product = (Product) context.getBean("product");
		 productDAO = (ProductDAO) context.getBean("productDAO");
			
	}
	
	// test cases
	@Test
		public void createUserTestCase(){
			product.setId("SN16030003");
			product.setName("CHAIN SET");
			product.setDescription("NECKLACE collection");
			product.setPrice(500);
			product.setCategory_id("SN1603002");
			product.setSupplier_id("SN003");
		
		boolean flag = productDAO.save(product);
		Assert.assertEquals("Product is saved", true, flag);
	}
	

}*/