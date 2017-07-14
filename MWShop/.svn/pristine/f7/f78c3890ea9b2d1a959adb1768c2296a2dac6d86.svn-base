package com.etc.utils;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

public class UnLockMail {
	
	public static void sendMail(String to,String code){
		/**
		 * 1.获得一个Session对象.
		 * 2.创建一个代表邮件的对象Message.
		 * 3.发送邮件Transport
		 */
		// 1.获得连接对象
		Properties props = new Properties();
		props.setProperty("host", "smtp.163.com");
		Session session = Session.getInstance(props, new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("MeiWei@mewe.com", "111");
			}
			
		});
		// 2.创建邮件对象:
		Message message = new MimeMessage(session);
		// 设置发件人:
		try {
			message.setFrom(new InternetAddress("MeiWei@mewe.com"));
			// 设置收件人:
			message.addRecipient(RecipientType.TO, new InternetAddress(to));
			// 抄送 CC   密送BCC
			// 设置标题	
			message.setSubject("来自美唯官方解锁邮件");
			// 设置邮件正文:
			message.setContent("<h2 align='center'>来自美唯电器城账号解锁邮件!请点击链接完成解锁操作!</h2><h1 align='center'><a href='hhttp://meiwei.ngrok.cc/MWShop/MWController/unLock?code="+code+"'>ヾ(@^▽^@)ノ   点击解锁	ヽ(ﾟ∀ﾟ)ﾒ(ﾟ∀ﾟ)ﾉ  </a></h1>", "text/html;charset=UTF-8");
			// 3.发送邮件:
			Transport.send(message);
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
	
	
	public static void main(String[] args) {
		sendMail("13828925820@163.com","11111111111111");
		System.out.println("发送成功");
	}

}
