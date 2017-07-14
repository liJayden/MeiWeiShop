<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录</title>
<!-- link css -->
<link href="${pageContext.request.contextPath}/css/style.reset.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/css3style.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/font-color-size.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/css/table.select.style.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/login-style.css"
	rel="stylesheet" type="text/css" />
	
	<style type="text/css">
	#div{
	position: relative;
	left: 600px;
	}
	</style>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.js"></script>
	<script type="text/javascript">
	function changeImgCode(){
		/* 注意这个src必须要改变  */
		document.getElementById("imgCode").src="/MWShop/MWController/Code?"+Math.random();
	}
	var value= "<%=request.getParameter("error") %>"
	var st="<%=request.getParameter("state")%>"
	if(value=="y"){
		alert("账号或密码错误，请重新输入！"+"第"+st+"次输错密码，输错5次账号将会被锁定")
	}else if(value=="s"){
		alert("你还没激活，请到邮箱激活！")
	}else if(value=="l"){
		alert("请不要重复登录！")
	}else if(value=="c"){
		alert("验证码错误，请重新输入！")
	}else if(value=="namenull"){
		alert("用户名不存在");
	}else if(value=="passwordlock"){
		alert("由于输入的密码错误次数过多，改账号已被锁定，请到邮箱激活");
	}
	</script>
</head>

<body>
	<!-- 顶部 -->
	<div class="login-top center"></div>
	tomcat1<hr>
	<%=session.getId() %>
	<!-- 登录 -->
	<div class="login-body shadow center">

		<div class="clear center" style="width: 94%; height: 60px;">
			<span style="display: none">此DIV起增高作用！</span>
		</div>
		<div class="login-enter enterInput center">
		<form action="/MWShop/MWController/login" method="post">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="67%" rowspan="5">
						<div class="login-focus fr" style="border-right: 1px dotted #ccc">
							<img src="${pageContext.request.contextPath}/img/login/mewe3.PNG"	width="450" height="295" />
						</div>
					</td>
				</tr>
					<tr><td width="33%"><span style="color: black;">用戶名：</span><input type="text" class="login-input-text  box-shadow fl" id="user"  name="username"  required="required" placeholder="用户名"/></td></tr>
                    
					<tr><td><span style="color: black;">密码：</span><input type="password" class="login-input-text  box-shadow fl" id="user"  name="password"  required="required" placeholder="密码"/></td></tr>
				 <tr>
				<td><span style="color: black;">验证码：</span><br><input type="text" style="width: 100px" class="login-input-text  box-shadow fl"  id="checkcode"  name="checkcode"  required="required" placeholder="验证码" />&nbsp;&nbsp;<img src="/MWShop/MWController/Code" width="100" style="height: 32px" id="imgCode" onclick="changeImgCode()"></td>
		      </tr>
				
				<tr>
					<td>
							<p style="padding-top: 15px; _padding-top: 5px">
								<button type="submit" class="login-input-submit fl">登 录</button>
							</p>
					</td>
				</tr>
				</form>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>
						<div style="border-bottom: 1px dotted #CCCCCC; width: 250px; padding: 7px 0; margin-bottom: 7px" id="div">
							<a href="forgotpw.jsp">忘了密码？</a>
							&nbsp;&nbsp; | &nbsp;&nbsp;
							<a href="register.jsp">注册新帐号</a>
							&nbsp;&nbsp; 
						</div>
					</td>
				</tr>
			</table>
		</div>
		<div class="clear center" style="width: 94%; height: 60px;">
			<span style="display: none">此DIV起增高作用！</span>
		</div>

	</div>

	<!-- 底部 -->
	<div class="login-bottom center">
		<p>
			<a href="#">关于我们</a> | <a href="#">招贤纳士</a> | <a href="#">新闻资讯</a> |
			<a href="#">联系我们</a> | <a href="#">免责条款</a>
		</p>
		<p>
			Copyright©2009-2014 美唯电器城 All Rights Reserved<br /> 美唯电器城 广东广州市黄埔区
			联系电话：（86）0551-123456789<br /> 粤ICP备012344578号
		</p>
	</div>

</body>
</html>
