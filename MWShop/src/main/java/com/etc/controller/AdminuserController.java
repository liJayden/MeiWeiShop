package com.etc.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.etc.bean.Adminuser;
import com.etc.service.AdminuserService;
import com.etc.utils.VerifyCodeUtils;

@Controller
@RequestMapping("AdminuserController")
public class AdminuserController {
	
	
	@Autowired
	AdminuserService adminuserService;
	
	/**
	 * 登陆
	 */
	@RequestMapping("login")
	public String login(Adminuser adminuser,HttpServletRequest request,String checkcode){
		String codes  = (String) request.getSession().getAttribute("code");
		if(!checkcode.equalsIgnoreCase(codes)){
			return "redirect:/jsp/alogin.jsp?error=c";
		}
		
		boolean flag = adminuserService.login(adminuser);
		if(flag){
			return "aindex";
		}
		return "redirect:/jsp/alogin.jsp?error=y";
	}

	/**
	 * 获取验证码
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	/**
	 * 获取验证码
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("Code")
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
        response.setHeader("Pragma", "No-cache");  
        response.setHeader("Cache-Control", "no-cache");  
        response.setDateHeader("Expires", 0);  
        response.setContentType("image/jpeg");  
        //生成随机字串  
        String verifyCode = VerifyCodeUtils.generateVerifyCode(4);  
        //存入会话session  
        HttpSession session = request.getSession(true);  
        session.setAttribute("code", verifyCode.toLowerCase());  
        //生成图片  
        int width = 200, height = 80;  
        VerifyCodeUtils.outputImage(width, height, response.getOutputStream(), verifyCode);  
    }  
}
