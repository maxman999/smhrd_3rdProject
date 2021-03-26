<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>

</head>
<body>
	<div class="mypage content">
				<h3>마이페이지</h3>
			</div>

			<div>
				<form id="mypage" action="memberUpdate.do" method="post">
						<label for="id">아이디</label> 
						<input class="mypage" type="text" id="id" name="id" readonly value="${ info.id }"> 
						<br/>
						<br/>
						<label>비밀번호</label>
						<input class="mypage" type="password" id="pw" name="password" placeholder="${ info.password }" required/> 
						<br/>
						<br/>
						<label for="nickname">닉네임</label> 
						<input class="mypage" type="text" id="nick name" name="nickname" placeholder="${ info.nickname }" required/>  
						<br/>
						<br/>
						<label for="email">이메일</label> 
						<input class="mypage" type="email" id="email" name="email" placeholder="${ info.email }" required/>  
						<br/>
						<br/>
						<label for="phone">전화번호</label> 
						<input class="mypage" type="tel" id="phone" name="phone" placeholder="${ info.phone }" required/>  
						<br/>
						<br/>
						<label for="premium">회원권</label> 
						<input class="mypage" type="text" id="premium" name="premium" readonly value="${ info.premium }"  required/>  
						<br/>
						<br/>
					<div class="mypage">
						<button type="submit" class="mypage-cbtn">회원정보 변경</button>
					</div>
				</form>
			</div>
			
</body>
</html>