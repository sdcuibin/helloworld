package test;


import org.junit.Test;

import cn.dzu.bookstore.order.dao.OrderDao;

public class OrderTest {

	@Test
	public void test() {
		OrderDao orderDao=new OrderDao();
		
		System.out.println(orderDao.findAll());
	}

}
