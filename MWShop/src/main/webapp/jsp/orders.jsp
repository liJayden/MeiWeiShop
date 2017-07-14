<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link href="${pageContext.request.contextPath}/css/user.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/top-style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	$("div[id^=showmethod]").trigger("click");
});
</script>
<script type="text/javascript">
function functionspi(oid){
	$("#showproductinfo").empty();
	$.ajax({  
        type:"post",//请求方式  
        url:"selectProductByOid",//发送请求地址   
        data:"oid="+oid,  //传参  
        success:function(msg){ 
           var json = eval("(" + msg.json + ")");
           $.each(json, function(index, item) {
				$("#showproductinfo").prepend(
						"<tr>"+
						"<td width='504' style='text-align: left;'><a href='#'"+
						"	target='_blank' style='float: left; margin: 0 10px;'><img alt='' src='${pageContext.request.contextPath}/"+item.image+"'"+
						"		width='50px' height='50px' style='border: 1px solid #dcdcdc'></a>"+
						"	<div class='p-detail'>"+
						"		<div class='p-name'>"+
						"			<a href='#' target='_blank'> "+item.pname+"</a>"+
						"		</div>"+
						"	</div></td>"+
						"<td width='114'"+
						"	style='position: relative; color: #e5274f'>￥"+item.shopprice+"</td>"+
						"<td width='300' style='position: relative; '>"+item.count+"</td>"+
						"<td width='150'"+
						"	style='position: relative; left: 7px; color: #e5274f''>￥"+item.subtotal+"</td>"+
						"</tr>"
				);
			});

        },  
        error:function(){ 
        	alert("error");
        }         
   });
}
</script>
</head>


<body onkeydown="KeyDown()" oncontextmenu="event.returnValue=false" >
	<!-- 顶部 -->
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
						href="${pageContext.request.contextPath}/jsp/shoucang.jsp">&gt;&gt;&nbsp;我的收藏</a>
					</li>
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
			<div class="dingdan_state">
				<div class="state_step_2 fl">
					<p class="step-lv_2">1</p>
					<p>1.我的购物车</p>
				</div>
				<div class="state_step_2 fl">
					<p class="step-lv">2</p>
					<p>2.填写核对订单信息</p>
				</div>
				<div class="state_step_hui_2 fl">
					<p class="step-hui">3</p>
					<p>3.成功提交订单</p>
				</div>
			</div>

			<div class="shopping_list_2">


				<div class="step-title" style="margin-top: 12px;">
					<a href="#" class="fr" style="margin-right: 10px;">返回修改购物车</a>
					<h1 style="color: black;">商品清单</h1>
				</div>

				<table width="100%" cellspacing="0" cellpadding="0"
					class="goumai_sp" style="text-align: center; margin-top: 10px;">

					<tr>
						<c:forEach items="${orderlist}" var="orderlist">
							<th width="50%" style="color: black;" align="left">订单编号：${orderlist.oid }</th>
						
						<th width="50%" style="color: black;">下单时间：${Ordertime}</th>
					</tr>


				</table>

				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					style="text-align: center; margin-top: 5px; padding-bottom: 5px;">
					<tr bgcolor="#dedede" >
						<td width="504" style="font-size: 20px">商品</td>
						<td width="114" style="font-size: 20px">价格</td>
						<td width="300" style="font-size: 20px">数量</td>
						<td width="150" style="font-size: 20px">小计</td>
					</tr>
				</table>
				<table width="100%" border="0" cellspacing="0" cellpadding="0" style="text-align:center; margin-top:5px; padding-bottom:5px;">
					<tr id="showproductinfo" >
					</tr>
				</table>
				<div id="showmethod" onclick="functionspi('${orderlist.oid}')"></div>
			</div>
			<div class="zongji">
				<p>
					<span class="fr">应付金额<span class="color4 size18">
							￥${orderlist.total}</span>元
					</span>

				</p>
			</div>
			<table width="100%" border="0" class="shopping_list_table"
				cellspacing="0" cellpadding="0">
				<tr>
					<td colspan="7" class="table_manu_2">
						<h1 style="text-align: left;">填写并核对订单信息</h1>
					</td>
				</tr>
				<tr class="goodsbg">
					<td colspan="7" valign="top">
						<div class="fuxuan_2">
							<strong>收货人信息</strong> <a href="/MWShop/MWController/personal?uid=${users.uid}">[修改]</a>
							<p>
								姓名：${orderlist.name}
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系方式：
								${orderlist.phone}&nbsp; &nbsp;<br /> 收货地址：${orderlist.addr}
							</p>

						</div>

					</td>
				
				</tr>
				<hr />


				<tr class="goodsbg">
					<td colspan="7" valign="top">

						<div class="fuxuan_2">
							<strong>支付及配送方式 </strong> <a href="#">[修改]</a>
							<p>
								在线支付&nbsp; &nbsp;<br /> 京东快递 中小件商品 <span style="color: #ff6000">工作日、双休日与假日均可送货</span>
							</p>

						</div>

					</td>

				</tr>

			</table>
			<form id="orderForm" action="/MWShop/OrderController/payOrder" method="post">
				<input type="hidden" name="oid" value="${orderlist.oid }"/>
				<p>
							<h1 style="color:black;margin-top: 30px" >选择银行：</h1><br/>
							<input type="radio" name="pd_FrpIds" value="ICBC-NET-B2C" checked="checked"/>工商银行
							<img src="${ pageContext.request.contextPath }/img/bank_img/icbc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="pd_FrpIds" value="BOC-NET-B2C"/>中国银行
							<img src="${ pageContext.request.contextPath }/img/bank_img/bc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="pd_FrpIds" value="ABC-NET-B2C"/>农业银行
							<img src="${ pageContext.request.contextPath }/img/bank_img/abc.bmp" align="middle"/>
							<br/>
							<br/>
							<input type="radio" name="pd_FrpIds" value="BOCO-NET-B2C"/>交通银行
							<img src="${ pageContext.request.contextPath }/img/bank_img/bcc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="pd_FrpIds" value="PINGANBANK-NET"/>平安银行
							<img src="${ pageContext.request.contextPath }/img/bank_img/pingan.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="pd_FrpIds" value="CCB-NET-B2C"/>建设银行
							<img src="${ pageContext.request.contextPath }/img/bank_img/ccb.bmp" align="middle"/>
							<br/>
							<br/>
							<input type="radio" name="pd_FrpIds" value="CEB-NET-B2C"/>光大银行
							<img src="${ pageContext.request.contextPath }/img/bank_img/guangda.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="pd_FrpIds" value="CMBCHINA-NET-B2C"/>招商银行
							<img src="${ pageContext.request.contextPath }/img/bank_img/cmb.bmp" align="middle"/>
						</p>
						<h1 style="color:black;margin-top: 30px" >支付宝支付：</h1><br/>
						<a href="/MWShop/OrderController/pay?oid=${orderlist.oid }"><img src="${ pageContext.request.contextPath }/img/bank_img/alipay.png"  /></a>
						<br/>
			<hr />
			<p style="text-align: right">
			</p>
			<div class="jiesuan" style="float: right;">
			</div>
			<div class="jiesuan">
				<a href="javascript:document.getElementById('orderForm').submit();"><button
						class="btn-js fr">去结算</button></a></p>
			</div>
			</form>
		</div>
	</div>
	</c:forEach>
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
<script language="Javascript">
function KeyDown(){ 

	if ( event.keyCode==116||(event.ctrlKey && event.keyCode==82)) //屏蔽 F5 刷新键
	{ 
	event.keyCode=0;
	event.returnValue=false;
	}
	} 
	

</script>
</body>

</html>