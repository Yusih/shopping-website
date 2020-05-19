package com.neuedu.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.neuedu.pojo.Product;
import com.neuedu.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;
	
	@RequestMapping(value="/addProduct.action")
	public String addProduct(Product product,Model model,HttpServletResponse response) throws IOException {
		int result=productService.addProduct(product); 
		if(result==1){
			return "brand-productInput-attr"; 
		} 
		return "error";
	}
	
	@RequestMapping(value="/searchProduct.action")
	public String findOne(String proName,Model model) {
		Product product=productService.findOne(proName);
		model.addAttribute("product", product);
		return "bvo-goodsdetail";
	}
	
	@RequestMapping(value="/searchOneProduct.action")
	public String findOne1(String proName,Model model) {
		Product product=productService.findOne(proName);
		model.addAttribute("product", product);
		return "brand-productInput-pic3";
	}
	
	@RequestMapping(value="/searchAllProduct.action")
	public String findAll(Model model) {
		List<Product> result=productService.findAll();
		model.addAttribute("product", result);
		return "bvo-index";
	}
	
	@RequestMapping(value="/searchProductList.action")
	public String findAll3(Model model) {
		List<Product> result=productService.findAll();
		model.addAttribute("product", result);
		return "brand-productInput-pic";
	}
	
	@RequestMapping(value="/findAllProduct.action")
	public String findAll2(Model model) {
		List<Product> result=productService.findAll();
		model.addAttribute("product", result);
		return "bvo-wishlist";
	}
	
	@RequestMapping(value="/insertProduct.action")
	public String insertProduct(String sku,String brandName,String proName,String price,int stock,String proState,String proType
			,float volume,String upc,String ena,String time,String ebayDes,String AmazonDes
			,MultipartFile proPic,Model model,HttpServletRequest request) throws IllegalStateException, IOException {
		//��ȡԭ����ͼƬ����
		String fileName=proPic.getOriginalFilename();
		//д�����
		//��1�����彫�ϴ���ͼƬ�浽�ı���·��
		String newpath="C:\\Users\\hp\\Pictures\\Saved Pictures\\";
		//(2)ƴ��һ���µĵ�ַ
		File file=new File(newpath+fileName);
		//(3)
		proPic.transferTo(file);
				
		//http://localhost:8080/upload/xxx.jpg
		String basePath=request.getScheme()+"://"
						+request.getServerName()+":"
						+request.getServerPort()+"/upload/";
		String finalPath=basePath+fileName;//д�����ݿ��·��
		
		Product product=new Product();
		product.setProName(proName);
		product.setProType(proType);
		product.setProPic(finalPath);
		product.setAmazonDes(AmazonDes);
		product.setBrandName(brandName);
		product.setEbayDes(ebayDes);
		product.setEna(ena);
		product.setPrice(price);
		product.setProState(proState);
		product.setSku(sku);
		product.setStock(stock);
		product.setTime(time);
		product.setUpc(upc);
		product.setVolume(volume);
		
		int result=productService.addProduct(product);
		if(result!=0){
			return "index";
		}
		return "error";
	}
	
	@RequestMapping(value="/updateProduct.action")
	public String updateProduct(String sku,String brandName,String proName,String price,int stock,String proState,String proType
			,float volume,String upc,String ena,String time,String ebayDes,String AmazonDes
			,MultipartFile proPic,Model model,HttpServletRequest request) throws IllegalStateException, IOException {
		//��ȡԭ����ͼƬ����
		String fileName=proPic.getOriginalFilename();
		//д�����
		//��1�����彫�ϴ���ͼƬ�浽�ı���·��
		String newpath="F:\\temp4\\Saved Pictures\\";
		//(2)ƴ��һ���µĵ�ַ
		File file=new File(newpath+fileName);
		//(3)
		proPic.transferTo(file);
				
		//http://localhost:8080/upload/xxx.jpg
		String basePath=request.getScheme()+"://"
						+request.getServerName()+":"
						+request.getServerPort()+"/upload/";
		String finalPath=basePath+fileName;//д�����ݿ��·��
		
		Product product=new Product();
		product.setProName(proName);
		product.setProType(proType);
		product.setProPic(finalPath);
		product.setAmazonDes(AmazonDes);
		product.setBrandName(brandName);
		product.setEbayDes(ebayDes);
		product.setEna(ena);
		product.setPrice(price);
		product.setProState(proState);
		product.setSku(sku);
		product.setStock(stock);
		product.setTime(time);
		product.setUpc(upc);
		product.setVolume(volume);
		
		boolean result=productService.updateProduct(product);
		if(result){
			return "index";
		}
		return "error";
	}

	@RequestMapping(value="/deleteProduct.action")
	public String deleteProduct(String proName,Model model,HttpServletResponse response) throws IOException {
		boolean result=productService.deleteProduct(proName); 
		if(result){
			return "index"; 
		} 
		return "error";
	}
}
