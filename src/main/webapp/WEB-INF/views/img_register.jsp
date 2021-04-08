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
<link rel="stylesheet" href="resources/css/bootstrap.min.css">   <!-- link : 웹 페이지에 다른 파일을 추가 -->
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/img_register.css">
<c:set var="ctx" value="${pageContext.request.contextPath}" />
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<body>
	<section id="home" class="target-section section">   <!-- section : 여러 중심 내용을 감싸는 공간 -->
     <div class="container" id="home_contents">
          <div class="row">
	<div class="field" align="center">'
	<h3 id="register_title">도감 등록</h3>
	<img src="./resources/images/sprout.png" id="register_img">
		<div class="image_box">
			<!-- 이미지 미리보기 영역 -->
			<div id="imgViewArea" style="margin-top: 10px;">
				<img src="./resources/images/${imgName }" id="imgArea"
					style="width: 430px; height: 340px; top: 200px; right: 300px;"
					onerror="imgAreaError()" />
				<%-- <h3><%= (String)session.getAttribute("imgName") %></h3> --%>
			</div>
		</div>

		<div class="image_box3">
			<form action="${ctx}/plantInsert.do" method="post"
				style="position: relative; left: 150px;">
				<table id="register_table">
					<label for="id" id="img_register_idlabel"></label>
					<input class="img_register" type="hidden" id="id" name="id"
						readonly value="${ info.id }">

					<tr id="table_tr_1">
						<td><label for="plantname" id="img_register_plantnamelabel">식물이름
								: </label></td>
						<td><input class="img_register" type="hidden" id="plantname"
							name="plantname" readonly value="${sessionScope.idntfName}">${sessionScope.idntfName}</td>
					</tr>
					<tr id="table_tr_2">
						<td><label for="regidate" id="img_register_regidatelabel">등록일자 : </label></td>
						
						<!-- 오늘 날짜 가져오기 -->
						<c:set var="now" value="<%=new java.util.Date()%>" />
						<c:set var="sysYear"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set>
						
						
						<td><input class="img_register" type="hidden" id="regidate"
							name="regidate" readonly value="${sysYear}"><c:out value="${sysYear}" /></td>
					</tr>
					<tr id="table_tr_3">
						<td><label for="picture" id="img_register_picturelabel">파 일 명 : </label></td>
						<td><input class="img_register" type="hidden" id="picture"
							name="picture" readonly value="${imgName}"> ${imgName}</td>
					</tr>
					<label for="sick" id="img_register_sicklabel"></label>
					<input class="img_register" type="hidden" id="sick" name="sick"
						readonly value="null">
					<tr id="table_tr_4">
						<td><label for="plantnick" id="img_register_plantnicklabel">애    칭 : </label>
						</td>
						<td><input class="img_register" type="text" id="plantnick"
							name="plantnick"></td>
					</tr>

					<%-- 	<p name="id" value="${info.id}">${info.id}</p>
				식물이름 : <p name="plantname" value="인도고무나무"> 식물이름1 </p>
				등록일자 : <p name ="regidate" >2021.04.01</p>
				사진 : <p name="picture" value="${imgName }"> ${imgName } </p>
				<p name="sick" value="null"> </p>
				애칭 : <input type="text" name="plantnick"> --%>

					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="확인" style="position: relative; top: 30px; right: 10px;" id="register_btn"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
				</div>
          </div>
</section>
  
<%@ include file="footer.jsp"%>
</body>
</html>