package com.neuedu.mapper;

import java.util.List;
import com.neuedu.pojo.Product;
import com.sun.jndi.url.iiopname.iiopnameURLContextFactory;

public interface ProductMapper {
	
	public int addProduct(Product product);
	
	public Product findOne(String proName);
	
	public List<Product> findAll();
	
	public int updateProduct(Product product);
	
	public int deleteProduct(String proName);
}
