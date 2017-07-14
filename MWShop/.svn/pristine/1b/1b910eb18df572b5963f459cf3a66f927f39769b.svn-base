package com.etc.filter;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.etc.bean.Product;
import com.etc.dao.ProductMapper;


public class NewProductFilter implements Filter {

    public NewProductFilter() {
    }

	public void destroy() {
	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		List<Product>  newProduct = (List<Product>)request.getAttribute("newProduct");
		if (newProduct == null) {
			ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
			ProductMapper productMapper = ctx.getBean(ProductMapper.class);
			newProduct = productMapper.newProduct();
			request.setAttribute("newProduct", newProduct);
			}
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
