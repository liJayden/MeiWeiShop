package com.etc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.etc.bean.Orderitem;
import com.etc.dao.OrderitemMapper;

@Service
public class OrderitemService {

	@Autowired
	OrderitemMapper orderitemMapper;
	
	public void addOrderitem(Orderitem orderitem){
		orderitemMapper.insertSelective(orderitem);
	}
	
	public List<Orderitem> findOrderitemByOid(String Oid){
		return orderitemMapper.findOrderitemByOid(Oid);
	}

	public void delectOrderitem(String oid) {
		orderitemMapper.delectOrderitem(oid);
	}

	public Integer findOrderPid(String oid) {
		return orderitemMapper.findOrderPid(oid);
	}

	
}
