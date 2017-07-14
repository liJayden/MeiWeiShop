<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">订单列表</h2>
     
      </div>
      <form action="/MWShop/AOrderController/findOrderByState" method="post">
      <section class="mtb">
       <select class="select" name="state">
        <option value="1">订单状态</option>
        <option value="1">未付款</option>
        <option value="2">未发货</option>
        <option value="3">未确认收货</option>
        <option value="4">已确认收货</option>
       </select>
       <input type="submit" value="查询" class="group_btn"/>
      </section>
      </form>
      <table class="table">
       <tr>
        <th>订单编号</th>
        <th>收货人</th>
        <th>联系电话</th>
        <th>收货人地址</th>
        <th>订单金额</th>
        <th>下单时间</th>
        <th>操作</th>
       </tr>
       <c:forEach items="${orderList}" var="orderList">
       <tr>
        <td style="word-wrap:break-word;word-break:break-all;" >${orderList.oid}</td>
        <td class="center">${orderList.name}</td>
        <td class="center">${orderList.phone}</td>
        <td>
         <address>${orderList.addr}</address>
        </td>
        <td class="center"><strong class="rmb_icon">${orderList.total}</strong></td>
        <td class="center">${orderList.ordertime}</td>
        <td class="center">
         <a href="/MWShop/AOrderController/findOrderByOid?oid=${orderList.oid}" title="查看订单" class="link_icon" target="_blank">&#118;</a>
         
        </td>
       </tr>
      </c:forEach>
      </table>
     <!--  <aside class="paging">
       <a>第一页</a>
       <a>1</a>
       <a>2</a>
       <a>3</a>
       <a>…</a>
       <a>10</a>
       <a>最后一页</a>
      </aside> -->
 </div>
</section>
</body>
</html>
