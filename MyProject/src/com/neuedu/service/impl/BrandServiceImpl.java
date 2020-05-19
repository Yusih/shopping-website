package com.neuedu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.mapper.BrandMapper;
import com.neuedu.pojo.Brand;
import com.neuedu.pojo.BrandInformation;
import com.neuedu.pojo.Seller;
import com.neuedu.pojo.UserLogin;
import com.neuedu.service.BrandService;

@Service(value="brandService")
public class BrandServiceImpl implements BrandService {
	@Autowired
	BrandMapper brandMapper;

	@Override
	public boolean addCom(Brand brand) {
		int count=brandMapper.addCom(brand);
		if(count!=0){
			return true;
		}
		return false;
	}

	@Override
	public int addBrand(BrandInformation brandInformation) {
		return brandMapper.addBrand(brandInformation);
	}

	@Override
	public Seller selectOneSeller(String sName) {
		return brandMapper.selectOneSeller(sName);
	}

	@Override
	public boolean changeOneSeller(Seller seller) {
		int count=brandMapper.changeOneSeller(seller);
		if(count!=0){
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteBrand(int brandInforID) {
		int result=brandMapper.deleteBrand(brandInforID);
		if(result!=0){
			return true;
		}
		return false;
	}

	@Override
	public List<BrandInformation> selectAllBrand() {
		return brandMapper.selectAllBrand();
	}

	@Override
	public Brand loginbrand(Brand brand) {
		return brandMapper.loginbrand(brand);
	}

	@Override
	public Seller loginseller(Seller seller) {
			return brandMapper.loginseller(seller);
	}

	@Override
	public boolean addSeller(Seller seller) {
		return brandMapper.addSeller(seller);
	}


}
