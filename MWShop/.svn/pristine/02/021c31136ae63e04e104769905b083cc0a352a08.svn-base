package com.etc.listener;

import java.util.Date;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;


public class LoginSessionListener implements HttpSessionListener {

	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
		Date date =new Date();
		System.out.println(date+"session创建");
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		Date date =new Date();
			System.out.println(date+"session关闭");
			/*HttpSession session = event.getSession();
	    	User user = (User) session.getAttribute("users");
			
			ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
			UserMapper userMapper = ctx.getBean(UserMapper.class);
			userMapper.updateStateByName2(user.getUsername());*/
	}


}
