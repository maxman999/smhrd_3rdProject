<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join Page</title>
<link rel="stylesheet" href="resources/css/join.css">
</head>
<body>
	
	<div id="header">
		<div id="myNav" class="overlay">
			
			<div class="overlay-content">
				<%-- 로그인 창 구성 --%>
					
				<h2>회원가입</h2>    
				<div class="container">
				<div id="content">
				<!-- Content -->
					<form>
						<div class="form-group">
							<label for="id"> 아이디 *</label>  <!-- input 태그를 설명 -->
							<input placeholder="아이디를 입력해주세요" type="text"
							required class="form-control" name="id" />
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
						<div class="form-group">
							<label for="pw"> 비밀번호 재입력 *</label>
							<input placeholder="비밀번호를 재입력해주세요" type="password"
							required class="form-control" name="password" />
						</div>
						<br>
						<br>
						<br>
						<div>
							<label for="nick name"> 닉네임 *</label>
							<input placeholder="닉네임을 입력해주세요" type="text"
							required class="form-control" name="nickname" />
						</div>
						<br>
						<br>
						<br>
						<div>
							<label for="email"> 이메일 *</label>
							<input placeholder="이메일을 입력해주세요" type="email"
							required class="form-control" name="email" />
						</div>
						<br>
						<br>
						<br>
						<div>
							<label for="phone"> 전화번호 *</label>
							<input placeholder="전화번호를 입력해주세요" type="tel"
							required class="form-control" name="phone" />
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