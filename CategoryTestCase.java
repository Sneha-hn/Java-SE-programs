/*package com.niit.jewellarycartbackendtest;


import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


import com.niit.jewellarycartbackend.dao.CategoryDAO;
import com.niit.jewellarycartbackend.domain.Category;





public class CategoryTestCase {

	@Autowired
	private static Category category;
	
	@Autowired
	private static CategoryDAO categoryDAO;
	
		
	public static void main(String args[])
	{

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext ();
		context.scan("com.niit");
		context.refresh();
	
	
	category = (Category) context.getBean("category");
	
	categoryDAO = (CategoryDAO)context.getBean("categoryDAO");
	
	category.setId(001);
	category.setName("MOBILE");
	category.setDescription("NEW CAT");
	
	categoryDAO.save(category);

	}
	
	
	@BeforeClass
	public static void init() {
		
		
			AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext ();
			context.scan("com.niit");
			context.refresh();
		
		
		category = (Category) context.getBean("category");
		
		categoryDAO = (CategoryDAO)context.getBean("categoryDAO");
		
	}
	
		//test cases
	
		//  here we are creating the test case
		@Test
		public void createCategoryTestCase(){
	
			category.setId("SN1603006");
			category.setName("OFFERS");
			category.setDescription("This is for offers");
			
		boolean flag = categoryDAO.save(category);
			
			Assert.assertEquals("category is saved", true, flag);
			
		} 
		
		// here will be updating
	 @Test
	public void updateCategoryTestCase()
	   {
		   
		   category.setId(001);
		   category.setName("new Category");
		   category.setDescription("This is Women category");
		   
		   boolean flag = categoryDAO.update(category);
		   
		   Assert.assertEquals( "updateCategoryTestCase" ,true, flag);
	   }
	
	@Test
	   public void deleteCategory()
	   {
		   category.setId(0013);
		   
		   boolean flag = categoryDAO.delete(category);
		   
		   Assert.assertEquals( "deleteCategoryTestCase" ,true, flag);
		   
		   
		   
	   }
	
	@Test
	   public void getCategoryByIDTestCase()
	   {
		   
		  category = categoryDAO.getCategoryByID("CG01032017ABCD");
		  
		  
		 // Assert.assertNotNull("getCategoryByIDTestCase", category);
		  
		  
		  Assert.assertEquals("getCategoryByIDTestCase", null, category);
		   
	   }
	   
	   
	   @Test
	   public void getCategoryByNameTestCase()
	   {
		   
		  category = categoryDAO.getCategoryByName("Mobile Category");
		  
		  
		 // Assert.assertNotNull("getCategoryByIDTestCase", category);
		  
		  
		  Assert.assertEquals("getCategoryByNameTestCase", null, category);
		   
	   }
	   
	   
	   @Test
	   public void getAllCategoriesTestCase()
	   
	   {
		   
		  int recordsFromDAO =  categoryDAO.list().size();
		  
		  Assert.assertEquals("getAllCategoriesTestCase" ,7 , recordsFromDAO);
		   
	   }

}
*/