<%@page import="smhrd.sbs.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Picture Register Page</title>
<link rel="stylesheet" href="resources/css/upload.css">
<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<c:set var = "ctx" value = "${pageContext.request.contextPath}"/> 
</head>
<body>
	<div class="field" align="center">
		<div class="image_box">
		<a>${imgName }</a>
		<!-- 이미지 미리보기 영역 --> 
		<div id="imgViewArea" style="margin-top:10px;"> 
			<img src="./resources/images/chi.jpg" id="imgArea" style="width:400px; height:300px;" onerror="imgAreaError()"/>
			<h3><%= (String)session.getAttribute("imgName") %></h3>
		</div>
		</div>
		<br>
		<div class="image_box3">
			<p>애칭</p>
			<form action="${ctx}/plantInsert.do" method="post">
				<input type="text" name="id" value="${info.id}">
				식물이름 : <input type="text" name="plantname" value="null">
				사진 : ${imgName }<input type="text" name="picture" value="${imgName }">
				병명 : <input type="text" name="sick" value="null">
				애칭 : <input type="text" name="plantnick" value="null">
				<input type="submit" value="내 도감에 등록">
			</form>
		</div>
	</div>
		<br>
</body>
<%@ include file="footer.jsp"%>
</html>