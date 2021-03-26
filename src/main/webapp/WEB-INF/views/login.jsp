<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var = "ctx" value = "${pageContext.request.contextPath}"/> 
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="resources/css/login.css">
</head>
	
	<div id="header">
		<div id="myNav" class="overlay">
			
				 <%-- 로그인창 닫는 아이콘 코드 --%>
				<%--<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a> --%>
				
				<div class="overlay-content">
					<%-- 로그인 창 구성 --%>
					
					<h2>로그인</h2>    
					<div class="container">
					<div id="content">
					<!-- Content -->
						<form action="${ctx}/memberRead.do" method="post">
						<div class="form-group">
							<label for="id"> 아이디 *</label>  <!-- input 태그를 설명 -->
							<input placeholder="아이디를 입력해주세요" type="text"
							 class="form-control" name="id" id="id" required />
						</div>
						<br>
						<br>
						<br>
						<div class="form-group">
							<label for="pw"> 비밀번호 *</label>
							<input placeholder="비밀번호를 입력해주세요" type="password"
							required class="form-control" name="password" />
						</div>
						<br>
						<br>
						<br>
						<div>
							<input id="login_submit" type="submit" value="확인"
							class="btn btn-success btn-lg btn-block" />
						</div>
						</form>
					  </div>
					</div>
				</div>
			</div>
	</div>
</body>
</html>