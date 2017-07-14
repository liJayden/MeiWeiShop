<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>美唯后台管理系统</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/instyle/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/instyle/css/htmleaf-demo.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/acss/style.css">
<script src="${pageContext.request.contextPath}/ajs/jquery.js"></script>
<script src="${pageContext.request.contextPath}/ajs/jquery.mCustomScrollbar.concat.min.js"></script>
	<style type="text/css">
		
		   
		    html, body {
		      width: 100%;
		      height: 100%;
		      overflow: hidden;
		    }

		    #background_video {
		      position: absolute;
			  z-index:-1;
		      top: 63%; left: 57%;
		      transform: translate(-50%, -50%);

		      object-fit: cover;
		      height: 70%; width: 85%;
		    }

		    #video_cover {
		      position: absolute;

		      width: 50%; height: 50%;

		      background: url('img/video_cover.jpg') no-repeat;
		      background-size: cover;
		      background-position: center;
		    }

		    #video_controls {
		      position: absolute;
		      left: 50%;
		      transform: translate(-50%, 0);
		    }

		    #play img {
		      width: 100px;
		    }
		    #pause img {
		      width: 90px;
		    }
		    #pause {
		      display: none;
		    }

		    @media (min-width: 50px) {
		      #video_controls {
		        display: none;
		      }
		    }

		    /* Demo page specific styles */

		    body {
		      text-align: center;
		      font-family: 'proxima-nova', Helvetica;
		    }

		    #container {
		      height: 100%;
		    }

		  

		    #main_content {
		      z-index: 2;
		      position: relative;
		      display: inline-block;

		      /* Vertical center */
		      top: 50%;left:7%;
		      transform: translateY(-50%);
		    }

		    #main_content h1 {
		      text-transform: uppercase;
		      font-weight: 600;
		      font-family: 'proxima-nova-condensed', Helvetica;
		      color: #fff;
		      font-size: 35px;
		    }

		    #main_content .sub_head {
		      color: rgba(255,255,255,0.5);
		      font-size: 18px;
		    }

		    #main_content .info {
		      color: rgba(255,255,255,0.5);
		      font-size: 12px;
		      margin-top: 10px;
		    }

		    #links {
		      margin-top: 50px;
		    }

		    #links a {
		      border: 2px solid rgba(255,255,255,0.20);
		      border-radius: 61px;
		      font-size: 12px;
		      color: #FFFFFF;
		      letter-spacing: 1px;
		      text-decoration: none;
		      text-transform: uppercase;
		      padding: 10px 25px;
		      display: inline-block;
		      margin-right: 15px;
		    }

		    #footer {
		      position: absolute;
		      bottom: 0; left: 0; right: 0;
		    }
		    #footer a {
		      color: rgba(255,255,255,0.5);
		      text-decoration: none;
		      margin: 10px;
		      font-size: 12px;
		    }
		    #footer a:first-child {
		      float: left;
		    }
		    #footer a:last-child {
		      float: right;
		    }
	</style>
</head>

<body>
 <div> 	<!--header-->
<header>
 <h1><img src="${pageContext.request.contextPath}/aimages/admin_logo.png"/></h1>
 <ul class="rt_nav">
  <li><a href="${pageContext.request.contextPath }/jsp/alogin.jsp" class="quit_icon">安全退出</a></li>
 </ul>
</header></div>

	<div id="container">
	    <video id="background_video" loop muted ></video>
	    <div id="video_cover"></div>
	    <div id="overlay" style="width: 70%;height:80%;  position: absolute;left:235px;top: 76px;"></div>
 
	    <div id="video_controls">
	      <span id="play">
	        <img src="play.png">
	      </span>
	      <span id="pause">
	        <img src="pause.png">
	      </span>
	    </div>

	    <section id="main_content">
	      <div id="head">
	        <h1>美唯后台管理系统</h1>
	        <p class="sub_head">MeiWei Manager System</p>
	      </div>
	    </section>
	  </div>
	
	<script src="${pageContext.request.contextPath}/instyle/bideo.js"></script>
  	<script type="text/javascript">
  	(function () {

  	  var bv = new Bideo();
  	  bv.init({
  	    // Video element
  	    videoEl: document.querySelector('#background_video'),

  	    // Container element
  	    container: document.querySelector('body'),

  	    // Resize
  	    resize: true,

  	    // autoplay: false,

  	    isMobile: window.matchMedia('(max-width: 768px)').matches,

  	    playButton: document.querySelector('#play'),
  	    pauseButton: document.querySelector('#pause'),

  	    // Array of objects containing the src and type
  	    // of different video formats to add
  	    src: [
  	      {
  	        src: '${pageContext.request.contextPath}/instyle/bg.mp4',
  	        type: 'video/mp4'
  	      },
  	      {
  	        src: '${pageContext.request.contextPath}/instyle/bg.webm',
  	        type: 'video/webm;codecs="vp8, vorbis"'
  	      }
  	    ],

  	    // What to do once video loads (initial frame)
  	    onLoad: function () {
  	      document.querySelector('#video_cover').style.display = 'none';
  	    }
  	  });
  	}());
  	
  	</script>

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
</body>
</html>