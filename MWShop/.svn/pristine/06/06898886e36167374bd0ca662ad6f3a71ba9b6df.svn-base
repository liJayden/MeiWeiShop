package com.etc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.etc.bean.Category;
import com.etc.dao.CategoryMapper;

@Service
public class AffterCategoryService {

	@Autowired
	CategoryMapper categroyMapper;
	
	public List<Category> getCategory() {
		List<Category> categroys= categroyMapper.selectAllCategroy();
		return categroys;
	}

	public void addCategory(Category category) {
		categroyMapper.insertSelective(category);
	}

	public void editCategory(Category category) {
		categroyMapper.updateByPrimaryKey(category);
	}

	public List<Category> findCategoryByName(String cname) {
		return categroyMapper.findCategoryByName(cname);
	}

	public List<Category> findCategoryByCid(Integer cid) {
		return categroyMapper.findCategoryByCid(cid);
	}
	

	
}
