package com.codefxxx.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.codefxxx.demo.model.Product;
import com.codefxxx.demo.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService service;
	
	@PostMapping("product")
	public String addProduct(@ModelAttribute("product") Product product) {
		
		service.addProduct(product);
		
		return "redirect:index";
	}
	
	@GetMapping("products")
	public String listAll(HttpServletRequest req) {
		List<Product> product_list = service.listAll();
		req.setAttribute("products", product_list);
		return "ListAll";
	}
	
	@RequestMapping(value="/product/{p_id}")
	public ModelAndView getProductById(@PathVariable int p_id) {
		ModelAndView mv = new ModelAndView("product");
		Product product = service.getProductById(p_id);
		mv.addObject("product",product);
		
		return mv;
	}
	
}
