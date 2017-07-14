<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="utf-8"/>
<title>后台管理系统</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/acss/style.css">
<!--框架引用  -->
<link href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

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
#aa:HOVER{
background-color: #19a97b;
color: white;
}

#aa{
background-color:white;
color:#19a97b;
}

#divs{
float: right;
}

.divs{
margin: 28px;
color:#19a97b;
}

#input{
height:38px; 
}

#aside{
margin-top:12px;
}

#h2{
margin-top:0px;
position: relative;
top:0px;
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
<aside class="lt_aside_nav content mCustomScrollbar" id="aside">
 <h2 id="h2"><a href="${pageContext.request.contextPath}/jsp/aindex.jsp" id="a">起始页</a></h2>
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
       <h2 class="fl"></h2>
       <a href="/MWShop/AController/showCategoryTOAdd" class="fr top_rt_btn add_icon">添加二级分类</a>
      </div>
      
      <!--搜索框提交  -->
       <form action="/MWShop/AControllerSecond/selectCategroyLike" method="post">
      <section class="mtb">
       <input type="text" class="textbox textbox_225" placeholder="输入二级分类名称" id="input" name="csname"/>
       <input type="submit" value="查询" class="group_btn"/>
      </section>
       </form>
       
      <table class="table">
       <tr>
        <th>编号</th>
        <th>商品名称</th>
        <th>操作</th>
       </tr>
       <c:forEach items="${pageInfo.list}" var="categoryseconds">
       <tr>
        <td class="center">${categoryseconds.csid}</td>
        <td>${categoryseconds.csname}</td>
        <td class="center">
		 <a href="${pageContext.request.contextPath}/AControllerSecond/loadCsid?csid=${categoryseconds.csid}" title="编辑" class="link_icon">&#101;</a>
        </td>
       </tr>
       </c:forEach>
      </table>
      
     
      <div>
			<div id="divs">
				<nav aria-label="Page navigation">
				<ul class="pagination">
					<li><a href="selectAllCategroySecond?pn=1" id="aa">首页</a></li>
					<c:if test="${pageInfo.hasPreviousPage}">
						<li><a href="selectAllCategroySecond?pn=${pageInfo.pageNum-1 }"
							aria-label="Previous" id="aa"> <span aria-hidden="true">&laquo;</span>
						</a></li>
					</c:if>

					<c:forEach var="pageNum" items="${pageInfo.navigatepageNums}">
						<c:if test="${pageNum==pageInfo.pageNum}">
							<li><a href="selectAllCategroySecond?pn=${pageNum}" id="aa">${pageNum}</a></li>
						</c:if>

						<c:if test="${pageNum!=pageInfo.pageNum}">
							<li><a href="selectAllCategroySecond?pn=${pageNum}" id="aa">${pageNum}</a></li>
						</c:if>

					</c:forEach>

					<c:if test="${pageInfo.hasNextPage}">
						<li><a href="selectAllCategroySecond?pn=${pageInfo.pageNum+1 }"
							aria-label="Next" id="aa"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</c:if>
					<li><a href="selectAllCategroySecond?pn=${pageInfo.pages}" id="aa">末页</a></li>
				</ul>
				</nav>
			</div>
		</div>
		
		<div id="divs" class="divs">当前是第${pageInfo.pageNum}页/${pageInfo.pages}页</div> 
	</div>
 </div>
</section>
</body>
</html>

