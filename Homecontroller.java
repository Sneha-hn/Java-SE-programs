package com.niit.shoppingcart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Homecontroller {

	// http://localhost:8080/shoppingCart
	// write model and view here 

	@RequestMapping ("/")		// this login is for url
	public String showHomePage(Model m)
	{
		
		return "Home";		// this is the .jsp file
	}
	
		@RequestMapping ("/home")		// this login is for url
public String HomePage()
{
	return "Home";		// this is the .jsp file
}

@RequestMapping("/Register")	// this is to open the reg page
	public ModelAndView showRegisterPage() // instead of string model and view is used 
	{
	ModelAndView mv=new ModelAndView("Home");	// create the object for model and view 
	mv.addObject("isuserclickedRegister",true);	// will hav to add the ojects 
		return mv;								// return the mv value
	}
@RequestMapping ("/Login")
public String showLoginPage(Model m)
{
	m.addAttribute("isuserclickedLogin",true);
	return "Home";		
}
@RequestMapping("/validate") 
public ModelAndView validateuser(@RequestParam("Name") String Name,@RequestParam("Username") String Username,@RequestParam("Password") String Password)
{
	ModelAndView mv=new ModelAndView("Home");
	if(Name.equals("NIIT")&&Username.equals("a@niit.com")&&Password.equals("123"))
	mv.addObject("message","Valid user");
	else
		mv.addObject("message","Invalid User");
	return mv;
}

@RequestMapping("/Logout") // step2: here it will read the msg with the help of request mapping it will return to home page n then youll have to create the validation which is done above in login.jsp n the msg is displayed in home.jsp 
public String showLogoutPage()
{
	return "Home";
}
}
 
// reqmapping for validate the credentials