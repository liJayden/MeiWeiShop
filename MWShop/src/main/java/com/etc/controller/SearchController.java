package com.etc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.etc.bean.ProductResult;
import com.etc.service.SearchProductService;

@Controller
@RequestMapping("SearchController")
public class SearchController {

	@Autowired
	SearchProductService searchProductService;

	@RequestMapping("searchProduct")
	public String searchProduct(String queryString, Integer csid, String shopprice, String sort, Integer page,
			Model model) throws Exception {
		ProductResult result = searchProductService.searchProduct(queryString, csid, shopprice, sort, page, model);

		// 返回查询结果
		model.addAttribute("result", result);

		model.addAttribute("queryString", queryString);
		model.addAttribute("csid", csid);
		model.addAttribute("shopprice", shopprice);
		model.addAttribute("sort", sort);

		return "allsearch";
	}
}
