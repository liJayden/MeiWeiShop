package com.etc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.etc.bean.Categorysecond;
import com.etc.dao.CategorysecondMapper;

@Service
public class AffterCategorySecondService {

	@Autowired
	CategorysecondMapper categorysecondMapper;
	
	public List<Categorysecond> getCategorySencond() {
		return  categorysecondMapper.selectAllCategroySecond();
		
	}

	public List<Categorysecond> selectCategroySeccondByName(String csname) {
		return categorysecondMapper.selectCategroyLike(csname);
	}

	public void addCategroySecond(Categorysecond categorysecond) {
		categorysecondMapper.insertSelective(categorysecond);
	}

	public void editCategorySecond(Categorysecond categorysecond) {
		categorysecondMapper.updateByPrimaryKeySelective(categorysecond);
	}

	public List<Categorysecond> findCategorySecondByCsid(Integer csid) {
		return categorysecondMapper.findCategorySecondByCsid(csid);
	}
	
	
}
