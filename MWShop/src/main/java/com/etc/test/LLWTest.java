package com.etc.test;

import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.etc.bean.Category;
import com.etc.bean.Categorysecond;
import com.etc.dao.CategoryMapper;
import com.etc.dao.CategorysecondMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:ApplicationContext.xml" })
public class LLWTest {

	@Autowired
	CategoryMapper cm;

	@Test
	public void test_Big_Type() {
		List<Category> list = cm.selectAllCategroy();
		for (Category categroy : list) {
			System.out.println(categroy.getCname());
		}
	}

	@Autowired
	CategorysecondMapper categorysecondMapper;

	@Test
	public void test_categorySecond() {
		List<Categorysecond> categoryseconds = categorysecondMapper.selectCategorySecondByID(3);
		JSONArray array = new JSONArray();
		
		for (Categorysecond categorysecond : categoryseconds) {
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("cid", categorysecond.getCid());
			jsonObject.put("csname", categorysecond.getCsname());
			jsonObject.put("csid", categorysecond.getCsid());
			array.put(jsonObject);
		}
		System.out.println(array.toString());

	}

}
