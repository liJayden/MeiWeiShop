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


public class HotProductFilter implements Filter {


    public HotProductFilter() {
    }

	public void destroy() {
	}


	@SuppressWarnings({ "unchecked", "resource" })
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		List<Product>  isHotProduct = (List<Product>)request.getAttribute("isHotProduct");
		if (isHotProduct == null) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		ProductMapper productMapper = ctx.getBean(ProductMapper.class);
		isHotProduct = productMapper.findProductIsHot(1);
		request.setAttribute("isHotProduct", isHotProduct);
		}
		chain.doFilter(request, response);
	}


	public void init(FilterConfig fConfig) throws ServletException {
	}

}
