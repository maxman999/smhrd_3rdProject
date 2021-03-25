<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
</head>

<%@ include file="header.jsp"%>
<body>

	<div class="mypage content">
				<h3>마이페이지</h3>
			</div>
			<div>
				<form id="mypage" action="../update_mypage.do" method="post">  <!-- form : 입력 양식 생성  action(입력 데이터 전달 위치)/method(입력 데이터의 전달 방식) -->
						<label for="id">아이디</label> 
						<input class="mypage" type="text" id="id" name="id" readonly value="${ member.id }"> 
						<br/>
						<br/>
						<label>비밀번호</label>
						<input class="mypage" type="password" id="old_pw" name="old_pw" required/> 
						<br/>
						<br/>
						<label>변경할 비밀번호</label> 
						<input class="mypage" type="password" id="pw" name="pw" required/> 
						<br/>
						<br/>
						<label>변경할 비밀번호 재입력</label>
						<input class="mypage" type="password" id="pw2" type="password" required/> 
						<br/>
						<br/>
						<label for="nickname">닉네임</label> 
						<input class="mypage" type="text" id="nick name" name="nickname" value="${ member.nickname }" required/>  
						<br/>
						<br/>
						<label for="email">이메일</label> 
						<input class="mypage" type="email" id="email" name="email" value="${ member.email }" required/>  
						<br/>
						<br/>
						<label for="phone">전화번호</label> 
						<input class="mypage" type="tel" id="phone" name="phone" value="${ member.phone }" required/>  
						<br/>
						<br/>
					<div class="mypage">
						<button type="submit" class="mypage-cbtn">회원정보 변경</button>
					</div>
				</form>
			</div>
</body>
</html>