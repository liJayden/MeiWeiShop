<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8"/>
<title>后台登录</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/acss/style.css" />
<style>
body{height:100%;background:#16a085;overflow:hidden;}
canvas{z-index:-1;position:absolute;}
</style>
<script src="${pageContext.request.contextPath}/ajs/jquery.js"></script>
<script src="${pageContext.request.contextPath}/ajs/verificationNumbers.js"></script>
<script src="${pageContext.request.contextPath}/ajs/Particleground.js"></script>
<script>
$(document).ready(function() {
  //粒子背景特效
  $('body').particleground({
    dotColor: '#5cbdaa',
    lineColor: '#5cbdaa'
  });
});
</script>
<script type="text/javascript">
function changeImgCode(){
	/* 注意这个src必须要改变  */
	document.getElementById("imgCode").src="/MWShop/AdminuserController/Code?"+Math.random();
}

var value= "<%=request.getParameter("error") %>"
	if(value=="c"){
		alert("验证码错误，请重新输入！")
	}else if(value=="y"){
		alert("密码错误，请重新输入！")
	}
</script>
<style type="text/css">
.login_txtbx{
background-color: #5cbdaa;
}
</style>
</head>
<body>
<dl class="admin_login">
 <dt>
  <strong>美唯电器后台管理系统</strong>
  <em>MeiWei Appliance mall</em>
 </dt>
 <form action="/MWShop/AdminuserController/login" method="post">
 <dd class="user_icon">
  <input type="text" style="height: 50px" required="required" placeholder="账号" class="login_txtbx" name="username"/>
 </dd>
 <dd class="pwd_icon">
  <input type="password" style="height: 50px" required="required" placeholder="密码" class="login_txtbx" name="password"/>
 </dd>
 <dd class="val_icon">
    <input type="text"  style="height: 50px;width: 150px" id="checkcode" name="checkcode" required="required"  placeholder="验证码" maxlength="4" class="login_txtbx">
  &nbsp;&nbsp;&nbsp;<img src="/MWShop/AdminuserController/Code" width="100" style="height: 52px" id="imgCode" onclick="changeImgCode()">
  </dd>
 <dd>
  <input type="submit" value="立即登录" class="submit_btn"/>
 </dd>
 </form>
 <dd>
  <p>© 2016-2017 美唯科技  版权所有</p>
  <p>穗B2-20160615-1</p>
 </dd>
</dl>
</body>
</html>
