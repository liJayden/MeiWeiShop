package com.etc.bean;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

public class Cart implements Serializable{

	private Map<Integer, CartItem> map = new LinkedHashMap<Integer, CartItem>();

	public double getTotal() {
		// 合计=所有条目的小计之和
		BigDecimal total = new BigDecimal("0");
		for (CartItem cartItem : map.values()) {
			BigDecimal subtotal = new BigDecimal("" + cartItem.getSubtotal());
			total = total.add(subtotal);
		}
		return total.doubleValue();
	}

	/**
	 * 添加条目到车中
	 * 
	 * @param cartItem
	 */
	public void add(CartItem cartItem) {
		if (map.containsKey(cartItem.getProduct().getPid())) {// 判断原来车中是否存在该条目
			CartItem _cartItem = map.get(cartItem.getProduct().getPid());// 返回原条目
			_cartItem.setCount(_cartItem.getCount() + cartItem.getCount());// 设置老条目的数量为，其自己数量+新条目的数量
			map.put(cartItem.getProduct().getPid(), _cartItem);
		} else {
			map.put(cartItem.getProduct().getPid(), cartItem);
		}
	}

	/**
	 * 清空所有条目
	 */
	public void clear() {
		map.clear();
	}

	/**
	 * 删除指定条目
	 */
	public void delete(Integer pid) {
		map.remove(pid);
	}

	/**
	 * 获取所有条目:我的购物车
	 */
	public Collection<CartItem> getCartItems() {
		return map.values();// 返回所有值
	}
}
