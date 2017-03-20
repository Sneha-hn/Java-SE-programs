package com.niit.shoppingcart.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.jewellarycartbackend.dao.UserDAO;
import com.niit.jewellarycartbackend.domain.User;

@Controller
public class Homecontroller {

	// http://localhost:8080/shoppingCart
	// write model and view here 
	
	@Autowired		
	UserDAO userDAO;	// we are injecting userdao n model so the the file gets injected automatically
	
	@Autowired
	User user;
	
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
 // after integrating the pom.xml the request mapping change as below
@RequestMapping("/Register")	// this is to open the reg page
	public ModelAndView showRegisterPage(Model m) // instead of string model and view is used 
	{
	
	m.addAttribute("user",new User()); 
	ModelAndView mv=new ModelAndView("Register");	// create the object for model and view 
	//mv.addObject("isuserclickedRegister",true);	// will hav to add the ojects 
		return mv;								// return the mv value
	}
 // once @requestmapping is done the will go to the reg.jsp then to get the details from reg.jsp anotherv resquest mapping is done 
@RequestMapping(value="Register-add",method=RequestMethod.POST) // this is another mapping to get the details from the register.jsp page 
// value is the name given in the action at reg.jsp method is request method.post since the details are passed on ut its not shown in the home page

public String GetRegDetails(Model m, @Valid @ModelAttribute("user") User user) // string is used thus the return value is in "" 
 // "user" inside the flower braces is the command name n then User user is the user dao
{
	user.setRole("ROLE_USER"); // the role is set here
	userDAO.save(user); 
//	ModelAndView mv = new ModelAndView("/");
	m.addAttribute("success", "Registration Success....");
	return "redirect:/";								
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