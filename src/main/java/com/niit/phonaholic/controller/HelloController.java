package com.niit.phonaholic.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.phonaholicbackend.dao.CartDAO;
import com.niit.phonaholicbackend.dao.ItemDAO;
import com.niit.phonaholicbackend.dao.ProductDAO;
import com.niit.phonaholicbackend.dao.ShippingAddressDAO;
import com.niit.phonaholicbackend.dao.UserDAO;
import com.niit.phonaholicbackend.dao.UserOrderDAO;
import com.niit.phonaholicbackend.model.Cart;
import com.niit.phonaholicbackend.model.Item;
import com.niit.phonaholicbackend.model.Product;
import com.niit.phonaholicbackend.model.ShippingAddress;
import com.niit.phonaholicbackend.model.User;
import com.niit.phonaholicbackend.model.UserOrder;

@Controller
public class HelloController {

	@Autowired
	ProductDAO productDAO;

	@Autowired
	UserDAO userDAO;
	@Autowired
	ItemDAO itemDAO;
	@Autowired
	ShippingAddressDAO shippingAddressDAO;
	@Autowired
	HttpSession httpSession;
	@Autowired
	CartDAO cartDAO;
	@Autowired
	UserOrderDAO userOrderDAO;

	@RequestMapping("/")
	public ModelAndView Home() {

		ModelAndView model = new ModelAndView("index");
		return model;

	}

	@RequestMapping("/contact")
	public ModelAndView Contact() {

		ModelAndView model = new ModelAndView("contactus");
		return model;

	}

	@RequestMapping("/login")
	public String Login(Model model) {

		model.addAttribute("user", new User());
		return "login";

	}

	@RequestMapping("/register")
	public String Register(Model model) {

		model.addAttribute("user", new User());
		return "register";

	}

	@RequestMapping("/about")
	public ModelAndView About() {

		ModelAndView model = new ModelAndView("aboutus");
		return model;

	}

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String Admin(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("listproducts", productDAO.listProducts());
		return "admin";

	}

	@RequestMapping("/productdetails/{pid}")
	public String ProductDetails(@PathVariable("pid") int pid, Model model) {

		Product products = productDAO.getProductById(pid);
		model.addAttribute("product", products);
		return "productdetails";

	}

	@RequestMapping(value = "/logout")
	public ModelAndView logout() {
		ModelAndView model = new ModelAndView("index");
		return model;
	}

	@RequestMapping(value = "/register/add", method = RequestMethod.POST)
	public String addUser(Model model, @ModelAttribute("user") User user) {

		userDAO.addUser(user);
		model.addAttribute(user);
		return "redirect:/login";
	}

	public String addShippingAddress(ShippingAddress shippingAddress) {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		shippingAddress.setUser(user);
		shippingAddressDAO.addshippingaddress(shippingAddress);
		user.setShippingAddress(shippingAddress);
		return "done";
	}
	
	

	// @RequestMapping(value = "/cart/{pid}")
	// public String addpCart(@PathVariable("pid") int pid, Principal principal)
	// {
	//
	// System.out.println(principal.getName());
	// User user = userDAO.getUserByUsername(principal.getName());
	// Cart cart = user.getCart();
	// Product product = productDAO.getProductById(pid);
	// System.out.println(cart.getCartid());
	// System.out.println(product.getPid());
	//
	// List<Item> itemlist = itemDAO.gettheItems(cart.getCartid());
	// System.out.println(itemlist.isEmpty());
	// System.out.println(itemlist.size());
	// for (int i = 0; i < itemlist.size(); i++) {
	// if (itemlist.get(i).getProduct().getPid() == product.getPid()) {
	// Item item = itemlist.get(i);
	// item.setQuantity(item.getQuantity() + 1);
	// item.setItemtotal(item.getQuantity() * item.getProduct().getPrice());
	// itemDAO.updateItem(item);
	// return "redirect:/productdetails/" + product.getPid();
	// }
	//
	// }
	//
	// Item item = new Item();
	// item.setProduct(product);
	// item.setQuantity(1);
	// item.setCart(cart);
	// item.setItemtotal(item.getProduct().getPrice() * item.getQuantity());
	// itemDAO.addItem(item);
	// return "redirect:/productdetails/" + product.getPid();
	//
	// }

	@RequestMapping(value = "/admin/add", method = RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute("product") Product product, BindingResult result,
			HttpServletRequest request) {

		byte[] bytes;

		if (!product.getImage().isEmpty()) {
			try {
				bytes = product.getImage().getBytes();
				productDAO.addProduct(product);

				String path = request.getSession().getServletContext()
						.getRealPath("/WEB-INF/images/" + product.getPid() + ".jpg");
				File f = new File(path);
				System.out.println(path);
				BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(f));
				bs.write(bytes);
				bs.close();

			} catch (Exception ex) {
				System.out.println(ex);
			}
		}
		if (result.hasErrors()) {
			return "admin";

		} else {
			if (product.getPid() == 0) {
				productDAO.addProduct(product);
			} else {
				productDAO.updateProduct(product);
			}
			return "redirect:/admin";
		}
	}

	@RequestMapping("/product/{category}")
	public String Products(@PathVariable("category") String category, Model model) {
		List<Product> products = productDAO.listProductsByCategory(category);
		String productList = new Gson().toJson(products);
		model.addAttribute("productList", productList);
		return "product";

	}

	@RequestMapping("/cart")
	public String Products(Model model, Principal principal) {
		User user = userDAO.getUserByUsername(principal.getName());
		Cart cart = user.getCart();

		List<Item> itemlist = itemDAO.gettheItems(cart.getCartid());
		double total = 0;
		List<Product> productList = new ArrayList<>();
		for (Item items : itemlist) {
			productList.add(items.getProduct());
			total = total + items.getItemtotal();

		}

		model.addAttribute("itemlist", itemlist);
		model.addAttribute("productList", productList);
		model.addAttribute("totalprice", total);
		return "cartpage";

	}

	@RequestMapping("/cart/remove/{itemid}")
	public String removeItem(@PathVariable("itemid") int itemid, Model model) {

		itemDAO.removeItem(itemDAO.getItemById(itemid));
		return "redirect:/cart";
	}

	@RequestMapping("cart/{pid}")
	public String cartInsertion(@PathVariable("pid") int pid, Principal principal) {
		User user = userDAO.getUserByUsername(principal.getName());
		Cart cart = user.getCart();
		List<Item> itemlist = itemDAO.gettheItems(cart.getCartid());

		for (Item item : itemlist) {
			if (item.getProduct().getPid() == pid) {
				item.setQuantity(item.getQuantity() + 1);
				item.setItemtotal(item.getItemtotal() + item.getProduct().getPrice());
				itemDAO.updateItem(item);
				return "redirect:/productdetails/{pid}";
			}
		}
		Item item = new Item();
		item.setItemtotal(productDAO.getProductById(pid).getPrice());
		item.setQuantity(1);
		item.setCart(cart);
		item.setProduct(productDAO.getProductById(pid));
		itemDAO.addItem(item);
		return "redirect:/productdetails/{pid}";

	}

	@RequestMapping("/admin/edit/{pid}")
	public String editProduct(@PathVariable("pid") int pid, Model model) {
		model.addAttribute("product", productDAO.getProductById(pid));
		model.addAttribute("listproducts", productDAO.listProducts());
		return "admin";
	}

	// handler method
	/*
	 * protected ModelAndView handleRequestInternal(HttpServletRequest
	 * request,HttpServletResponse response) throws Exception { //logical name
	 * of the view ModelAndView modelandview=new ModelAndView("index");
	 * modelandview.addObject("welcomemessage","Hello User!!!!"); return
	 * modelandview; }
	 */@RequestMapping("/admin/remove/{pid}")
	public String removeProduct(@PathVariable("pid") int pid, Model model) {
		productDAO.removeProduct(pid);
		return "redirect:/admin";
	}

}
