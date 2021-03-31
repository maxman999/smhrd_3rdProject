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
<<<<<<< HEAD
<!-- Main css -->
<link rel="stylesheet" href="resources/css/style.css">

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
	
	
=======
<link rel="stylesheet" href="resources/css/bootstrap.min.css">   <!-- link : 웹 페이지에 다른 파일을 추가 -->
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<!-- Main css -->
<link rel="stylesheet" href="resources/css/style.css">

<c:set var = "ctx" value = "${pageContext.request.contextPath}"/> 
</head>
<body>
	
	<div id="header">
		<div id="myNav" class="overlay">
			<div class="overlay-content">
            <h2 class="blind">회원가입</h2>
            <div class="join_content">
                <div class="row_group">
                    <div class="join_row">
                        <h3 class="join_title"><label for="id">아이디</label></h3>
                        <span class="ps_box int_id">
							<input type="text" id="id" name="id" maxlength="20" placeholder="아이디를 입력해주세요">
                            <span class="step_url"></span></span>
                        <span class="error_next_box" id="idMsg" style="display:none" aria-live="assertive"></span>
                    </div>

                    <div class="join_row">
                        <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                        <span class="ps_box int_pass" id="pswd1Img">
							<input type="password" id="password" name="password" maxlength="20" placeholder="비밀번호를 입력해주세요">
                            <span class="lbl"><span id="pswd1Span" class="step_txt"></span></span>
						</span>

                        <h3 class="join_title"><label for="pswd2">비밀번호 확인</label></h3>
                        <span class="ps_box int_pass_check" id="pswd2Img">
							<input type="password" id="pswd2" name="pswd2" maxlength="20" placeholder="비밀번호를 재입력해주세요">
						</span>
                    </div>
                </div>

                <div class="row_group">
                    <div class="join_row">
                        <h3 class="join_title"><label for="name">닉네임</label></h3>
                        <span class="ps_box box_right_space">
							<input type="text" id="nickname" name="nickname" maxlength="40">
						</span>
                    </div>

                    <div class="join_row join_phone">
                        <h3 class="join_title"><label for="yy">전화번호</label></h3>
                        <div class="bir_wrap">
                            <div class="phone_num">
								<span class="ps_box">
									<select id="mm" class="sel" aria-label="휴대폰번호">
										<option value="">선택</option>
										  	 			<option value="01">
                                                            010
                                                        </option>
										  	 			<option value="02">
                                                            011
                                                        </option>
										  	 			<option value="03">
                                                            070
                                                        </option>
										  	 			<option value="04">
                                                            017
                                                        </option>
										  	 	
									</select>
									<input type="text" id="phone" name="phone" class="phone" maxlength="8">
								</span>
                            </div>
                        </div>
                        <span class="error_next_box" id="birthdayMsg" style="display:none" aria-live="assertive"></span>
                    </div>

                    <div class="join_row join_email">
                        <h3 class="join_title"><label for="email">이메일</label></h3>
                        <span class="ps_box int_email box_right_space">
							<input type="text" id="email" name="email" placeholder="이메일을 입력해주세요" maxlength="100">
						</span>
                    </div>
                </div>
                <div class="btn_area">
                   <input id="join_submit" type="submit" value="가입하기" class="btn_join" />
                </div>
            </div>
				</div>
			</div>
		</div>
<%@ include file="footer.jsp"%>		
>>>>>>> e7e70dc5e3f698403b0a9eea0a2dbcc7eb25ef8a
</body>
</html>