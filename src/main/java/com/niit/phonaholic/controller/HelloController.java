package com.niit.phonaholic.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;
@Controller
public class HelloController {
	
	
	@RequestMapping("/welcome")
	public String Home(){
		return "index";
	}
	@RequestMapping("/login")
	public String Login(){
		return "login";
	}
	@RequestMapping("/register")
	public String Register(){
		return "register";
	}
	
	@RequestMapping("/about")
	public String About(){
		return "aboutus";
	}
	
	
	//handler method
	/*protected ModelAndView handleRequestInternal(HttpServletRequest request,HttpServletResponse response) throws Exception {
		//logical name of the view
		ModelAndView modelandview=new ModelAndView("index");
		modelandview.addObject("welcomemessage","Hello User!!!!");
		return modelandview;
	}*/
	
	

}
