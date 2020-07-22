package com.codefxxx.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codefxxx.demo.dao.ProductRepo;
import com.codefxxx.demo.model.Product;

@Service
public class ProductService {

	@Autowired
	ProductRepo repo;
	
	public void addProduct(Product product) {
		repo.save(product);
	}
	
	public List<Product> listAll() {
		return repo.findAll();
	}
	
	public Product getProductById(int p_id) {
		return repo.findById(p_id).get();
	}
	
}
