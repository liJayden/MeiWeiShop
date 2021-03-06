<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>找回密码</title>
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
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.11.1.js"></script>
</head>
<script type="text/javascript">

var value= "<%=request.getParameter("error") %>"
if(value=="c"){
	alert("验证码错误，请重新输入！！！")
}

	function aaa() {
		$("#span_phone").empty();
	}

	var InterValObj; //timer变量，控制时间
	var count = 60; //间隔函数，1秒执行
	var curCount;//当前剩余秒数

	function checkPhone() {
		var phone = $('#phone').val();
		var pattern = /^1[0-9]{10}$/;
		isPhone = 1;
		if (phone == '') {
			$('#span_phone').html("请输入手机号码");
			isPhone = 0;
			return;
		}
		if (!pattern.test(phone)) {
			$('#span_phone').html("请输入正确的手机号");
			isPhone = 0;
			return;
		}
	}

	function sendMessage() {
		curCount = count;
		//设置button效果，开始计时
		$("#btnSendCode").attr("disabled", "true");
		$("#btnSendCode").val(curCount + "秒可重发");
		InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次
		
		 var phone = $("#phone").val();
		
		//向后台发送处理数据
		$.ajax({
			url : "/MWShop/ForgetPW/Code", //目标地址
			data : "phone="+phone,
			type : "POST", //用post方式传输
			success : function(msg) {
			},
			error : function() {
			alert(334);
		}
		});
	}

	//timer处理函数
	function SetRemainTime() {
		if (curCount == 0) {
			window.clearInterval(InterValObj);//停止计时器
			$("#btnSendCode").removeAttr("disabled");//启用按钮
			$("#btnSendCode").val("重新发送验证码");
		} else {
			curCount--;
			$("#btnSendCode").val(curCount + "秒后可重发");
		}
	}

	/*检查手机号码 */
	function  checkPhones(){
        var phone = $("#phone").val();
		//向后台发送处理数据
		  $.ajax({
			url : "/MWShop/ForgetPW/checkPhones", //目标地址
			data : "phone="+phone,
			type : "post", //用POST方式传输
			success : function(msg) {
				if(msg.code==100){
					 
					}else{
				alert("不好意思！手机号不存在。");
				$("#phone").val("");      
			}
			},
			error : function() {
	
		}
		}); 
	}
	
</script>
<body>
	<!-- 顶部 -->
	<div class="login-top center"></div>

	<!-- 找回密码 -->
	<div class="login-body shadow center">

		<div class="clear center"
			style="width: 94%; height: auto; padding-top: 20px;">
			<span style="display: none">此DIV起增高作用！</span>
			<div class="find-title">
				<a href="#" id="current">绑定手机找回</a>

			</div>
		</div>
		<form action="/MWShop/ForgetPW/updatePossword"  method="post">
		<div class="login-enter zhuceInput center">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="2%" rowspan="4">&nbsp;</td>
					<td width="62%">
						<div>输入手机号码</div> <input type="text" class="login-input-text input-long  box-shadow" id="phone" name="phone" onblur="checkPhone()" onfocus="aaa()" onchange="checkPhones()"/> <span id="span_phone"
						style="color: red"></span>
					</td>
					<td width="5%" rowspan="4" style="border-left: 1px dotted #ccc">&nbsp;</td>
					<td width="31%" rowspan="4" valign="top">
						<div>
							<p>已有美唯电器城账号？</p>
							<p>
								<a href="login.jsp" class="btn-enter css3bg border-radius">
									现在登录 </a>
							</p>
						</div>
						<div
							style="border-top: 1px dotted #ccc; margin-top: 40px; padding-bottom: 30px; _padding-bottom: 10px; width: 80%"></div>
						<div>
							美唯电器城独有模式！让您不<br /> 花钱买到自己需要的物品！
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div>设置新密码</div> <input type="password" 
						class="login-input-text login-input-password input-long box-shadow"
						value="" name="password" />
					</td>
				</tr>

				<tr>
					<td>
						<div>输入验证码</div> <input type="text" id="code_text"
						class="login-input-text box-shadow validation fl" value="" name="code"
						style="width: 170px" /> <input id="btnSendCode" type="button"
						class="send border-radius fl" onclick="sendMessage()"
						value="免费获取验证码" />
					</td>
				</tr>

				<tr>
					<td>
						<p style="padding-top: 5px; _padding-top: 5px">
							<button class="login-input-submit fl" type="submit">确 认</button>
						</p>
					</td>
				</tr>
			</table>

		</div>
		</form>
		<div class="clear center" style="width: 94%; height: 50px;">
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
			联系电话：（86）0551-123456789<br /> 皖ICP备012344578号
		</p>
	</div>

</body>
</html>
