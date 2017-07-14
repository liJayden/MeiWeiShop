package com.etc.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.utils.VerifyCodeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.etc.bean.Cart;
import com.etc.bean.User;
import com.etc.service.OrderService;
import com.etc.service.RegisterService;
import com.etc.utils.MD5Utils;
import com.etc.utils.Mail;
import com.etc.utils.UUIDUtils;
import com.etc.utils.UnLockMail;

@Controller
@RequestMapping("MWController")
public class MWController {
	
	@Autowired
	RegisterService registerService;
	@Autowired
	OrderService orderService;
	
	
	@SuppressWarnings("static-access")
	@RequestMapping("register")
	public String register( User record,HttpServletRequest request,String checkcode) {		
		String codes  = (String) request.getSession().getAttribute("code");
		if(!checkcode.equalsIgnoreCase(codes)){
			return "redirect:/jsp/register.jsp?error=c";
		}
		MD5Utils md5 =new MD5Utils();
		record.setPassword(md5.MD5Password(record.getPassword()));
		record.setState(0);
		String code = UUIDUtils.getUUID() + UUIDUtils.getUUID();
		record.setCode(code);
		try {
			int i = registerService.register(record);
			if(i==1){
				Mail.sendMail(record.getEmail(), code);
				request.setAttribute("RigesterSuccess", "注册完成，请到邮箱激活！");
			}
		} catch (Exception e) {
			return "redirect:/jsp/register.jsp?error=e";
		}
		return "activation";
		
	}

	@RequestMapping("/active")
	public String active(String code,HttpServletRequest request) {
		User existUser = registerService.active(code);
		if (existUser.getCode() == null) {
			request.setAttribute("ActiveError", "激活失败,请重新注册！");
			return "activation";
		} else {
			existUser.setState(1);
			existUser.setCode(null);
			registerService.updateById(existUser);
			request.setAttribute("ActiveSuccess", "激活成功,请登陆！");
		}

		return "activation";
	}
	
	
	
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
	
	
	/**
	 * 登陆
	 */
	@SuppressWarnings("static-access")
	@RequestMapping("login")
	public String login(User user,HttpServletRequest request,String checkcode){
		
		String code  = (String) request.getSession().getAttribute("code");
		if(!checkcode.equalsIgnoreCase(code)){
			return "redirect:/jsp/login.jsp?error=c";
		}
		
		User temp_user= registerService.findByUsername(user.getUsername());	
		if(temp_user==null){
			return "redirect:/jsp/login.jsp?error=namenull";
		}
		Integer state = registerService.findStateByName(user.getUsername());
		MD5Utils md5=new MD5Utils();
		user.setPassword(md5.MD5Password(user.getPassword()));
		
		boolean flag = registerService.login(user);
		
		if(state==0){
			return "redirect:/jsp/login.jsp?error=s";
		}else if(state>=6){
			String mail = registerService.findMailbyUsername(user.getUsername());
			UnLockMail.sendMail(mail,user.getUsername());
			return "redirect:/jsp/login.jsp?error=passwordlock";
		}
		
		if(flag){
			user.setState(1);
			registerService.updateStateByName(user);
			request.getSession().setAttribute("cart", new Cart());
			User users = registerService.findByUsername(user.getUsername());
			request.getSession().setAttribute("users", users);
			return "forward:/SController/showCategory";
		}
		
		user.setState(state+1);
		registerService.updateStateByName(user);
		return "redirect:/jsp/login.jsp?error=y&state="+(state);
	}
	
	/**
	 * 解锁用户
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/unLock")
	public String unLock(String code,HttpServletRequest request) {
		registerService.updateStateByName2(code);
		request.setAttribute("unLockSuccess", "解锁成功,请登录！");
		return "activation";
	}
	

	
	@RequestMapping("selectByName")
	public void selectByName(HttpServletRequest request,HttpServletResponse response) throws Exception{
		String username=request.getParameter("username");
		if(username!=null||username!=""){
			int num=registerService.selectByName(username);
			if (num == 1) {
				response.getWriter().write("success");
			}else{
				response.getWriter().write("error");
			}
		}	
	}
	
	@RequestMapping("personal")
	public String personal(Integer uid,Model model){
		List<User> list = registerService.selectByUid(uid);
		model.addAttribute("userlist", list);
		return "personal";
	}
}
