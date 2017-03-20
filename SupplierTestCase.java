/*package com.niit.jewellarycartbackendtest;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.jewellarycartbackend.dao.SupplierDAO;
import com.niit.jewellarycartbackend.domain.Supplier;

public class SupplierTestCase {

		@Autowired
		private static Supplier supplier;
		
		@Autowired
		private static SupplierDAO supplierDAO;
		
		
		public static void main(String args[])
		{
			AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext ();
			context.scan("com.niit");
			context.refresh();
			
			supplier = (Supplier) context.getBean("supplier");
			supplierDAO = (SupplierDAO) context.getBean("supplierDAO");
			supplier.setId("SUP_001");
			supplier.setName("Padmavati Fashion Imitation");
			supplier.setAddress("Mumbai, Maharashtra 400064");
			supplier.setContact("096995 82060");
			
		boolean flag = supplierDAO.save(supplier);
		
		if(flag)
		{
			System.out.println("Supplier Added.....");
		}
		else
		{
			System.out.println("Supplier not Added...");
		}
		}
		
		@BeforeClass
		public static void init() {
			AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext ();
			context.scan("com.niit");
			context.refresh();
			
			supplier = (Supplier) context.getBean("supplier");
			supplierDAO = (SupplierDAO) context.getBean("supplierDAO");
		}
	// test case	
		
		@Test
		public void createCategoryTestCase(){
	
			supplier.setId("SN005");
			supplier.setName("Vogue Crafts & Designs");
			supplier.setAddress("New Delhi, Delhi 110017");
			supplier.setContact("011 4132 4445");
			
			
			
		boolean flag = supplierDAO.save(supplier);
			
			Assert.assertEquals("Supplier is saved", true, flag);
			
		} 
}
*/