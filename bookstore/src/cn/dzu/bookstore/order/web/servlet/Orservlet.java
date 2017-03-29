package cn.dzu.bookstore.order.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xml.internal.security.utils.Base64;

import cn.dzu.bookstore.order.service.OrderService;
import cn.itcast.servlet.BaseServlet;

/**
 * Servlet implementation class Orservlet
 */
public class Orservlet extends BaseServlet {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private OrderService orderService = new OrderService();
	    public String findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("orderList", orderService.findAll());
	return "f:/adminjsps/admin/order/list.jsp";
	}
	    public String faHuo(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			String oid= request.getParameter("oid");

			orderService.faHuo(oid);
			request.setAttribute("msg", "发货成功！");
			return "f:/adminjsps/msg.jsp";
			
		}
}
