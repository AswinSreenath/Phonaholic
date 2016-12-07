package com.niit.phonaholic.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.phonaholicbackend.dao.ProductDAO;

import com.niit.phonaholicbackend.model.Product;



@Controller
public class HelloController {
	
	
	
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/")
	public ModelAndView Home()
	{
		
		ModelAndView model=new ModelAndView("index");
		return model;
		
	}
	
	@RequestMapping("/login")
	public ModelAndView Login()
	{
		
		ModelAndView model=new ModelAndView("login");
		return model;
		
	}
	
	@RequestMapping("/register")
	public ModelAndView Register()
	{
		
		ModelAndView model=new ModelAndView("register");
		return model;
		
	}
	
	@RequestMapping("/about")
	public ModelAndView About()
	{
		
		ModelAndView model=new ModelAndView("aboutus");
		return model;
		
	}
	
	@RequestMapping(value="/admin",method=RequestMethod.GET)
	public String Admin(Model model)
	{
		model.addAttribute("product",new Product());
		model.addAttribute("listproducts",productDAO.listProducts());
		return "admin";
		
	}
	
	@RequestMapping(value="/admin/add",method=RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute("product")Product product,BindingResult result,HttpServletRequest request)
	{
		
		byte[] bytes;
		
		if(!product.getImage().isEmpty())
		{
			try{
				bytes=product.getImage().getBytes();
				productDAO.addProduct(product);
				
				String path=request.getSession().getServletContext().getRealPath("/WEB-INF/images/"+product.getId()+".jpg");
				File f=new File(path);
				System.out.println(path);
				BufferedOutputStream bs=new BufferedOutputStream(new FileOutputStream(f));
				bs.write(bytes);
				bs.close();
				
			}catch(Exception ex){
				System.out.println(ex);
			}
		}
		if(result.hasErrors())
		{
			return "admin";
			
		}else{
			if(product.getId()==0)
			{
				productDAO.addProduct(product);
			}else{
				productDAO.updateProduct(product);
			}
			return "redirect:/admin";
		}
	}
	
	
	@RequestMapping("/product")
	public ModelAndView Products()
	{
		List<Product> products=productDAO.listProducts();
		String productList=new Gson().toJson(products);
		ModelAndView model=new ModelAndView("product");
		model.addObject("productList",productList);
		return model;
		
	}
	
	@RequestMapping("/edit/{id}")
	public String editProduct(@PathVariable("id") int id,Model model)
	{
		model.addAttribute("product",productDAO.getProductById(id));
		model.addAttribute("listproducts",productDAO.listProducts());
		return "admin";
	}
	
	
	//handler method
	/*protected ModelAndView handleRequestInternal(HttpServletRequest request,HttpServletResponse response) throws Exception {
		//logical name of the view
		ModelAndView modelandview=new ModelAndView("index");
		modelandview.addObject("welcomemessage","Hello User!!!!");
		return modelandview;
	}*/
	
	

}
