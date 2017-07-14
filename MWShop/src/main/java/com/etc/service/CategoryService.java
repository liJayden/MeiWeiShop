package com.etc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.etc.bean.Category;
import com.etc.dao.CategoryMapper;

@Service
public class CategoryService {
	
	@Autowired
	CategoryMapper categroyMapper;

	public List<Category> getCategory() {
		// TODO Auto-generated method stub
		List<Category> categroys= categroyMapper.selectAllCategroy();
		//System.out.println(categroys.toString());
		return categroys;
	}
	
	
}
