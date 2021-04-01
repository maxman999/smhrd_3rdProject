<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<c:set var="ctx" value ="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
<link rel="stylesheet" href="resources/css/mypage.css">
</head>
<body>
	<section id="home" class="target-section section">   <!-- section : 여러 중심 내용을 감싸는 공간 -->
     <div class="container" id="home_contents">
          <div class="row">
		<div class="mypage content">
				<h3>마이페이지</h3>
			

			<div>
				<form id="mypage" action="memberUpdate.do" method="post">
						<label for="id" id="mypage_idlabel">아이디</label> 
						<input class="mypage" type="text" id="id" name="id" readonly value="${ info.id }"> 
						<br/>
						<br/>
						<br/>
						<label>비밀번호*</label>
						<input class="mypage" type="password" id="pw" name="password" placeholder="${ info.password }" required/> 
						<br/>
						<br/>
						<br/>
						<label for="nickname">닉네임</label> 
						<input class="mypage" type="text" id="nick name" name="nickname" placeholder="${ info.nickname }" required/>  
						<br/>
						<br/>
						<br/>
						<label for="email">이메일</label> 
						<input class="mypage" type="email" id="email" name="email" placeholder="${ info.email }" required/>  
						<br/>
						<br/>
						<br/>
						<label for="phone">전화번호</label> 
						<input class="mypage" type="tel" id="phone" name="phone" placeholder="${ info.phone }" required/>  
						<br/>
						<br/>
						<br/>
						<!--  
						<label for="premium">회원권</label> 
						<input class="mypage" type="text" id="premium" name="premium" readonly value="${ info.premium }"  required/>
						-->
						<p>회원권 : 
							<c:set var="info" value="${info}"/>
							<c:choose>
								<c:when test="${info.premium eq 0}">
									무료회원
								</c:when>
								<c:otherwise>
									유료회원
								</c:otherwise>
							</c:choose>
						</p>  
						<br/>
						<br/>
						<br/>
					<div class="mypage">
						<button type="submit" class="mypage_submit">회원정보 변경</button>
						<button onclick = "location.href = '${ctx}/memberDelete.do?id=${info.id}'" class="mypage_submit" id="joinx">탈퇴</button>
				
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