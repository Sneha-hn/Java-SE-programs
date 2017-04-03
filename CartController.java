package com.niit.shoppingcart.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.jewellarycartbackend.dao.CartDAO;
import com.niit.jewellarycartbackend.dao.CategoryDAO;
import com.niit.jewellarycartbackend.dao.ProductDAO;
import com.niit.jewellarycartbackend.dao.UserDAO;
import com.niit.jewellarycartbackend.domain.Cart;
import com.niit.jewellarycartbackend.domain.Category;
import com.niit.jewellarycartbackend.domain.Product;
import com.niit.jewellarycartbackend.domain.User;

@Controller
public class CartController {
	@Autowired(required=true)
	 Cart cart;
	 
	 @Autowired(required=true)
	 CartDAO cartDAO;
	 
	 @Autowired(required=true)
	 CategoryDAO categoryDAO;
	 
	 @Autowired(required=true)
	 ProductDAO productDAO;
	 
	 @Autowired(required=true)
	 Product product;
	 
	 @Autowired(required=true)
	 UserDAO userDAO;
		
	 	@Autowired(required=true)
	   private User user;
	   
	   
		@RequestMapping(value = "/myCart", method = RequestMethod.GET)
		public String myCart(Model model,Principal principal)
		{
			try
			{
			model.addAttribute("cart",new Cart());
			model.addAttribute("cartList",this.cartDAO.userCartList(principal.getName()));
			model.addAttribute("category",new Category());
			model.addAttribute("categoryList",this.categoryDAO.list());
			model.addAttribute("displayCart","true");
			
			
			int i,j=0;
			int s=0;
			int n=cartDAO.userCartList(principal.getName()).size();
			System.out.println(n);
			for(i=0;i<n;i++)
			{
				s=s+cartDAO.userCartList(principal.getName()).get(i).getPrice();
			}
			System.out.print(s);
			model.addAttribute("sum",s);
			
			}
			catch(Exception ex)
			{
				System.out.println("ex.getMessage");
			}
			return "cart";
		}
		
		@RequestMapping(value = "cart/add/{p_id}", method = RequestMethod.GET)
		public String addToCart(@PathVariable("p_id") String id, HttpServletRequest request ,Principal principal)
		{
			try
			{
			
			Product product=productDAO.getProductByID(id);
			//User user = userDAO.getUser(id);
			Cart cart=new Cart();   		
			cart.setPrice(product.getPrice());
			cart.setP_id(product.getId());
			cart.setP_name(product.getName());
			cart.setQuantity(1);
			cart.setU_id(principal.getName());
			cart.setStatus("N");
			
			cartDAO.addCart(cart);
			}
			catch(Exception e)
			{
				System.out.println(e.getMessage());
			}
			return "redirect:/";
			
			
			
		}
		@RequestMapping(value = "/checkout", method = RequestMethod.GET)
		public String checkout(Model model,Principal principal)
		{
			int i,j=0;
			int s=0;
			int n=cartDAO.userCartList(principal.getName()).size();
			System.out.println(n);
			for(i=0;i<n;i++)
			{
				s=s+cartDAO.userCartList(principal.getName()).get(i).getPrice();
			}
			System.out.print(s);
			model.addAttribute("sum",s);
			model.addAttribute("cart",new Cart());
			model.addAttribute("cartList",this.cartDAO.userCartList(principal.getName()));
			
			return "/checkout";
		    
		}
		@RequestMapping("/cart/delete/{id}")
		public String deleteCart(@PathVariable("id") int id,Model model)
		{
			cartDAO.deleteCart(id);
			return "redirect:/myCart";
		}
		
		
		
		@RequestMapping("/payment")
		public String getPayment()
		{
			return "payment";
		}
		
		@RequestMapping("/thanks")
		public String getThanks()
		{
			return "thanks";
		}
		
}
