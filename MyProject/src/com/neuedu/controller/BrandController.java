package com.neuedu.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.neuedu.pojo.Brand;
import com.neuedu.pojo.BrandInformation;
import com.neuedu.pojo.Seller;
import com.neuedu.pojo.UserLogin;
import com.neuedu.service.BrandService;

@Controller
public class BrandController {
	@Autowired
	BrandService brandService;
	
	@RequestMapping(value="/insert.action")
	//,HttpSession session
	public String addCom(Brand brand,Model model,HttpSession session){
		
		boolean result=brandService.addCom(brand);
		
		String des = brand.getBriefIntro();
		System.out.println(des);
        if(result){
        	//���ɹ��޸ĵĹ�˾��Ϣ���浽session����
        	session.setAttribute("brandId", brand.getBrandId());  
        	return "brand-brandInput";
        }
		return "error";		
	}
	@RequestMapping(value="/addBrand.action")
	public String addBrand(int brandInforID,String brandName,MultipartFile brandLogo,Model model,
			   HttpServletRequest request) throws IllegalStateException, IOException{
		//��ȡԭ����ͼƬ����
		String fileName=brandLogo.getOriginalFilename();
		//д�����
		//��1�����彫�ϴ���ͼƬ�浽�ı���·��
		String newpath="F:\\goodImages\\"; 
		//��2��ƴ��һ���µĵ�ַ
		File file=new File(newpath+fileName);
		//��3��
		brandLogo.transferTo(file);	
		
		//http://localhost:8080/upload/xxx.jpg
		String basePath=request.getScheme()+"://"
		             +request.getServerName()+":"
				     +request.getServerPort()+"/upload/";
		String finalPath=basePath+fileName; //д�����ݿ��·��
		
		BrandInformation brandInformation=new BrandInformation();
		brandInformation.setBrandInforID(brandInforID);
		brandInformation.setBrandName(brandName);
		brandInformation.setBrandLogo(finalPath);
		
		int count=brandService.addBrand(brandInformation);
		return "forward:selectAll.action";
		
		//return "forward:selectAll.action?brandName="+brandName;
	}
	@RequestMapping(value="/selectAll.action")
	public String selectAllBrand(Model model){
		List<BrandInformation> brandinflist=brandService.selectAllBrand();
		model.addAttribute("brandinflist",brandinflist);
		return "brand-brandInput";		
	}
	
	@RequestMapping(value="/selectOneSeller.action")
	//,HttpSession session
	public String selectOneSeller(String sName,Model model){
		Seller result=brandService.selectOneSeller(sName);
        model.addAttribute("seller", result);
		return "bvo-myInfo";		
	}
	@RequestMapping(value="/update.action")
	//,HttpSession session
	public String changeOneSeller(Seller seller,Model model){
		boolean result=brandService.changeOneSeller(seller);
        if(result){
        	//���ɹ��޸ĵĹ�˾��Ϣ���浽session����
        	//session.setAttribute("name", brand.getbCName()); 
        return "bvo-myInfo";
        }
		return "error";		
	}
	@RequestMapping(value="/deleteBrand.action")
	public String deleteBrand(int brandInforID,Model model){
		boolean result=brandService.deleteBrand(brandInforID);
        if(result){
        	return "forward:selectAll.action";
        }
		return "error";			
	}
	@RequestMapping(value="/LoginBrand.action")
	public String loginbrand(Brand brand,Model model,HttpSession session){
		//boolean������ӿ���UserService�����һ��
		//result�������ս�� Login��UserMapper.xml�ж����id���� user�Ǵ���Ĳ���
		Brand result=brandService.loginbrand(brand);
//        model.addAttribute("brand", result);
        session.setAttribute("brand", result);
        session.setAttribute("orbrandId", result.getBrandId()); 
          //���ɹ���¼���û���Ϣ���浽session����
        if(null!=result){
    	  return "index";    
        }
		return "error";		
	}
	@RequestMapping(value="/LoginSeller.action")
	public String loginseller(Seller seller,Model model,HttpSession session){
		//boolean������ӿ���UserService�����һ��
		//result�������ս�� Login��UserMapper.xml�ж����id���� user�Ǵ���Ĳ���
		Seller result=brandService.loginseller(seller);
		model.addAttribute("seller",result);
		session.setAttribute("orsellerId", result.getSellerId()); 
        if(null!=result){
          //���ɹ���¼���û���Ϣ���浽session����
        // session.setAttribute("sName", seller.getsName());    
    	  return "index2";    
        }
		return "error";		
	}
	@RequestMapping(value="/RegisterSeller.action")
	//,HttpSession session
	public String addSeller(Seller seller,Model model,HttpSession session){
		
		boolean result=brandService.addSeller(seller);
        if(result){
        	//���ɹ��޸ĵĹ�˾��Ϣ���浽session����
        	session.setAttribute("sName", seller.getsName());  
        	return "Login2";
        }
		return "error";		
	}
}
