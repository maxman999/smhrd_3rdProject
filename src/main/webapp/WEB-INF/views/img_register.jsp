<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Picture Register Page</title>
<link rel="stylesheet" href="resources/css/upload.css">
</head>
<body>
<section id="home" class="target-section section">   <!-- section : 여러 중심 내용을 감싸는 공간 -->
     <div class="container" id="home_contents">
          <div class="row">
				<div class="field" align="center">
      <div class="image_box">
      <!-- 첨부파일(이미지파일만 업로드가능) --> 
      <!-- <input type="file" id="u_file" name="u_file" accept="image/*">  -->
      <a><%= request.getAttribute("msg") %></a>
      <!-- 이미지 미리보기 영역 --> 
      <div id="imgViewArea" style="margin-top:10px;"> 
         <img id="imgArea" style="width:400px; height:300px;" onerror="imgAreaError()"/> 
      </div>
      </div>
      <br>
      <div class="image_box3">
         <p>애칭</p>
      </div>
      <br>
         <input type="submit" value="등록">
				</div>
          </div>
	</div>
</section>
  
<%@ include file="footer.jsp"%>
	
</body>
</html>