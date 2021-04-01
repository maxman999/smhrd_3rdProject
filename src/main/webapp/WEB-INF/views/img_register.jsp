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
			<img src="./resources/images/${imgName }" id="imgArea" style="width:400px; height:300px;" onerror="imgAreaError()"/>
			<%-- <h3><%= (String)session.getAttribute("imgName") %></h3> --%>
		</div>
		</div>

		<div class="image_box3">
			<form action="${ctx}/plantInsert.do" method="post">
				<label for="id" id="img_register_idlabel"></label> 
				<input class="img_register" type="hidden" id="id" name="id" readonly value="${ info.id }"> 
				
				<label for="plantname" id="img_register_plantnamelabel">식물이름 : 플라스크에서 받아온 식물명</label> 
				<input class="img_register" type="hidden" id="plantname" name="plantname" readonly value="null"> 
				<br>
				<label for="regidate" id="img_register_regidatelabel">등록일자 : </label> 
				<input class="img_register" type="text" id="regidate" name="regidate" readonly value="2021.04.01">
				<br>
				<label for="picture" id="img_register_picturelabel">사진 : ${imgName}</label> 
				<input class="img_register" type="hidden" id="picture" name="picture" readonly value="${imgName}"> 
				<br>
				<label for="sick" id="img_register_sicklabel"></label> 
				<input class="img_register" type="hidden" id="sick" name="sick" readonly value="null">
				<br>
				<label for="plantnick" id="img_register_plantnicklabel">애칭</label> 
				<input class="img_register" type="text" id="plantnick" name="plantnick"> 
				<br>
						
			<%-- 	<p name="id" value="${info.id}">${info.id}</p>
				식물이름 : <p name="plantname" value="인도고무나무"> 식물이름1 </p>
				등록일자 : <p name ="regidate" >2021.04.01</p>
				사진 : <p name="picture" value="${imgName }"> ${imgName } </p>
				<p name="sick" value="null"> </p>
				애칭 : <input type="text" name="plantnick"> --%>
				
				<input type="submit" value="내 도감에 등록">
			</form>
		</div>
	</div>
		<br>
</body>
<%@ include file="footer.jsp"%>
</html>