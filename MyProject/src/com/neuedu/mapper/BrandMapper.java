package com.neuedu.mapper;

import java.util.List;

import com.neuedu.pojo.Brand;
import com.neuedu.pojo.BrandInformation;
import com.neuedu.pojo.Seller;
import com.neuedu.pojo.UserLogin;

public interface BrandMapper {
	public int addCom(Brand brand);
	public int addBrand(BrandInformation brandInformation);
	public int deleteBrand(int brandInforID);
	public List<BrandInformation> selectAllBrand();
	public Seller selectOneSeller(String sName);
	public int changeOneSeller(Seller seller);
	public Brand loginbrand(Brand brand);
	public Seller loginseller(Seller seller);
	public boolean addSeller(Seller seller);

}
