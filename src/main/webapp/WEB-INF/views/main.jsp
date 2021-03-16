<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<table class='table table-bordered'>
		<tr>
			<td>번호</td>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>나이</td>
			<td>전화번호</td>
			<td>이메일</td>
			<td>삭제</td>
		</tr>
		<c:forEach var="vo" items="${memberList}">
			<tr>
				<td>${vo.num}</td>
				<td><a href="">${vo.id}</a></td>
				<td>${vo.pass}</td>
				<td>${vo.name}</td>
				<td>${vo.age}</td>
				<td>${vo.phone}</td>
				<td>${vo.email}</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="8" align="right"><input type="button" value="회원가입"
				class="btn btn-primary" />
		</tr>
	</table>
</body>
</html>