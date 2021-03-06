package com.etc.bean;

import java.io.Serializable;

public class Orderitem implements Serializable{
	private Integer itemid;

	private Integer count;

	private Double subtotal;

	private Integer pid;

	private String oid;

	private Product product; // 商品外键:对象

	private Orders orders;	// 订单外键:对象

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public Integer getItemid() {
		return itemid;
	}

	public void setItemid(Integer itemid) {
		this.itemid = itemid;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public Double getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(Double subtotal) {
		this.subtotal = subtotal;
	}

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getOid() {
		return oid;
	}

	public void setOid(String oid) {
		this.oid = oid == null ? null : oid.trim();
	}

	@Override
	public String toString() {
		return "Orderitem [itemid=" + itemid + ", count=" + count + ", subtotal=" + subtotal + ", pid=" + pid + ", oid="
				+ oid + ", product=" + product + ", orders=" + orders + "]";
	}
	
	
}