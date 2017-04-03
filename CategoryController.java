package com.niit.shoppingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

import com.niit.jewellarycartbackend.dao.CategoryDAO;
import com.niit.jewellarycartbackend.domain.Category;
import com.niit.shoppingcart.util.UtilExmp;


@Controller
public class CategoryController {
	/*In the Category.jsp will be adding the function written in category.dao 
	-save,update,delete(String id(deleting category by id)),delete(My_Cart my_cart(deleting category by cart));
*/
	@Autowired
	private Category category;
	
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	// this is used to map the category page
	@RequestMapping("/category")	// this is to open the category page
	public ModelAndView showCategoryPage(Model m)  
	{
		m.addAttribute("category",new Category()); 
		m.addAttribute("categoryList",categoryDAO.list());
		ModelAndView mv=new ModelAndView("Category");	// create the object for model and view 
	
		//mv.addObject("isuserclickedRegister",true);	// will hav to add the ojects 
		return mv;								// return the mv value
	}
	
	// this is used after desigining the category.jsp page  
	//@PostMapping("manage_category_create/") // instead of this line as in home controller(@RequestMapping(value="Register-add",method=RequestMethod.POST) will write @postmapping directly
	@RequestMapping(value="manage_category_create",method=RequestMethod.POST)
	public ModelAndView createCategory(@ModelAttribute("category") Category category,Model m) // calling the request param for the functions
	{
		
		
		
		ModelAndView mv = new ModelAndView("Admin_home");
		//To remove comma for ID column
		UtilExmp u = new UtilExmp();
		String id1 = u.removeComma(category.getId());
		category.setId(id1);
		
		if (categoryDAO.save(category))
		{
			mv.addObject("message", "Successfully created the category");
		}
		else
		{
			mv.addObject("message", "Not able to create Category.  Pl contact Administrator");
		}
		m.addAttribute("categoryList",categoryDAO.list());
		return mv;
		
	}
 // for deleting
	@RequestMapping(value="manage_category_delete-{id}")
	public String deleteCategory(@PathVariable("id")String id)
	{
		categoryDAO.delete(id);
			return "redirect:/category";		

	
	}

	@RequestMapping("manage_category_edit-{id}")
	public String editCategory(@PathVariable("id") String id,Model m) // calling the request param for the functions
	{
		
		m.addAttribute("category",categoryDAO.getCategoryByID(id));
		m.addAttribute("categoryList",categoryDAO.list());
		
		return "Category";
	}

	
	


	
}	
	

	
	 

	
	 

	
	
