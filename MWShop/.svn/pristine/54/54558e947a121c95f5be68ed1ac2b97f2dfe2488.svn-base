package com.etc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.etc.bean.Category;
import com.etc.service.CategoryService;

@Controller
@RequestMapping("SController")
public class CategoryController {
	
	@Autowired
	CategoryService categoryService;
	
	private final static String INDEX="index";
	
	
	/**
	 * 获取大分类的名称 
	 * @return
	 */
	@RequestMapping("showCategory")
	public String showCategory(HttpServletRequest request){
		List<Category> categorys=categoryService.getCategory();
		request.setAttribute("categorys", categorys);
		return INDEX;
	}
}
