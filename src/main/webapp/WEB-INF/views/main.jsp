<%@page import="smhrd.sbs.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>   
<head>

<meta charset="UTF-8" />  <!-- meta : 웹 페이지에 추가 정보를 전달 -->
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

<title>Main Page</title>  <!-- title : 웹 페이지의 제목 -->

<link rel="stylesheet" href="resources/css/bootstrap.min.css">	<!-- link : 웹 페이지에 다른 파일을 추가 -->
<link rel="stylesheet" href="resources/css/font-awesome.min.css">

<!-- Main css -->
<link rel="stylesheet" href="resources/css/style.css">

<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">
</head>
<body>

<!-- Navigation section  -->
<!-- 기본 공간 분할 태그 -> div : block 형식으로 공간을 분할(줄바꿈됨) / span : inline 형식으로 공간 분할(줄바꿈x) -->
<div class="navbar navbar-default navbar-fixed-top" role="navigation"> <!-- navbar-static-top는 상단에 고정 --> 
     <div class="container">
          <div class="navbar-header">
               <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
               </button>
               <a href="main.do" class="navbar-brand"><i class="fa fa-magnet"></i></a>
          </div>
          <div class="collapse navbar-collapse">
               <ul class="nav navbar-nav navbar-right">
                
               
               <c:set var ="login" value ="${info}" />
               <c:choose>
               	<c:when test = "${not empty login}">
            	 	로그인!!@!$!$!@!@
            	 	   
            	 <li class="active"><a href="main.do">홈</a></li>
                    <li><a href="about.html">서비스 소개</a></li>
                    <li><a href="community.do">커뮤니티</a></li>
                    <li><a href="mypage.do">마이페이지</a></li>
                    <li><a href="main.do">로그아웃</a></li>
                    <li><a>
            	</ul>
            	</c:when>
            	<c:otherwise>
            	    XXXX로그인XXXX
            	    <li class="active"><a href="main.do">홈</a></li>
                    <li><a href="about.html">서비스 소개</a></li>
                    <li><a href="blog.html">커뮤니티</a></li>
           				 <!-- login/Register-btn -->
                     	<a href="login.do" class="loginbu">로그인</a>
            			<a href="join.do">/ 회원가입</a>
            	</ul>
            	</c:otherwise>
               </c:choose>               
                  

            	</div>
			</div>
		</div>
<br>
<br>
<br>
<br>
<!-- Home Section -->
<section id="home">   <!-- section : 여러 중심 내용을 감싸는 공간 -->
     <div class="container">
          <div class="row">
               <div class="col-md-12 col-sm-12">
                    <h2>The creative web & mobile studio. 
                    <br>
                    <br> 
                    we are young designers and focused on brand identity, web development and social marketing.</h2>
                    <hr>
               </div>
          </div>
     </div>
</section>

  <div class="row">
	<button id="picture_upload_btn"><a href="upload.do"> 사진 업로드 </a></button>
  </div>
  
<!-- Footer Section -->
<footer>
     <div class="container">
          <div class="row">

               <div class="col-md-3">
                    <i class="fa fa-magnet"></i>
               </div>

               <div class="col-md-4 col-sm-4">
                    <p>124 Market Street, Suite 3570 San Francisco, CA 3042 United States</p>
               </div>

               <div class="col-md-offset-1 col-md-4 col-sm-offset-1 col-sm-3">
                    <p><a href="mailto:youremail@gmail.com">hello@yourstudio.co</a></p>
                    <p>(+01) 2048937 / 02 203403</p>
               </div>

               <div class="clearfix col-md-12 col-sm-12">
                    <hr>
               </div>

               <div class="col-md-6 col-sm-6">
                    <div class="footer-copyright">
                         <p>© 2016 Magnet Studio | All Rights Reserved.</p>
                    </div>
               </div>

               <div class="col-md-6 col-sm-6">
                    <ul class="social-icon">
                         <li><a href="#" class="fa fa-facebook"></a></li>
                         <li><a href="#" class="fa fa-twitter"></a></li>
                         <li><a href="#" class="fa fa-linkedin"></a></li>
                    </ul>
               </div>
               
          </div>
     </div>
</footer>


<!-- SCRIPTS -->

<script src="resources/js/jquery.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/custom.js"></script>
<script>
		function openNav() {
			document.getElementById("myNav").style.width = "100%";
		}

		function closeNav() {
			document.getElementById("myNav").style.width = "0%";
		}
		$(document).ready(function() {
			myCheck();
		});
</script>

</body>
</html>



