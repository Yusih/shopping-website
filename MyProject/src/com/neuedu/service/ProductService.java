package com.neuedu.service;

import java.util.List;

import com.neuedu.pojo.Product;

public interface ProductService {
	public int addProduct(Product product);
	
	public Product findOne(String proName);
	
	public List<Product> findAll();
	
	public boolean updateProduct(Product product);
	
	public boolean deleteProduct(String proName);
}
