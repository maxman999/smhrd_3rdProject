<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8" />
<!-- meta : 웹 페이지에 추가 정보를 전달 -->
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />

<title>3차 프로젝트</title>

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">

<!-- Main css -->
<link rel="stylesheet" href="resources/css/style.css">
<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700"
	rel="stylesheet">

</head>
<body>

	<!-- Navigation section  -->
	<!-- 기본 공간 분할 태그 -> div : block 형식으로 공간을 분할(줄바꿈됨) / span : inline 형식으로 공간 분할(줄바꿈x) -->
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
		<!-- navbar-static-top는 상단에 고정 -->
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon icon-bar"></span> <span class="icon icon-bar"></span>
					<span class="icon icon-bar"></span>
				</button>
				<a href="main.do" class="navbar-brand"><i class="fa fa-magnet"></i></a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<c:set var="login" value="${sessionScope.info}" />
					<c:choose>
						<c:when test="${not empty login}">
							<%-- 로그인o --%>
							<li class="active"><a href="main.do">홈</a></li>
							<li><a href="about.html">서비스 소개</a></li>
							<li><a href="community.do">커뮤니티</a></li>
							<li><a href="mypage.do">마이페이지</a></li>
							<li><a href="logout.do">로그아웃</a></li>
							<li>
						</c:when>
						<c:otherwise>
							<%--로그인x --%>
							<li class="active"><a href="main.do">홈</a></li>
							<li><a href="about.html">서비스 소개</a></li>
							<li><a href="blog.html">커뮤니티</a></li>
							<!-- login/Register-btn -->
							<a href="login.do" class="loginbu">로그인</a>
							<a href="join.do">/ 회원가입</a>

						</c:otherwise>
					</c:choose>
				</ul>

			</div>
		</div>
	</div>
</body>
</html>