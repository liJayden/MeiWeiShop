<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户帮助中心</title>
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
<script src="${pageContext.request.contextPath}/js/top-city-check.js"></script>
<script src="${pageContext.request.contextPath}/js/miaov.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery-1.4.1.min.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var loaded = true;
		var top = $("#demo").offset().top;
		function Add_Data() {
			var scrolla = $(window).scrollTop();
			var cha = parseInt(top) - parseInt(scrolla);
			if (loaded && cha <= 0) {
				$("#demo").removeClass("demo2").addClass("demo1");
				loaded = false;
			}
			if (!loaded && cha > 0) {
				$("#demo").removeClass("demo1").addClass("demo2");
				loaded = true;
			}
		}
		$(window).scroll(Add_Data);
	});
</script>
<style>
.helpBox {
	width: 1200px;
	overflow: auto;
	margin-top: 10px;
}
/* 左侧 */
.help_left {
	width: 218px;
	height: auto;
	border: 1px solid #dedede;
	border-bottom: none
}

.help_left:hover {
	border: 1px solid #38a149;
}

.tc_nav {
	overflow: hidden;
}

.tc_nav li {
	width: 100%;
	line-height: 35px;
}

.tc_nav h2 {
	width: 100%;
	cursor: pointer;
	background: #f8f8f8;
	color: #999;
	border-bottom: 1px solid #dedede
}

.tc_nav h2 span {
	font-size: 12px;
	font-weight: bold;
	padding-left: 20px
}

.tc_nav h2:hover {
	background: #ebeaea
}

.tc_nav h2.active {
	background: #38a149;
	color: #fff
}

.tc_nav ul {
	width: 100%;
	height: auto;
	display: none;
	overflow: hidden;
}

.tc_nav ul li {
	width: 100%;
	border-bottom: 1px solid #dedede;
	font-family: "宋体";
}

.tc_nav ul li a {
	display: block;
	width: 100%;
	color: #999;
	text-indent: 20px;
}

.tc_nav ul li a:hover {
	color: #38a149;
	background: #f8f8f8
}

.tc_nav ul li:hover {
	
}

/* 右侧 */
.help_right {
	width: 968px;
	background: #fff;
	min-height: 496px;
	border: 1px solid #dedede;
}

.help_right .padding20 {
	padding: 0 20px 10px 20px
}

.help_right .gwlcBox {
	margin-top: 10px;
	margin-bottom: 10px
}

.help_right .gwlcBox .help_r_title {
	border-bottom: 1px dotted #dedede;
	line-height: 35px;
	margin-bottom: 5px
}

.demo {
	
}

.demo1 {
	position: fixed;
	_position: absolute;
	top: 0px;
	border: 1px solid #38a149
}

.demo2 {
	
}
</style>
</head>

<body>
	<jsp:include page="/common/head.jsp"></jsp:include>
	<!--导航结束-->
	<div class="clear"></div>

	<!--位置-->
	<div class="user_here center">所在的位置：购物指南 > 购物流程</div>

	<!--用户帮助中心-->
	<div class="helpBox center">
		<div class="help_left fl demo2" id="demo">
			<ul class="tc_nav" id="tc_nav">
				<li>
					<h2>
						<span>购物指南</span>
					</h2>
					<ul>
						<li><a href="#gwlc">购物流程</a></li>
						<li><a href="#hyjs">会员介绍</a></li>
						<li><a href="#cjwt">常见问题</a></li>
						<li><a href="#lxkf">联系客服</a></li>
					</ul>
				</li>
				<li>
					<h2>
						<span>配送方式</span>
					</h2>
					<ul>
						<li><a href="#smzt">上门自提</a></li>
						<li><a href="#xssd">限时送达</a></li>
						<li><a href="#psfwcx">配送服务查询</a></li>
					</ul>
				</li>
				<li>
					<h2>
						<span>支付方式</span>
					</h2>
					<ul>
						<li><a href="#hdfk">货到付款</a></li>
						<li><a href="#zxzf">在线支付</a></li>
						<li><a href="#xrfk">新人付款</a></li>
					</ul>
				</li>
				<li>
					<h2>
						<span>新手上路</span>
					</h2>
					<ul>
						<li><a href="#xszq">新手专区</a></li>
						<li><a href="#jyaq">交易安全</a></li>
						<li><a href="#xfjs">消费警示 </a></li>
						<li><a href="#xszc">新手注册</a></li>
						<li><a href="#xsxt">新手学堂</a></li>
						<li><a href="#ywbd">24小时有问必答</a></li>
					</ul>
				</li>
				<li>
					<h2>
						<span>消费者保障</span>
					</h2>
					<ul>
						<li><a href="#bzfw">保障范围</a></li>
						<li><a href="#thtklc">退货退款流程</a></li>
						<li><a href="#wyfqwq">我要发起维权</a></li>
						<li><a href="#gdtsfw">更多特色服务</a></li>
						<li><a href="#fwzx">服务中心</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div class="help_right fr">
			<div class="padding20">

				<div class="gwlcBox">
					<span id="#gwlc" name="#gwlc"></span>
					<p class="color3 size14-b help_r_title">购物流程</p>
					<p>1.输入你要想购买的产品，点击搜索 2.可以根据分类，最新商品，价格等等来选择自己欣怡的商品
						3.看中哪个产品就点进去，选择商品型号，数量点击付款 4.确认你的订单信息，点击提交 5.在网页顶部已买到的宝贝中查看等待付款商品
						6.可以选择直接支付，也已选择网上银行</p>
				</div>
				<div class="gwlcBox">
					<span id="#cjwt" name="#cjwt"></span>
					<p class="color3 size14-b help_r_title">消费者保障服务</p>
					<p>
						消费者保障服务是指卖家签署了淘宝网消费者保障服务协议，承诺为消费者提供交易保障服务。买家在淘宝网使用支付宝担保交易服务购买宝贝时，如果遇到收到货物存在质量问题或者网上描述不符或者付款后未收到货物的情况，如果卖家未履行承诺，买家可以根据本页面及淘宝规则规定发起维权，经判定维权成功的，淘宝网将扣划卖家保证金进行违约赔付，以保障买家权益。
					</p>
				</div>

				<div class="gwlcBox">
					<span id="#lxkf" name="#lxkf"></span>
					<p class="color3 size14-b help_r_title">快捷支付</p>
					<p>什么是快捷支付？<br> 快捷支付（含卡通）是一种安全、便捷的支付方式，对您的银行卡信息和身份信息进行校验，校验成功后即可开通。
						开通成功后，输入支付密码即可轻松完成付款。</p>
					<p>快捷支付小秘籍<br> 1、快捷支付支持哪些银行？ 快捷支付可支持上百家银行的储蓄卡及信用卡。 详细内容可点击更多查询。<br>
						2、快捷支付这么方便，安全吗？
						安全！支付宝采用业界最先进的加密技术及风险实时监控系统，每一笔交易都将进行加密并受到监控，一旦有风险，系统会主动拦截，且配备专家小组进行风险稽查及处置，确保资金和信息的安全。
					
					</p>
				</div>

			</div>
		</div>
	</div>


	<div class="clear" style="height: 30px"></div>


	<!--底部导航-->

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
