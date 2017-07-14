package com.etc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.etc.bean.User;

@Controller
@RequestMapping("ExitController")
public class ExitController {
 
	private static final String INDEX = "index";

	@RequestMapping("ExitMethod")
	public ModelAndView ExitMethod(HttpServletRequest request) {
		User users = (User) request.getSession().getAttribute("users");
		ModelAndView modelAndView = new ModelAndView(INDEX);
		if (users != null) {
			users = null;
		}
		request.getSession().setAttribute("users", users);
		return modelAndView;
	}
}
