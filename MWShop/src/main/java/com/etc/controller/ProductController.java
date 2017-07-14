package com.etc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.etc.bean.Product;
import com.etc.service.ProductService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("ProductController")
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	private static final String PRODUCT="product";
	private static final String BRAND="brand";
	
	@RequestMapping("findProductByPid")
	public String findProductByPid(Integer pid, Model model){
		List<Product> Productlist = productService.findProductByPid(pid);
		model.addAttribute("Productlist", Productlist);
		return PRODUCT;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("selectProductByCategoryID")
	public String selectProductByCategoryID(HttpServletRequest request,HttpServletResponse response){
		Integer csid=Integer.parseInt(request.getParameter("csid"));
		String pn=request.getParameter("pn");
		
		if(pn==null){
		PageHelper.startPage(1,15);
		response.setCharacterEncoding("UTF-8");
		List<Product> products=productService.selectProductByCategoryID(csid);
		// 绑定PageInfo
		@SuppressWarnings("rawtypes")
		PageInfo pageInfo=new PageInfo(products,5);
		request.setAttribute("pageInfo", pageInfo);	
		}
	    if(pn!=null){
	    	PageHelper.startPage(Integer.parseInt(pn),15);
			response.setCharacterEncoding("UTF-8");
			List<Product> products=productService.selectProductByCategoryID(csid);
			// 绑定PageInfo
			@SuppressWarnings("rawtypes")
			PageInfo pageInfo=new PageInfo(products,5);
			request.setAttribute("pageInfos", pageInfo);	
	    	return BRAND;
	    }
	    return BRAND;
	}	
	
	@RequestMapping("sreachPname")
	public void sreachPname(String pname,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		
		List<String> pnames = productService.sreachPname(pname);
		
		if(pnames!=null && pnames.size()>0){
			String s = pnames.toString();
			s=s.substring(1, s.length()-1);
			response.getWriter().println(s);
		}
	}
}
