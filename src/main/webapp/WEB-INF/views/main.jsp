<%@page import="smhrd.sbs.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>

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

<link rel="stylesheet" href="resources/css/bootstrap.min.css">   <!-- link : 웹 페이지에 다른 파일을 추가 -->
<link rel="stylesheet" href="resources/css/font-awesome.min.css">

<!-- Main css -->
<link rel="stylesheet" href="resources/css/style.css">

<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

</head>
<body>
<!-- Home Section -->
<section id="home">   <!-- section : 여러 중심 내용을 감싸는 공간 -->
     <div class="container" id="home_contents">
          <div class="row">
               <div class="col-md-12 col-sm-12" data-aos="flip-down" data-aos-duration="1500">
                    <h2 class="home_text">당신의 <b>화초</b>가 병들었나요?</h2>
                    <br>
                    <h3>화초가 무슨 병에 걸렸는지 확인하세요.</h3>
               </div>
   					<button id="picture_upload_btn"><a href="upload.do"> 사진 업로드 </a></button>
          </div>
     </div>
</section>
 <div class="container" id="home_contents2">
  <div class="row">
  	<div>
    	<h2 class="main_introduce">딥러닝으로 케어하는 화초 질병진단 서비스!</h2>
    	<p class="main_introduce">Green belt는 딥러닝을 사용해 고객의 화초의 질병을 분석하고 알맞는 치료법을 알려드립니다!</p>
    </div>
  </div>
  </div>
<%@ include file="footer.jsp"%>

<!-- SCRIPTS -->

<script src="resources/js/jquery.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/custom.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script>
AOS.init();
</script>

</body>
</html>