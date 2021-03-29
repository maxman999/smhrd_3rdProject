<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ include file="header.jsp"%>
<body>
	<form id="join_form" method="post" action="/user2/V2Join.nhn?m=end">
    <div id="container" role="main">
        <div id="content">
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

                        <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
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
                   <input id="login_submit" type="submit" value="가입하기" class="btn btn-success btn-lg btn-block" />
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>