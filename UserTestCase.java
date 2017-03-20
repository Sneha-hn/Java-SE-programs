package com.niit.jewellarycartbackendtest;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.jewellarycartbackend.dao.UserDAO;
import com.niit.jewellarycartbackend.domain.User;



public class UserTestCase {
	
	@Autowired
	private static User user;
	
	@Autowired
	private static UserDAO userDAO;
	
	
	public static void main(String args[])
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext ();
		context.scan("com.niit");
		context.refresh();
		
		user =(User) context.getBean("user");
		userDAO=(UserDAO) context.getBean("userDAO");
		
		
	   	user.setId("SN1703006");
		user.setName("Neha");
		user.setPassword("123");
		user.setContact("12345678210");
		user.setRole("ROLE_USER");
		user.setEmail_id("neha@gmail.com");
		
	boolean flag = userDAO.save(user);
	
	if(flag)
	{
		System.out.println("user Added.....");
	}
	else
	{
		System.out.println("user not Added...");
	}
	}
	

	/*@BeforeClass
	public static void init(){
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext ();
		context.scan("com.niit");
		context.refresh();
		
		user =(User) context.getBean("user");
		userDAO=(UserDAO) context.getBean("userDAO");
	
		
	}
		// test cases
	@Test
	public void createUserTestCase(){
		user.setId("SN1703005");
		user.setName("Geetha");
		user.setPassword("123ge");
		user.setContact("9448090145");
		user.setRole("ROLE_USER");
		user.setEmail_id("gee@gmail.com");
		
		
		boolean flag = userDAO.save(user);
		Assert.assertEquals("User is saved", true, flag);
	}
	*/
}
