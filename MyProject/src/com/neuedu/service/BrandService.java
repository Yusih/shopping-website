package com.neuedu.service;

import java.util.List;

import com.neuedu.pojo.Brand;
import com.neuedu.pojo.BrandInformation;
import com.neuedu.pojo.Seller;
import com.neuedu.pojo.UserLogin;

public interface BrandService {
	public boolean addCom(Brand brand);
	public int addBrand(BrandInformation brandInformation);
	public boolean deleteBrand(int brandInforID);
	public List<BrandInformation> selectAllBrand();
	public Seller selectOneSeller(String sName);
	public boolean changeOneSeller(Seller seller);
	public Brand loginbrand(Brand brand);
	public Seller loginseller(Seller seller);
	public boolean addSeller(Seller seller);

}
