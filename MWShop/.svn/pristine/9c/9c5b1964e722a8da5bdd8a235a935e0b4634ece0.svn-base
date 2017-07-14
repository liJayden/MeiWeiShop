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

import com.etc.bean.Category;
import com.etc.dao.CategoryMapper;

/**
 * Servlet Filter implementation class CategoryFilter
 */
public class CategoryFilter implements Filter {

	/**
	 * Default constructor.
	 */
	public CategoryFilter() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	@SuppressWarnings({ "unchecked", "resource" })
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
		List<Category> categorys = (List<Category>) request.getAttribute("categorys");

		if (categorys == null) {
			ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
			CategoryMapper categroyMapper = ctx.getBean(CategoryMapper.class);
			categorys = categroyMapper.selectAllCategroy();
			//System.out.println(categorys);
			request.setAttribute("categorys", categorys);
		}
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
