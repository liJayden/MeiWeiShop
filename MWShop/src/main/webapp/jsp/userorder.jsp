<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.11.1.js"></script>
<script src="js/top-city-check.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("div[id^=tagdiv]").trigger("click");
	});
</script>

<script type="text/javascript">
/* 	function fun1(oid) {
		$("#tagdiv").empty;
		$
				.ajax({
					type : "post",//请求方式  
					url : "selectProductByOid",//发送请求地址   
					data : "oid=" + oid, //传参  
					success : function(msg) {
						var json = eval("(" + msg.json + ")");
						$
								.each(
										json,
										function(index, item) {
											$("#tagdiv" + oid)
													.prepend(
															"<table id='tagtable' width='100%' border='0' cellspacing='0' cellpadding='0' style=' border:1px solid #ededed;'>"
																	+ "	<tr>"
																	+ "<td height='50%' align='left' valign='middle' width='40%'  >"
																	+ "<img src='${pageContext.request.contextPath}/"+item.image+"' class='fl' style='margin-left:10px;' width='100px' height='50px' />"
																	+ "<span>"
																	+ item.pname
																	+ "</span></td>"
																	+ "<td width='8%' height='100' align='center'>￥  "
																	+ item.shopprice
																	+ " </td>"
																	+ "<td width='15%' align='center'> "
																	+ item.count
																	+ " </td>"
																	+ "<td height='90' align='center'>￥  "
																	+ item.subtotal
																	+ "</td>"
																	+ "<td height='100' colspan='2' align='center'><a href='#'>评价</a></td>"
																	+ " 	</tr>"
																	+ "</table>");
										});

					},
					error : function() {
						alert("error");
					}
				});
	} */
</script>

</head>

<body>
	<jsp:include page="/common/head.jsp"></jsp:include>
	<!--导航结束-->
	<div class="clear"></div>

	<!--位置-->
	<div class="user_here center">所在的位置：美唯电器城 > 我的订单</div>
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
						href="${pageContext.request.contextPath}/jsp/userorder.jsp"
						id="current">&gt;&gt;&nbsp;我的订单</a></li>
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
					<li><a href="ziliao.jsp">&gt;&gt;&nbsp;编辑资料</a></li>
					<li><a href="anquan.jsp">&gt;&gt;&nbsp;安全中心</a></li>
					<li><a href="xiaoxi.jsp">&gt;&gt;&nbsp;消息提醒</a></li>
				</ul>
			</div>
		</div>
		<!--右侧-->
		<div class="user_right fr">
			<div class="user_dingdan">
				<span class="fr"><a href="#">订单回收站</a></span>
				<p>我的订单</p>
			</div>




			<div class="dingdan_huisou">
				<div class="dingdan_huisou_top">
					<a href="#">所有订单</a> <!-- <a href="#">待付款<span style="color: red;">(0)</span></a>
					<a href="#">待收获<span style="color: red;">(0)</span></a> <a href="#">待评价<span
						style="color: red;">(0)</span></a> -->
				</div>


				<c:choose>
					<%-- 如果没有车，或车的内容集合为0长 --%>
					<c:when
						test="${empty OrderitemList && empty OrderList && empty product}">
						<div style="margin: 0 auto;" align="center">
							<h1 style="position: relative; top: 160px; color: black;">
								你还没有订单哦，快去购物吧！
								</h2>
						</div>
					</c:when>
					<c:otherwise>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td height="35%" align="center" bgcolor="#f7f7f7">宝贝</td>
								<td width="13%" height="40" align="center" bgcolor="#f7f7f7">单价(元)</td>
								<td width="18%" height="40" align="center" bgcolor="#f7f7f7">数量</td>
								<td width="20%" height="40" align="center" bgcolor="#f7f7f7">小计(元)</td>
								<td width="15%" height="40" align="center" bgcolor="#f7f7f7">交易操作</td>
							</tr>
							<tr>
						</table>
						<div class="jiesuan">

							<div class="page" align="right">
								<a href="#">上一页</a> <a href="#">下一页 </a>
							</div>
						</div>
						<c:forEach items="${OrderList}" var="OrderList">
							<table width="100%" border="0" cellspacing="0" cellpadding="0"
								style="border: 1px solid #ededed;">

								<tr>
									<td width="60%" height="30" align="left" bgcolor="#f7f7f7">&nbsp;&nbsp;&nbsp;<input
										name="" type="checkbox" value="" /><strong><fmt:formatDate
												pattern="yyyy-MM-dd" value="${OrderList.ordertime}" />
											&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;订单号：${OrderList.oid }
									</td>
									<td height="7%" colspan="2" align="center" bgcolor="#f7f7f7"><a
										target="_blank" title="wu675251964" href="#">${OrderList.name}</a></td>
									<td width="20%" height="30" align="center" bgcolor="#f7f7f7"
										style="color: red">总金额：￥${OrderList.total}</td>
									<td bgcolor="#f7f7f7"><c:if
											test="${OrderList.state eq 1 }">
											<a style="color: #2a66ff"
												href="/MWShop/OrderController/loadOrder?oid=${OrderList.oid}">付款</a>
										</c:if> <c:if test="${OrderList.state eq 2 }">
											<a href="#">等待发货</a>
										</c:if> <c:if test="${OrderList.state eq 3 }">
											<a
												href="/MWShop/OrderController/updateOrderState?oid=${OrderList.oid}">确认收货</a>
										</c:if> <c:if test="${OrderList.state eq 4 }">
     										 交易完成
        								</c:if></td>
									<td height="25%" colspan="2" align="center" bgcolor="#f7f7f7"><a
										href="/MWShop/OrderController/deleteOrders?oid=${OrderList.oid }"
										title="永久删除"><img
											src="${pageContext.request.contextPath}/img/user/huisou.png" />
									</a></td>
								</tr>
								
						<c:forEach items="${OrderitemLists }" var="OrderitemLists" varStatus="oist">
						<c:forEach items="${productList}" var="productList" varStatus="pst">
							<c:if test="${OrderList.oid==OrderitemLists.oid }">
							<c:if test="${oist.count==pst.count}">
							<c:if test="${OrderitemLists.pid==productList.pid}">
							<table id='tagtable' width='100%' border='0' cellspacing='0'
								cellpadding='0' style='border: 1px solid #ededed;'>
								<tr>
									<td height='50%' align='left' valign='middle' width='40%'>
										<img src='${pageContext.request.contextPath}/${productList.image}' class='fl'
										style='margin-left: 10px;' width='100px' height='50px' /> <span>${productList.pname}</span>
									</td>
									<td width='8%' height='100' align='center'>￥
										${productList.shopprice}</td>
									<td width='15%' align='center'>${OrderitemLists.count}</td>
									<td height='90' align='center'>￥ ${OrderitemLists.subtotal}</td>
									<td height='100' colspan='2' align='center'><a href='#'>评价</a></td>
								</tr>
							</table>
							</c:if>
							</c:if>
							</c:if>
						</c:forEach>
						</c:forEach>

							</table>
							<!-- --------------------------------------------------------------------------------- -->

							<%-- <div id="tagdiv${OrderList.oid}" onclick="fun1('${OrderList.oid}')">
		</div> --%>

						</c:forEach>
						
						<div class="jiesuan">

							<div class="page" align="right">
								<a href="#">首页</a> <a href="#"> 1 </a> <a href="#"> 2 </a> <a
									href="#"> 3 </a> <a href="#"> ... </a> <a href="#"> 10 </a> <a
									href="#">尾页</a>
							</div>

						</div>
					</c:otherwise>
				</c:choose>
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
