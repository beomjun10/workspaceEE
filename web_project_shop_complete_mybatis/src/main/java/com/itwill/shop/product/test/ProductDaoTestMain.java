package com.itwill.shop.product.test;

import com.itwill.shop.product.ProductDaoImplJDBC;

public class ProductDaoTestMain {

	public static void main(String[] args)throws Exception  {
		ProductDaoImplJDBC productDao=new ProductDaoImplJDBC();
		System.out.println(productDao.findAll());

	}

}
