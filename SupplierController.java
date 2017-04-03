package com.niit.shoppingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.jewellarycartbackend.dao.SupplierDAO;
import com.niit.jewellarycartbackend.domain.Category;
import com.niit.jewellarycartbackend.domain.Supplier;
import com.niit.jewellarycartbackend.domain.User;
import com.niit.shoppingcart.util.UtilExmp;

@Controller
public class SupplierController {
	
	@Autowired
	private Supplier supplier;
	
	@Autowired
	private SupplierDAO supplierDAO;

	// CURD operations
	
	// for creating
	@RequestMapping("/supplier")
	public ModelAndView showSupplierPage(Model m) 
	{
	
		

		m.addAttribute("supplier", new Supplier()); //	showing the supplier
		m.addAttribute("supplierList",supplierDAO.list()); // for showing the list
		ModelAndView mv= new ModelAndView("Supplier");
		return mv ;
		
	}
	
	
	@RequestMapping(value="manage_supplier_create",method=RequestMethod.POST)
	public ModelAndView createSupplier(@ModelAttribute("supplier")Supplier supplier, Model m) // calling the request param for the functions
	{
		
		
		
		ModelAndView mv = new ModelAndView("Admin_home");
		//To remove comma for ID column
		UtilExmp u = new UtilExmp();
		String id1 = u.removeComma(supplier.getId());
		supplier.setId(id1);
		
		if (supplierDAO.save(supplier))
		{
			mv.addObject("message", "Successfully created the supplier");
		}
		else
		{
			mv.addObject("message", "Not able to create supplier");
		}
		m.addAttribute("supplierList",supplierDAO.list());
		return mv;
		
	}
 //	for deleting the supplier
	@RequestMapping(value="manage_supplier_delete-{id}")
	public String deleteSupplier(@PathVariable("id")String id)
	{
		supplierDAO.delete(id);
			return "redirect:/supplier";		

	
	}
// for editing
	@RequestMapping("manage_supplier_edit-{id}")
	public String editSupplier(@PathVariable("id") String id,Model m)
	{
		
		m.addAttribute("supplier",supplierDAO.getSupplierByID(id));
		m.addAttribute("supplierList",supplierDAO.list());
		
		return "Supplier";
	}
	
	
	


}
