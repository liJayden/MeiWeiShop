<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<style type="text/css">
#input{
height:38px; 
}
</style>
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
  <form action="/MWShop/AController/addCategory" method="post">
      <div class="page_title">
       <h2 class="fl"></h2>
         <input type="text" name="cname" class="textbox textbox_225" placeholder="输入分类名称。。" id="input" style="float: right;"/>
       <input type="submit" value="添加" class="group_btn" style="float: right;"/>
      </div>
      </form>
      <form action="/MWShop/AController/findCategoryByName" method="post">
      <section class="mtb">
       <input type="text" class="textbox textbox_225" placeholder="输入分类名称。。" name="cname" id="input"/>
       <input type="submit" value="查询" class="group_btn"/>
      </section>
      </form>
      <table class="table">
       <tr>
        <th>编号</th>
        <th>商品名称</th>
        <th>操作</th>
       </tr>
       <c:forEach items="${categroys}" var="categroys">
       <tr>
        <td class="center">${categroys.cid}</td>
        <td>${categroys.cname}</td>
        <td class="center">
		 <a href="/MWShop/AController/loadCid?cid=${categroys.cid}" title="编辑" class="link_icon">&#101;</a>
        </td>
       </tr>
       </c:forEach>
      </table>
 </div>
</section>
</body>
</html>
