package com.vcube.inventory.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vcube.inventory.model.Product;
import com.vcube.inventory.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@GetMapping("/dashboard")
	public String welcome()
	{
		return "dashboard";
	}
	
	//@GetMapping("/addProduct")
	@RequestMapping(value="/addProduct" , method=RequestMethod.GET)
	public String showProductForm()
	{
		return "add-product";
	}
	
	
	@PostMapping("/product/save")
	public String saveProduct(@ModelAttribute Product product,Model model)
	{
		
		int result=productService.saveProduct(product);
		
		if(result>0)
		{
			model.addAttribute("msg","Product added Succesfully!");
		}
		else
			model.addAttribute("msg","Product not added !!!");
		
		return "add-product";
	}
	
	//@GetMapping("/getAllProducts") or
	@RequestMapping(value="/getAllProducts" , method=RequestMethod.GET)
	public String getAllProducts(Model model)
	{
		List<Product> products=productService.getAllProducts();
		
		//We are sending the list from Controller to JSP.
		model.addAttribute("products",products);
		
		return "view-products";
		
	}

}
