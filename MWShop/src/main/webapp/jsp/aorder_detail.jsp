<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8"/>
<title>后台管理系统</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/acss/style.css">
<!--[if lt IE 9]>
<script src="${pageContext.request.contextPath}/ajs/html5.js"></script>
<![endif]-->
<script src="${pageContext.request.contextPath}/ajs/jquery.js"></script>
<script src="${pageContext.request.contextPath}/ajs/jquery.mCustomScrollbar.concat.min.js"></script>
<script>

	(function($){
		$(window).load(function(){
			
			$("a[rel='load-content']").click(function(e){
				e.preventDefault();
				var url=$(this).attr("href");
				$.get(url,function(data){
					$(".content .mCSB_container").append(data); //load new content inside .mCSB_container
					//scroll-to appended content 
					$(".content").mCustomScrollbar("scrollTo","h2:last");
				});
			});
			
			$(".content").delegate("a[href='top']","click",function(e){
				e.preventDefault();
				$(".content").mCustomScrollbar("scrollTo",$(this).attr("href"));
			});
			
		});
	})(jQuery);
</script>
</head>
<!-- aorder_detail.jsp -->
<body>
<!--header-->
<header>
 <h1><img src="${pageContext.request.contextPath}/aimages/admin_logo.png"/></h1>
 <ul class="rt_nav">
  <li><a href="${pageContext.request.contextPath}/jsp/alogin.jsp" class="quit_icon">安全退出</a></li>
 </ul>
</header>
<!--aside nav-->
<!--aside nav-->
<aside class="lt_aside_nav content mCustomScrollbar">
 <h2><a href="${pageContext.request.contextPath}/jsp/aindex.jsp">起始页</a></h2>
 <ul>
 	
  <li>
   <dl>
    <dt>商品分类</dt>
    <!--当前链接则添加class:active-->
    <dd><a href="/MWShop/AController/showCategory">一级分类</a></dd>
    <dd><a href="/MWShop/AControllerSecond/selectAllCategroySecond">二级分类</a></dd>
   </dl>
  </li>
  
  <li>
   <dl>
    <dt>商品详情</dt>
    <!--当前链接则添加class:active-->
    <dd><a href="/MWShop/AProductController/selectAllProduct">商品列表</a></dd>
   </dl>
  </li>
  
  <li>
   <dl>
    <dt>订单信息</dt>
    <dd><a href="/MWShop/AOrderController/findOrder">订单列表</a></dd>
   </dl>
  </li>
 </ul>
</aside>
   <c:forEach items="${orderlist}" var="orderlist">
<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">订单详情</h2>
      </div>
      <table class="table">
   
       <tr>
        <td>收件人：${orderlist.name}</td>
        <td>联系电话：${orderlist.phone}</td>
        <td>收件地址：${orderlist.addr}</td>
       </tr>
       <tr>
        <td>订单编号：${orderlist.oid}</td>
        <td>下单时间：${orderlist.ordertime}</td>
        <td>订单总金额：${orderlist.total}</td>
       </tr>
       	<tr>
       	<td colspan="3"  >订单状态：
       	<c:if test="${orderlist.state eq 1 }">
       	<a>已下单，待付款</a>
        </c:if>
        <c:if test="${orderlist.state eq 2 }">
       	<a>已付款，待发货</a>
        </c:if>
        <c:if test="${orderlist.state eq 3 }">
       	<a>已发货，待收货</a>
        </c:if>
          <c:if test="${orderlist.state eq 4 }">
       	<a>已收货，交易完成</a>
        </c:if>
        </td>
       	</tr>
       
      </table>
      <br>
      <table class="table">
      <tr>
      <td>商品编号</td>
      <td>商品图片</td>
      <td>商品名称</td>
      <td>商品价格</td>
      <td>商品数量</td>
      <td>商品小计</td>
     
      </tr>
      <c:forEach items="${orderitemList}" var="orderitemList" varStatus="st">
      <c:forEach items="${ProductList}" var="ProductList"  varStatus="st2">
       <c:if test="${st.count==st2.count}">
       <tr>
       <td class="center">${ProductList.pid}</td>
        <td class="center"><img src="${pageContext.request.contextPath}/${ProductList.image}" width="50" height="50"/></td>
        <td style="font-size: 10">${ProductList.pname}</td>
        <td class="center"><strong class="rmb_icon">${ProductList.shopprice}</strong></td>
        <td class="center">${orderitemList.count }</td>
        <td class="center"><strong class="rmb_icon">${orderitemList.subtotal}</strong></td>
       </tr>
       <div style="position:absolute;bottom: 35px;left: 90%">
        <c:if test="${st2.first}">
        <c:if test="${orderlist.state eq 1 }">
       <a href="#"><input type="button" value="等待付款" class="group_btn"/></a>
        </c:if>
        <c:if test="${orderlist.state eq 2 }">
       <a href="/MWShop/AOrderController/updateOrderState?oid=${orderlist.oid}"><input type="button" value="发货" class="group_btn"/></a>
        </c:if>
        <c:if test="${orderlist.state eq 3 }">
       <a href="#"><input type="button" value="等待确认收货" class="group_btn"/></a>
        </c:if>
        <c:if test="${orderlist.state eq 4 }">
       <a href="#"><input type="button" value="订单完成" class="group_btn"/></a>
        </c:if>
        </c:if>
        </div>
       </c:if>
       </c:forEach>
       </c:forEach>
      </table>
 </div>
</section>
	</c:forEach>
</body>
</html>
