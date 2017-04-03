package com.niit.shoppingcart.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.jewellarycartbackend.dao.CategoryDAO;
import com.niit.jewellarycartbackend.dao.ProductDAO;
import com.niit.jewellarycartbackend.dao.SupplierDAO;
import com.niit.jewellarycartbackend.domain.Category;
import com.niit.jewellarycartbackend.domain.Product;
import com.niit.jewellarycartbackend.domain.Supplier;
import com.niit.shoppingcart.util.UtilExmp;



@Controller
public class ProductController {

	@Autowired
	private Product product;
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	private Path path; 
	
	@RequestMapping("/product")
	public ModelAndView showproductpage (Model m)
	{
		m.addAttribute("product", new Product());
		m.addAttribute("category",new Category());
		m.addAttribute("categoryList",categoryDAO.list());
		m.addAttribute("supplier", new Supplier()); //	showing the supplier
		m.addAttribute("supplierList",supplierDAO.list()); // for showing the list
		m.addAttribute("productList", productDAO.list());
		ModelAndView mv = new ModelAndView("Product");
		return mv;
		
	}
	
	@RequestMapping(value="manage_product_create",method=RequestMethod.POST)
	public ModelAndView addProduct(@ModelAttribute("product")Product product, Model m, HttpServletRequest request) // calling the request param for the functions
	{
		Category category=categoryDAO.getCategoryByName(product.getCategory().getName());
		
		Supplier supplier=supplierDAO.getSupplierByName(product.getSupplier().getName());
		
		product.setCategory(category);
		product.setSupplier(supplier);
		
		product.setCategory_id(category.getId());
		product.setCategory_name(category.getName());
		product.setSupplier_name(supplier.getName());
		
		product.setSupplier_id(supplier.getId());
		
		
		
		
		ModelAndView mv = new ModelAndView("Admin_home");
		//To remove comma for ID column
		UtilExmp u = new UtilExmp();
		String id1 = u.removeComma(product.getId());
		product.setId(id1);
		
		if (productDAO.save(product))
		{
			mv.addObject("message", "Successfully created the product");
		}
		else
		{
			mv.addObject("message", "Not able to create product");
		}
		
		MultipartFile file = product.getImage(); //image whih we upload from jsp pagewill be uploaded to multipart file through product object
		String rootDirectory= request.getSession().getServletContext().getRealPath("/");
		// bind the path 
		path= Paths.get(rootDirectory+"\\WEB-INF\\resources\\Images\\"+product.getId()+".jpg"); //crate this path at the beginning
		System.out.println("Image Uploading process.....");
		if (file!=null && !file.isEmpty())
			try {
				file.transferTo(new File(path.toString()));
				System.out.println("image uploaded..!");
			
			} catch (Exception e) {
				System.out.println("image uploading failed");
				e.printStackTrace();
			}
				
		m.addAttribute("productList",productDAO.list());
		return mv;
	
	
	}
	 //	for deleting the product
		@RequestMapping(value="manage_product_delete-{id}")
		public String deleteproduct(@PathVariable("id")String id)
		{
			productDAO.delete(id);
				return "redirect:/product";		

		
		}
		
		@RequestMapping("manage_product_edit-{id}")
		public String editCategory(@PathVariable("id") String id,Model m) // calling the request param for the functions
		{
			m.addAttribute("product",productDAO.getProductByID(id));
			m.addAttribute("categoryList",categoryDAO.list());
			m.addAttribute("supplierList",supplierDAO.list()); // for showing the list
			m.addAttribute("productList", productDAO.list());
			return "Product";
		}

		@RequestMapping("product_get-{id}")
		public String selectedProduct(@PathVariable("id") String id,Model model)
		{
			model.addAttribute("selectedProduct",productDAO.getProductByID(id));
			model.addAttribute("categoryList",categoryDAO.list());
			return "item";
		}
		
		
}