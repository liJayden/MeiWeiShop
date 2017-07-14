package com.etc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.etc.bean.Orderitem;
import com.etc.bean.Orders;
import com.etc.bean.Product;
import com.etc.service.AOrderService;
import com.etc.service.OrderService;
import com.etc.service.OrderitemService;
import com.etc.service.ProductService;

@Controller
@RequestMapping("AOrderController")
public class AOrderController {

	@Autowired
	AOrderService AorderService;
	@Autowired
	OrderService orderService;
	@Autowired
	OrderitemService orderitemService;
	@Autowired
	ProductService productService;

	@RequestMapping("findOrder")
	public String findOrder(Model model) {
		List<Orders> orderList = AorderService.findOrder();
		model.addAttribute("orderList", orderList);
		return "aorder_list";
	}

	@RequestMapping("findOrderByOid")
	public String findOrderByOid(String oid, HttpServletRequest request) {
		List<Orders> OrderList = orderService.findOrder(oid);
		List<Integer> pids = new ArrayList<Integer>();
		List<Orderitem> orderitemList = orderitemService.findOrderitemByOid(oid);
		List<Product> ProductList = new ArrayList<Product>();

		
		for (Orderitem orderitem  : orderitemList ) {
			pids.add(orderitem.getPid());
		}
		for (Integer pid : pids) {
			ProductList.add(productService.findProductKey(pid));	
		}

		request.setAttribute("ProductList", ProductList);
		request.setAttribute("orderitemList", orderitemList);
		request.setAttribute("orderlist", OrderList);

		return "aorder_detail";
	}

	@RequestMapping("updateOrderState")
	public String updateOrderState(String oid) {
		Orders orders = AorderService.findOrderByOid(oid);
		orders.setState(3);
		AorderService.updateOrderState(orders);
		return "forward:/AOrderController/findOrderByOid";

	}
	
	/**
	 * 根据订单状态查询订单
	 */
	@RequestMapping("findOrderByState")
	public String findOrderByState(Integer state,Model model){
		List<Orders> orderByState = AorderService.findOrderByState(state);
		model.addAttribute("orderList", orderByState);
		return "aorder_list";
	}

}
