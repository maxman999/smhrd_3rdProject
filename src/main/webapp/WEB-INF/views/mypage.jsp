<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
</head>
<body>
	<div class="mypage content">
				<h3>마이페이지</h3>
			</div>
			<div>
				<form id="mypage" action="../update_mypage.do" method="post">
					<p>
						<label>아이디</label> 
						<input class="mypage" type="text" id="id" name="id" readonly value="${ member.id }"> 
					</p>
					<p>
						<label>비밀번호</label>
						<input class="mypage" id="old_pw" name="old_pw" type="password" required>
					</p>
					<p>
						<label>변경할 비밀번호</label> 
						<input class="mypage" id="pw" name="pw" type="password" required>
					</p>
					<p>
						<label>변경할 비밀번호 재입력</label>
						<input class="mypage" type="password" id="pw2" type="password" required>
					</p>
					<p>
						<label>닉네임</label> 
						<input class="mypage" type="text" id="nick name" name="nickname" value="${ member.nickname }" required> 
					</p>
					<p>
						<label>이메일</label> 
						<input class="mypage" type="text" id="email" name="email" value="${ member.email }" required> 
					</p>
					<p>
						<label>전화번호</label> 
						<input class="mypage" type="text" id="phone" name="phone" value="${ member.phone }" required> 
					</p>
					<p class="mypage">
						<button type="submit" class="mypage-cbtn">회원정보 변경</button>
					</p>
				</form>
			</div>
</body>
</html>