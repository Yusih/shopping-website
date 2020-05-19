package com.neuedu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.mapper.ProductMapper;
import com.neuedu.pojo.Product;
import com.neuedu.service.ProductService;

@Service(value="productService")
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductMapper productMapper;
	
	@Override
	public int addProduct(Product product) {
		// TODO Auto-generated method stub
		return productMapper.addProduct(product);
	}

	@Override
	public Product findOne(String proName) {
		// TODO Auto-generated method stub
		return productMapper.findOne(proName);
	}

	@Override
	public List<Product> findAll() {
		// TODO Auto-generated method stub
		return productMapper.findAll();
	}

	@Override
	public boolean updateProduct(Product product) {
		int result=productMapper.updateProduct(product);
		if(result!=0){
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteProduct(String proName) {
		int result=productMapper.deleteProduct(proName);
		if(result!=0){
			return true;
		}
		return false;
	}
}
