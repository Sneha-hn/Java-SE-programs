package com.niit.shoppingcart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Usercontroller 
{
	@RequestMapping(value="/login")
	public String login(@RequestParam(value="error",required=false)String error,@RequestParam(value="logout",required=false)String logout,Model m)
		{
		if(error!=null){
			System.out.println("Error!");
			m.addAttribute("loginerror", "INVALID USERNAME AND PASSWORD");
		}
		if(logout!=null){
			System.out.println("logout called");
			m.addAttribute("loginmsg", "YOU HAVE SUCCESSFULLY LOGGED OUT");
		}
		return "Login";
		
	}
}
