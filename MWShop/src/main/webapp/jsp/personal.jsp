<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户管理中心-编辑资料</title>
<link href="${pageContext.request.contextPath}/css/style.reset.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/css3style.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/font-color-size.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/css/table.select.style.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/top-style.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/index-body-style.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/user.css"
	rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/js/top-city-check.js"></script>
</head>

<body>
	<jsp:include page="/common/head.jsp"></jsp:include>
	<!--导航结束-->
	<div class="clear"></div>

	<!--位置-->
	<div class="user_here center">所在的位置：美唯电器城 > 编辑资料</div>
	<!--用户管理中心-->
	<div class="user_center center">
		<!--左侧-->
		<div class="user_left fl">
			<div class="user_head">
				<img src="${pageContext.request.contextPath}/img/user/user_head.gif" />
			</div>
			<div class="user_menu">
				<ul>
					<h2>
						<img src="${pageContext.request.contextPath}/img/user/menu01.jpg" /><span
							class="" style="display: none">订单查询</span>
					</h2>
					<li><a
						href="${pageContext.request.contextPath}/jsp/userorder.jsp">&gt;&gt;&nbsp;我的订单</a></li>
					<li><a href="yigou.jsp">&gt;&gt;&nbsp;已购商品</a></li>
					<li><a
						href="${pageContext.request.contextPath}/jsp/shoucang.jsp">&gt;&gt;&nbsp;我的收藏</a></li>
					<li><a href="pingjia.jsp">&gt;&gt;&nbsp;商品评价</a></li>
				</ul>
				<ul>
					<h2>
						<img src="${pageContext.request.contextPath}/img/user/menu02.jpg" /><span
							class="" style="display: none">自助服务</span>
					</h2>
					<li><a href="tousu.jsp">&gt;&gt;&nbsp;在线投诉</a></li>
					<li><a href="tuihuan.jsp">&gt;&gt;&nbsp;在线退换货物</a></li>
					<li><a href="bupiao.jsp">&gt;&gt;&nbsp;在线补开发票</a></li>
					<li><a href="chaxun.jsp">&gt;&gt;&nbsp;常见问题查询</a></li>
					<li><a href="bangzhu.jsp">&gt;&gt;&nbsp;帮助中心</a></li>
				</ul>
				<ul>
					<h2>
						<img src="${pageContext.request.contextPath}/img/user/menu03.jpg" /><span
							class="" style="display: none">账户信息</span>
					</h2>
					<li><a href="zhanghu.jsp">&gt;&gt;&nbsp;账户查询</a></li>
				</ul>
				<ul>
					<h2>
						<img src="${pageContext.request.contextPath}/img/user/menu04.jpg" /><span
							class="" style="display: none">个人信息</span>
					</h2>
					<li><a href="ziliao.jsp" id="current">&gt;&gt;&nbsp;编辑资料</a></li>
					<li><a href="anquan.jsp">&gt;&gt;&nbsp;安全中心</a></li>
					<li><a href="xiaoxi.jsp">&gt;&gt;&nbsp;消息提醒</a></li>
				</ul>
			</div>
		</div>
		<!--右侧-->
		<div class="user_right fr">
			<div class="user_dingdan">
				<p>编辑资料</p>
			</div>
			<div class="fapiao_table ziliao_table">
			<c:forEach items="${userlist }" var="userlist">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="80" align="right" class="color2">用户名</td>
						<td width="733"><strong>${userlist.username }</strong></td>
					</tr>
					<tr>
						<td width="80" class="color2" align="right">昵称</td>
						<td><input type="text" class="oto_text_one oto_text_two fl"
							name="name" value="${userlist.name }" /></td>
					</tr>
					<tr>
						<td width="80" align="right" class="color2"><span
							class="color4 size14">*</span> 邮箱</td>
						<td><input type="text" value="${userlist.email }" class="oto_text_one fl"
							name="email" /></td>
					</tr>
					<tr>
						<td width="80" align="right" class="color2"><span
							class="color4 size14">*</span> 手机</td>
						</td>
						<td><input type="text" class="oto_text_one fl"
							name="phone"  value="${userlist.phone }"/></td>
					</tr>
					<tr>
						<td width="80" align="right" class="color2"><span
							class="color4 size14">*</span> 性别</td>
						<td><label><input name="sex" type="radio" value="1"
								class="fl" style="margin: 4px; margin-left: 15px;" checked="checked"/> <span
								class="fl">男</span></label> <label><input name="sex" type="radio"
								value="2" class="fl" style="margin: 4px; margin-left: 15px;" />
								<span class="fl">女</span></label></td>
					</tr>
					
					<tr>
						<td width="80" align="right" class="color2">地址</td>
						<td><input type="text" class="oto_text_one fl"
							name="addr" value="${userlist.addr}" /></td>
					</tr>
					

					<tr>
						<td>&nbsp;</td>
						<td><button class="btn_baocun">保存修改</button></td>
					</tr>
				</table>
				</c:forEach>
			</div>
		</div>
	</div>



	<div class="clear" style="height: 30px"></div>

	<div class="footerLink">
		<div class="footerLink_ul center">
			<ul>
				<h2>关于美博</h2>
				<li><a href="oto-about.jsp">关于我们</a></li>
				<li><a href="oto-zxns.jsp">招贤纳士</a></li>
			</ul>
			<ul>
				<h2>购物指南</h2>
				<li><a href="oto-help.jsp#gwlc">购物流程</a></li>
				<li><a href="oto-help.jsp#hyjs">会员介绍</a></li>
				<li><a href="oto-help.jsp#cjwt">常见问题</a></li>
				<li><a href="oto-help.jsp#lxkf">联系客服</a></li>
			</ul>
			<ul>
				<h2>配送方式</h2>
				<li><a href="oto-help.jsp#smzt">上门自提</a></li>
				<li><a href="oto-help.jsp#xssd">限时送达</a></li>
				<li><a href="oto-help.jsp#psfwcx">配送服务查询</a></li>
			</ul>
			<ul>
				<h2>支付方式</h2>
				<li><a href="oto-help.jsp#hdfk">货到付款</a></li>
				<li><a href="oto-help.jsp#zxzf">在线支付</a></li>
				<li><a href="oto-help.jsp#xrfk">新人付款</a></li>
			</ul>
			<ul>
				<h2>新手上路</h2>
				<li><a href="oto-help.jsp#xszq">新手专区</a></li>
				<li><a href="oto-help.jsp#jyaq">交易安全</a></li>
				<li><a href="oto-help.jsp#xfjs">消费警示 </a></li>
				<li><a href="oto-help.jsp#xszc">新手注册</a></li>
				<li><a href="oto-help.jsp#xsxt">新手学堂</a></li>
				<li><a href="oto-help.jsp#ywbd">24小时有问必答</a></li>
			</ul>
			<ul>
				<h2>消费者保障</h2>
				<li><a href="oto-help.jsp#bzfw">保障范围</a></li>
				<li><a href="oto-help.jsp#thtklc">退货退款流程</a></li>
				<li><a href="oto-help.jsp#wyfqwq">我要发起维权</a></li>
				<li><a href="oto-help.jsp#gdtsfw">更多特色服务</a></li>
				<li><a href="oto-help.jsp#fwzx">服务中心</a></li>
			</ul>
		</div>
	</div>

	<div class="footer center">
		<p class="footer-nav">
			<a href="oto-about.jsp">关于我们</a> | <a href="oto-mztk.jsp">免责条款</a> |
			<a href="oto-yqlj.jsp">友情链接</a> | <a href="oto-lxwm.jsp">联系我们</a>
		</p>
		<p>
			Copyright©2009-2014 美唯电器城 All Rights Reserved<br /> 美唯电器城 广东广州市黄埔区
			联系电话：（86）0551-123456789<br /> 皖ICP备012344578号
		</p>
	</div>

</body>
</html>
