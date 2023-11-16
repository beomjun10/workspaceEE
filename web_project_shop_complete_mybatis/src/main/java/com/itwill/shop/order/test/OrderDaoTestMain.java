package com.itwill.shop.order.test;

import java.sql.Date;
import java.util.ArrayList;

import com.itwill.shop.order.Order;
import com.itwill.shop.order.OrderDaoImplJDBC;
import com.itwill.shop.order.OrderItem;
import com.itwill.shop.product.Product;
import com.itwill.shop.product.ProductDaoImplJDBC;

public class OrderDaoTestMain {

	public static void main(String[] args) throws Exception{
		OrderDaoImplJDBC orderDao=new OrderDaoImplJDBC();
		System.out.println(orderDao.findOrderByUserId("guard1"));
		System.out.println(orderDao.findOrderWithOrderItemByUserId("guard1"));
		
		/*
		 * 1.상품에서직접주문
		 */
		int p_qty=1;
		int p_no=1;
		ProductDaoImplJDBC productDao=new ProductDaoImplJDBC();
		Product product=productDao.findByPrimaryKey(p_no);
		
		ArrayList<OrderItem> jumunDetailList=new ArrayList<OrderItem>();
		jumunDetailList.add(new OrderItem(0, p_qty, p_no, product));
		Order newJumun=new Order(0,product.getP_name()+"외 0종" , new Date(0), product.getP_price(), "guard3");
		orderDao.insert(newJumun);
		System.out.println(orderDao.findOrderByUserId("guard3"));
		/*
		 * 2.cart에서 주문
		 */
		
		
	}

}
