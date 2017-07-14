package com.etc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.etc.bean.Category;
import com.etc.service.AffterCategoryService;

@Controller
@RequestMapping("AController")
public class AController {
	
	@Autowired
	AffterCategoryService affterCategoryService;
	
	/**
	 * 获取大分类的名称 
	 * @return
	 */
	@RequestMapping("showCategory")
	public String showCategory(HttpServletRequest request){
		List<Category> categroys=affterCategoryService.getCategory();
		request.setAttribute("categroys", categroys);
		return "aproduct_one";
	}
	
	/**
	 * 添加大分类
	 */
	
	@RequestMapping("addCategory")
	public String addCategory(Category category){
		affterCategoryService.addCategory(category);
		return "forward:showCategory";
	}
	
	@RequestMapping("loadCid")
	public String loadCid(Integer cid,Model model){
		List<Category> categoryList = affterCategoryService.findCategoryByCid(cid);
		model.addAttribute("cid", cid);
		model.addAttribute("categoryList", categoryList);
		return "aCategoryEdit";
	}
	
	/**
	 * 修改分类
	 * @param category
	 * @return
	 */
	@RequestMapping("editCategory")
	public String editCategory(Category category){
		affterCategoryService.editCategory(category);
		return "forward:showCategory";
	}
	
	/**
	 * 模糊查询分类
	 */
	@RequestMapping("findCategoryByName")
	public String findCategoryByName(String cname,HttpServletRequest request){
		System.out.println(cname);
		List<Category> categroys = affterCategoryService.findCategoryByName(cname);
		for (Category category : categroys) {
			System.out.println(category.getCname());
		}
		request.setAttribute("categroys", categroys);
		return "aproduct_one";
	}
	
	/**
	 * 获取大分类的名称到添加页面
	 * @return
	 */
	@RequestMapping("showCategoryTOAdd")
	public String showCategoryTOAdd(HttpServletRequest request){
		List<Category> categroys=affterCategoryService.getCategory();
		request.setAttribute("categroys", categroys);
		return "aCategroySecondAdd";
	}
}