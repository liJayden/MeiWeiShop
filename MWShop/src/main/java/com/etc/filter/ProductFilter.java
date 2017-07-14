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
import org.springframework.web.servlet.ModelAndView;

import com.etc.bean.Product;
import com.etc.dao.ProductMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * Servlet Filter implementation class ProductFilter
 */
public class ProductFilter implements Filter {

    /**
     * Default constructor. 
     */
    public ProductFilter() {
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
	@SuppressWarnings({ "unchecked", "resource", "unused" })
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
	
        List<Product> products= (List<Product>) request.getAttribute("products");
        if(products==null){
        	ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
        	ProductMapper productMapper= ctx.getBean(ProductMapper.class);
        	
        	ModelAndView mav=new ModelAndView();
    		String pn=request.getParameter("pn");
    		if(pn==null){
            	// 指定PageHelper当前页,每页显示长度
        		PageHelper.startPage(1,15);
        		// 查询数据库Person表所有数据
            	products= productMapper.selectAllProduct();
            	
            	// 绑定PageInfo
        		@SuppressWarnings("rawtypes")
        		PageInfo pageInfo=new PageInfo(products,5);
        		
        		request.setAttribute("pageInfo",pageInfo);
        		//添加PageInfo
        		/*mav.addObject("pageInfo",pageInfo);*/
    		}
    		if(pn!=null){
            	// 指定PageHelper当前页,每页显示长度
        		PageHelper.startPage(Integer.parseInt(pn),15);
        		// 查询数据库Person表所有数据
            	products= productMapper.selectAllProduct();
            	/*request.setAttribute("products", products);*/
            	
            	// 绑定PageInfo
        		@SuppressWarnings("rawtypes")
        		PageInfo pageInfo=new PageInfo(products,5);
        		
        		request.setAttribute("pageInfo",pageInfo);
        		//添加PageInfo
        		/*mav.addObject("pageInfo",pageInfo);*/
    		}
        	
    		
        }
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	
	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}
}
