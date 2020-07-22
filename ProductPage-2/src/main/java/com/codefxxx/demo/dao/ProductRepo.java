package com.codefxxx.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.codefxxx.demo.model.Product;

public interface ProductRepo extends JpaRepository<Product, Integer> {


}
