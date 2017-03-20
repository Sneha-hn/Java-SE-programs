/*package com.niit.jewellarycartbackendtest;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.jewellarycartbackend.dao.My_CartDAO;
import com.niit.jewellarycartbackend.domain.My_Cart;





public class My_CartTestCase {
	
	@Autowired
	private static My_Cart my_Cart;
	
	@Autowired
	private static My_CartDAO  my_cartDAO;
	/*
	public static void main(String args[])
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext ();
		context.scan("com.niit");
		context.refresh();
		
		my_Cart = (My_Cart) context.getBean("my_Cart");
		
		my_cartDAO = (My_CartDAO)context.getBean("my_cartDAO");
		
		my_Cart.setId("N001");
		my_Cart.setUser_id("SN1703002");
		my_Cart.setProduct_id("SN16030001");
		my_Cart.setQuantity(2);
	   	
		
	boolean flag =my_cartDAO.save(my_Cart);
	
	if(flag)
	{
		System.out.println("user Added.....");
	}
	else
	{
		System.out.println("user not Added...");
	}
	}
	*/
/*
	@BeforeClass
	   public static void init (){
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext ();
			context.scan("com.niit");
			context.refresh();
			
			my_Cart = (My_Cart) context.getBean("my_Cart");
			
			my_cartDAO = (My_CartDAO)context.getBean("my_cartDAO");
			
			
		
	}
	
		// test cases
	/*@Test
		public void createMy_CartTestCase() {
		my_Cart.setId("SN003");
		my_Cart.setUser_id("SN1703003");
		my_Cart.setProduct_id("SN16030003");
		my_Cart.setQuantity(5);

		boolean flag = my_cartDAO.save(my_Cart);
		Assert.assertEquals("my_cart is saved", true, flag);
		
		
	}
}*/
