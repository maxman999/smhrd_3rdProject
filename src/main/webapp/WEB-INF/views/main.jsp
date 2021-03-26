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

<br>
<br>
<br>
<br>
<!-- Home Section -->
<section id="home">   <!-- section : 여러 중심 내용을 감싸는 공간 -->
     <div class="container">
          <div class="row">
               <div class="col-md-12 col-sm-12" data-aos="flip-down" data-aos-duration="1500">
                    <h2>그린벨트
                    <br>
                    <br> 
                       화초케어를 위한 딥러닝 기반 화초 질병진단 서비스 </h2>
                    <hr>
               </div>
          </div>
     </div>
</section>

  <div class="row">
   <button id="picture_upload_btn"><a href="upload.do"> 사진 업로드 </a></button>
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