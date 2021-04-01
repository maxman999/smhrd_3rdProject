<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join Page</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">   <!-- link : 웹 페이지에 다른 파일을 추가 -->
<link rel="stylesheet" href="resources/css/font-awesome.min.css">

<link rel="stylesheet" href="resources/css/join.css">
<!-- Main css -->

<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<c:set var = "ctx" value = "${pageContext.request.contextPath}"/> 
</head>
<body>

<section id="home" class="target-section section">   <!-- section : 여러 중심 내용을 감싸는 공간 -->
     <div class="container" id="home_contents">
          <div class="row">
				<h2 id="join_title">회원가입</h2>    
				<div class="container">
				<div id="content">
				<!-- Content -->
					<form action="${ctx}/memberInsert.do" method="post" >
						<div class="form-group">
							<label for="id" class="join_label"> 아이디 </label>  <!-- input 태그를 설명 -->
							<input placeholder="아이디를 입력해주세요" type="text"
							required class="form-control" name="id" />
						</div>
						<br>
						<div class="form-group">
							<label for="pw" class="join_label"> 비밀번호 </label>
							<input placeholder="비밀번호를 입력해주세요" type="password"
							required class="form-control" name="password" />
						</div>
						<div class="form-group">
							<label for="pw" class="join_label"> 비밀번호 확인 </label>
							<input placeholder="비밀번호를 재입력해주세요" type="password"
							required class="form-control" name="password2" />
						</div>
						<br>
						<div class="form-group">
							<label for="nick name" class="join_label"> 닉네임 </label>
							<input placeholder="닉네임을 입력해주세요" type="text"
							required class="form-control" name="nickname" />
						</div>
						<br>
						<div class="form-group">
							<label for="email" class="join_label"> 이메일 </label>
							<input placeholder="이메일을 입력해주세요" type="email"
							required class="form-control" name="email" />
						</div>
						<br>
						<div class="form-group">
							<label for="phone" class="join_label"> 전화번호 </label>
							<input placeholder="전화번호를 입력해주세요" type="tel"
							required class="form-control" name="phone" />
						</div>
						<br>
						<div>
							<input id="join_submit" type="submit" value="가입하기"
							class="btn btn-success btn-lg btn-block" />
						</div>
						</form>
					  </div>
					</div>
				</div>
          </div>
</section>
  
<%@ include file="footer.jsp"%>
</body>
</html>