<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">
function to_index(){
	window.location.href="/MWShop/jsp/index.jsp";
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.js"></script>
<script type="text/javascript">
		function categorysend(cid){
			$("#categorysecondband").empty();
			$("#categorysecondband").show();
			$.ajax({  
		        type:"post",//请求方式  
		        url:"/MWShop/CategorysecondController/selectAllCategorySecond",//发送请求地址   
	            data:"cid="+cid,  //传参  
	            dataType:"json",
	            success:function(msg){ 
	            	$("#categorysecondband").empty();
	    			$("#categorysecondband").show();
	               for(i in msg){ 
	            	var csname=msg[i].csname;
	            	var csid=msg[i].csid;
	            	$("#categorysecondband").append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='/MWShop/ProductController/selectProductByCategoryID?csid="+csid+"'>"+csname+"</a><br/>");
					}	                    
	            },  
	            error:function(){ 
	            	alert(data);
	            }         
	       });
		}
</script>
<script type="text/javascript">
function categorysecondbandhied(){
	$("#categorysecondband").hide();
}
function categorysecondbandshow(){
	$("#categorysecondband").show();	
}
</script>
<script type="text/javascript">
 function showcategory(){
	 if($("#SNmenuNav").is(":hidden")){
			$("#SNmenuNav").show();
		 }
	 else{
			$("#SNmenuNav").hide();
		 }
	 }
</script>
<script type="text/javascript">
$(function(){
	//文本框keyup的时候发送ajax
	$("#key").keyup(function(){
		//获取文本框的值
		var $value=$(this).val();
		
		//内容为空的时候不发送ajax
		if($value!= null && $value!=''){
			//清空div
			$("#did").html("");
			
			$.post("/MWShop/ProductController/sreachPname","pname="+$value,function(d){
				//不为空的时候切割字符串
				if(d!=''){
					var arr=d.split(",");
					$(arr).each(function(){
						//alert(this);
						//可以将每一个值放入一个div 将其内部插入到id为did的div中
						$("#did").append($('<div>'+this+'</div>'));
						
					});
					//将div显示
					$("#did").show();
				}
			});
			
		}else{
			//内容为空的时候 将div隐藏 
			$("#did").hide();
		}
	});
})
</script>
</head>
<body>
<!-- 顶部 -->
	<div class="index-top-box">
		<div class="index-top center">
			<!--客户服务-->
			<div class="fr noneAny"><a href="${pageContext.request.contextPath}/jsp/help.jsp">客户服务</a></div>
			<!--我的订单-->
			<div class="fr noneAny"><a href="/MWShop/OrderController/myOrder">我的订单</a></div>
			<!--登录-->
			<c:if test="${not empty users}">
				<div class="fr noneAny"><a href="${pageContext.request.contextPath}/jsp/mycart.jsp">[我的购物车]</a></div>
				<div class="fr noneAny"><a href="/MWShop/ExitController/ExitMethod">[安全退出]</a></div>
				<div class="fr noneAny"><a href="/MWShop/MWController/personal?uid=${users.uid}">${users.username}</a></div>
			</c:if>
			<c:if test="${ empty users }">			
				<div class="fr noneAny"><a href="${pageContext.request.contextPath}/jsp/register.jsp">[免费注册]</a></div>
				<div class="fr noneAny"><a href="${pageContext.request.contextPath}/jsp/login.jsp">[登录]</a></div>
			</c:if>
			
			<!--亲，欢迎来！-->
			<div class="fr noneAny">亲，欢迎来美唯电器城！</div>
		</div>
	</div>
	<!-- 顶部结束-->
	<div class="clear"></div>
	<!-- logo开始-->
	<div class="logoBox center">
		<!--左侧logo-->
		<div class="logo fl" style="position: relative; bottom:25px;">
			<a href="/MWShop/jsp/index.jsp"><span class="fl">
			<img  onclick="to_index()"  src="${pageContext.request.contextPath}/img/login/mewelogo.PNG" />
			</span></a>
		</div>
		<!--右侧search-->
		<div >
			
			<!--搜索BOX-->
			<div class="searchinput fr">
				<!--搜索-->
				<form id="actionForm" action="/MWShop/SearchController/searchProduct" method="POST">
				<div class="S-bg">
					<input type="text" class="S-text fl"  value="${queryString }" style="color:#c4c4c4;height:30px"accesskey="s" id="key" autocomplete="off" onkeydown="javascript:if(event.keyCode==13) {query()}"/>
					<input type="submit" value="搜索" class="S-submit size14 f1" onclick="query()">
				</div>
				<div id="did"  style="border: 1px solid #e34b64;width: 395px;display:none;background-color: white;position:absolute;z-index: 1"></div> 
				<input type="hidden" name="csid" id="csid" value="${csid }"/> 
				<input type="hidden" name="shopprice" id="shopprice" value="${shopprice }"/> 
				<input type="hidden" name="page" id="page" value="${result.curPage }"/> 
				<input type="hidden" name="sort" id="sort" value="${sort }"/> 
				</form>
				
			</div>
			
		</div>
	</div>
	<!-- logo结束-->
	<div class="clear"></div>
	<!-- 导航开始-->
	<div>
		<div class="nav center">
			<!--商品分类-->
			<div class="classification fl">
				<div id="sp20" class="hd size14-b" onclick="showcategory()">商品分类</div>
			</div>
			<!--导航栏目-->
			<div class="bigNav fl">
				<ul>
					<li><a href="${pageContext.request.contextPath}/jsp/index.jsp">商城首页</a></li>
					<li><a href="${pageContext.request.contextPath}/jsp/brand.jsp">品牌专区</a></li>
					<li><a href="${pageContext.request.contextPath}/jsp/oto-about.jsp">关于我们</a></li>
				</ul>
			</div>
			<!--购物车-->
			<a href="${pageContext.request.contextPath}/jsp/mycart.jsp"><div class="shopping-cart fr size14">购物车 </div></a>
		</div>
	</div>
	<div class="center" style="width:1200px ; position:relative">
	<div class="navlist" id="SNmenuNav" style="display: none ">
				<!-- 二级分类显示div -->
				<div class="categorysecondband" id="categorysecondband" onmouseover="categorysecondbandshow()" onMouseout="categorysecondbandhied()" >
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='/MWShop/ProductController/selectProductByCategoryID?csid="${category.cid}'>${category.cname}</a><br/>
				</div>
				<c:forEach items="${categorys}" var="category" varStatus="status">	
				<dl>
					<dt class="iconcs" id="cid" value="${category.cid}" onmouseover="categorysend(${category.cid})"  ><a href="#" >${category.cname}</a></dt>
				</dl>
				</c:forEach>
			</div>
	</div>
</body>
</html>