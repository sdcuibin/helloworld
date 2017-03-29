package test;

import org.apache.commons.collections.bag.SynchronizedSortedBag;
import org.junit.Test;

import cn.dzu.bookstore.order.service.OrderService;

public class OrderserviceTest {
	@Test
	public void test(){
	OrderService orderService=new OrderService();
	System.out.println(orderService.findAll());
	}

}
