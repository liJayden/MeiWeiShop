package com.etc.bean;

import java.io.Serializable;
import java.math.BigDecimal;

public class CartItem implements Serializable{

	private Product product;
	private int count;

	public double getSubtotal() {
		BigDecimal d1 = new BigDecimal(product.getShopprice() + "");
		BigDecimal d2 = new BigDecimal(count + "");
		return d1.multiply(d2).doubleValue();
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

}
