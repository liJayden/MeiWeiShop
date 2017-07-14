package com.etc.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.etc.bean.Categorysecond;
import com.etc.dao.CategorysecondMapper;

@Controller
@RequestMapping("CategorysecondController")
public class CategorySecondController {

	@Autowired
	CategorysecondMapper categorysecondMapper;

	//private static final String INDEX = "index";

	/**
	 * 获取二级分类的列表
	 * 
	 * @param csid
	 * @return
	 */

	@RequestMapping("selectAllCategorySecond")
	public void selectAllCategorySecond(HttpServletRequest request, HttpServletResponse response) {
		response.setCharacterEncoding("UTF-8");
		Integer cid = Integer.parseInt(request.getParameter("cid"));
		// System.out.print(cid);
		// System.out.print(cid);
		List<Categorysecond> categoryseconds = categorysecondMapper.selectCategorySecondByID(cid);
		JSONArray array = new JSONArray();
		for (Categorysecond categorysecond : categoryseconds) {
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("cid", categorysecond.getCid());
			jsonObject.put("csname", categorysecond.getCsname());
			jsonObject.put("csid", categorysecond.getCsid());
			array.put(jsonObject);
		}
		// System.out.println(array.toString());
		try {
			response.getWriter().write(array.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	

}
