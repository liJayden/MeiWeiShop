package com.etc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.etc.bean.Orders;
import com.etc.bean.OrdersExample;
import com.etc.dao.OrdersMapper;

@Service
public class AOrderService {
	
	@Autowired
	OrdersMapper ordersMapper;
	
	public List<Orders> findOrder(){
		return ordersMapper.selectByExample(new OrdersExample());
	}
	
	public Orders findOrderByOid(String oid){
		return ordersMapper.selectByPrimaryKey(oid);
	}

	public void updateOrderState(Orders orders) {
		ordersMapper.updateByPrimaryKeySelective(orders);
	}
	
	/**
	 * 根据订单状态查询订单
	 * @param state
	 */
	public List<Orders> findOrderByState(Integer state) {
			return ordersMapper.findOrderByState(state);
	}
}
