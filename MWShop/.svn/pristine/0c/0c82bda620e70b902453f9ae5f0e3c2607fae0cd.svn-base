package com.etc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.etc.bean.Cart;
import com.etc.bean.CartItem;
import com.etc.bean.Product;
import com.etc.service.ProductService;

@Controller
@RequestMapping("CartController")
public class CartController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping("addCart")
	public String addCart(Integer pid,Integer count,HttpServletRequest request){
		Cart cart = (Cart) request.getSession().getAttribute("cart");
		Product product = productService.findProductKey(pid);
		CartItem cartItem = new CartItem();
		cartItem.setProduct(product);
		cartItem.setCount(count);
		cart.add(cartItem);
		return "mycart";
	}
	
	@RequestMapping("clearCart")
	public String clearCart(HttpServletRequest request){
		Cart cart = (Cart) request.getSession().getAttribute("cart");
		cart.clear();
		return "mycart";
	}
	
	@RequestMapping("deleteCartItem")
	public String deleteCartItem(HttpServletRequest request,Integer pid){
		Cart cart = (Cart) request.getSession().getAttribute("cart");
		cart.delete(pid);
		return "mycart";
	}
}
