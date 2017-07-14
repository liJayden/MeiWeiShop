<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户管理中心-我的订单</title>
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
<script
	src="oto.${pageContext.request.contextPath}/js/top-city-check.js"></script>
</head>

<body>
	<jsp:include page="/common/head.jsp"></jsp:include>
	<!--导航结束-->
	<div class="clear"></div>

	<!--位置-->
	<div class="user_here center">所在的位置：美唯电器城 > 购物车</div>
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
					<li><a href="${pageContext.request.contextPath}/jsp/mycart.jsp" id="current">&gt;&gt;&nbsp;我的购物车</a></li>
					<li><a href="yigou.jsp">&gt;&gt;&nbsp;已购商品</a></li>
					<li><a href="${pageContext.request.contextPath}/jsp/shoucang.jsp">&gt;&gt;&nbsp;我的收藏</a></li>
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
					<li><a href="ziliao.jsp">&gt;&gt;&nbsp;编辑资料</a></li>
					<li><a href="anquan.jsp">&gt;&gt;&nbsp;安全中心</a></li>
					<li><a href="xiaoxi.jsp">&gt;&gt;&nbsp;消息提醒</a></li>
				</ul>
			</div>
		</div>
		<!--右侧-->
		<div class="user_right fr">
			<div class="user_dingdan">
				<span class="fr"><a
					href="<c:url value='/CartController/clearCart'/>">清空购物车</a></span>
				<p>我的购物车</p>
			</div>
				<c:choose>
				<%-- 如果没有车，或车的内容集合为0长 --%>
				<c:when
					test="${empty sessionScope.cart or fn:length(sessionScope.cart.cartItems) eq 0}">
					<div style="margin: 0 auto;" align="center">
						<img src="<c:url value='/img/other/cart.png'/>" width="150" style="position: relative;top: 160px"/>
						<h2 style="position: relative;top: 160px;color: black;">您的购物车是空的。</h2>
					</div>
				</c:when>
				<c:otherwise>
			<div class="dingdan_state">
				<div class="state_step fl">
					<p class="step-lv">1</p>
					<p>1.我的购物车</p>
				</div>
				<div class="state_step_hui fl">
					<p class="step-hui">2</p>
					<p>2.填写核对订单信息</p>
				</div>
				<div class="state_step_hui fl">
					<p class="step-hui">3</p>
					<p>3.成功提交订单</p>
				</div>
			</div>
					<div class="shopping_list">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td class="table_manu" width="40">全选</td>
								<td class="table_manu">商品</td>
								<td class="table_manu" width="100">价格</td>
								<td class="table_manu" width="100">数量</td>
								<td class="table_manu" width="100">小计</td>
								<td class="table_manu" width="100"><select
									class="oto_select">
										<option value="安徽">安徽</option>
										<option value="北京">北京</option>
										<option value="上海">上海</option>
										<option value="江苏">江苏</option>
								</select></td>
								<td class="table_manu" width="100">操作</td>
							</tr>
							<c:forEach items="${sessionScope.cart.cartItems}" var="cartItem">
								<tr class="goodsbg">
									<td valign="top"><div class="fuxuan">
											<input type="checkbox" name="checkbox" value="checkbox" />
										</div></td>
									<td>
										<div class="goods">
											<img
												src="${pageContext.request.contextPath}/${cartItem.product.image }"
												class="fl" /> <a href="#">${cartItem.product.pname }</a>
										</div>
									</td>
									<td><p class="jiage" style="color: red">￥${cartItem.product.shopprice }</p></td>
									<td><p class="jiage">${cartItem.count }</p></td>
									<td><p class="jiage" style="color: red">￥${cartItem.subtotal }</p></td>
									<td>有货</td>
									<td><div class="caozuo">
											<p>
												<a href="<c:url value='/CartController/deleteCartItem?pid=${cartItem.product.pid }'/>">删除</a>
											</p></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				
			<div class="zongji">
				<p>
					<span class="fr">已选商品<span class="color4 size18"> 0 </span>件&nbsp;&nbsp;
						合计(不含运费)：&nbsp;&nbsp;<span class="color4 size18">¥${sessionScope.cart.total }</span></span>

				</p>
			</div>
			<div class="jiesuan">
				<a href="${pageContext.request.contextPath}/jsp/index.jsp"><button class="btn-jx fl">继续购物</button></a> <a
					href="<c:url value='/OrderController/addOrder'/>"><button class="btn-js fr">提交订单</button></a>
			</div>
			</c:otherwise>
			</c:choose>
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
