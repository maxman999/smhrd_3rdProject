<%@page import="smhrd.sbs.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>   
<head>

<meta charset="UTF-8" />  <!-- meta : 웹 페이지에 추가 정보를 전달 -->
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0" />

<title>Main Page</title>  <!-- title : 웹 페이지의 제목 -->

<link rel="stylesheet" href="resources/css/bootstrap.min.css">   <!-- link : 웹 페이지에 다른 파일을 추가 -->
<link rel="stylesheet" href="resources/css/font-awesome.min.css">

<!-- Main css -->
<link rel="stylesheet" href="resources/css/style.css">

<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

<link rel="stylesheet" href="resources/css/global.css">


<%-- 스크롤 등장 모션 --%>
    <style>
      .target-section {height: 884px; transition: background 0.5s;}
      .section1.active {background: #bcf9c361;;}
      .section2.active {background: #ffffff;}
      
      div#container_test {
    	width: 1500px;
    	height: 602px;
    	background-color: #ffffff;
    	position: relative;
    	left: 300px;
    	top: 150px;
    	z-index: 0;
	}	
    </style>
</head>

<body>
<!-- Home Section -->
<section id="home" class="target-section section">   <!-- section : 여러 중심 내용을 감싸는 공간 -->
     <div class="container" id="home_contents">
          <div class="row">
               <div class="col-md-12 col-sm-12" data-aos="flip-down" data-aos-duration="1500">
                    <h2 class="home_text">당신의 <b id="home_h">화초</b> 얼마나 건강한가요?</h2>
                    <br>
                    <h3>AI로 화초의 건강을 체크하세요.</h3>
               </div>
   					<button id="picture_upload_btn"><a href="${ctx}/upload.do"> 식물 식별 </a></button>
   					<button id="picture_sick_upload_btn"><a href="${ctx}/disease_upload.do"> 질병 진단 </a></button>
          </div>
     </div>
</section>
<div class="target-section ready section1" data-aos="fade-down" data-aos-easing="linear" data-aos-duration="1500">
<div id="target1"></div>  <!-- 메뉴클릭시 스크롤 이동 -->
    <div class="container" id="main_introduce">
        <div class="row">
            <div class="col-xs-12 col-md-12 section-container-spacer">
                <h2 class="text-center"><b>딥러닝으로 케어하는 화초 질병진단 서비스!</b></h2>
                <p class="main_introduce">Green belt는 딥러닝을 사용해 고객의 화초의 질병을 분석하고 알맞는 치료법을 알려드립니다.</p>
                <hr id="main_hr">
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-md-4">
                <div class="fa-container">
                   <i class="fa far fa-leaf fa-3x"></i>
                </div>
                <h3 class="text-center"><b>화초식별서비스</b></h3>
                <p >화초사진을 찍어올리면 어떤 식물인지 판별해줍니다.</p>
            </div>

            <div class="col-xs-12 col-md-4">
                <div class="fa-container">
                    <i class="fa fa-search-plus fa-3x" aria-hidden="true"></i>
                </div>
                <h3 class="text-center"><b>화초질병서비스</b></h3>
                <p style="text-align: center;">아픈 화초를 사진 찍어 올리면 어떤 질병인지 알려주고 방법을 알려줍니다.</p>
            </div>
            <div class="col-xs-12 col-md-4">
                <div class="fa-container">
                    <i class="fa fa-heart-o fa-3x" aria-hidden="true"></i>
                </div>
                <h3 class="text-center"><b>화초관리서비스</b></h3>
                <p style="text-align: center;"> 화초관리정보를 제공해줍니다.</p>
            </div>
        </div>
    </div>
</div>
  
    <div id="target2"></div>
    <section class="target-section ready section2">
    	<div class="container" id="plantDic">
		  <div class="col-md-12 col-sm-12">
			
	<div id="container_test">
		<div id="example">

		 <!-- 슬라이딩기능: 이미지 (type = 'th')를 순차적(javascript) 으로 노출 -->
		 <div>
			    <span id="main_image_span1">
			    <ul class="visual_img">
			    <c:set var="ck" value="${ck}"/>
			    <c:set var="info" value="${info}"/>
			    <c:if test="${info eq null}">	
			    	<!-- <div> -->
			    	 <h2 id="main_plant_title1">도감을 보려면 로그인 해주세요</h2> 
			    	<!-- </div> -->
			    	<!-- 로그인한 아이디로 plantVO 리스트 가져옴 -->
			    	<div>
			    </c:if>
			    <c:if test="${info ne null}">
			    	<form action="plantImgGetId.do" method="post" id="green_hide">
			    		<input type="hidden" name="loginId" value="${info.id}">
			    		<c:if test="${imgCheck eq null}">
			    			<input type="submit" value="나의 초록이 보기" id="main_plant_imageopen" >
			    		</c:if>
			    	</form>
			    </c:if>
			    </ul>
			    </span>
		</div>
		
		
			<div id="slides">
				<div class="slides_container">
				
					<c:set var="plist" value="${sessionScope.plist}"/>
			    	<c:forEach var="plist" items="${sessionScope.plist}" begin="0" varStatus="status">
			    		<%-- <p>${plist.picture}</p> --%>
			    		<div class="slide">
							<img id="frame" src="./resources/img/example-frame.png" alt="Example Frame" >
			    			<img class = "dictPicture" src="./resources/images/${plist.picture}">
			    			<!-- class="main_plant_image_list"  -->
			    			<div class="caption" style="bottom:0">
								<p>
									식물명 : ${plist.plantname} / 등록일자 : ${plist.regidate}
								</p>
							</div>
			    		</div>
			    	</c:forEach>
			    	<span class="nxt_fix" style="display:none;"></span>
				</div>
				<a href="#" class="prev"><img id = "prevImg" src="./resources/images/prepre.png" alt="Arrow Prev"></a>
				<a href="#" class="next"><img id = "nextImg" src="./resources/images/nextnext.png" alt="Arrow Next"></a>
				<!-- ./resources/img/arrow-next.png -->
			</div>
		</div>
	</div>
			    	
			  <span class="nxt_fix" style="display:none;"></span>
			  </span>
		</div>
		  </div>
    </section>
 
  
<%@ include file="footer.jsp"%>

<!-- SCRIPTS -->

<script src="resources/js/jquery.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/custom.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script>
AOS.init();
</script>

 <script>
	$("#main_plant_imageopen").click(function(){
		alert("클릭이벤트");
		; // h1태그 전부 제거
	});
</script> 

<!-- ================== 도감열람 UI 변경 ======================= -->
<script src="resources/js/slides.min.jquery.js"></script>
<script>
		$(function(){
			$('#slides').slides({
				preload: true,
				preloadImage: './resources/img/loading.gif',
				play: 5000,
				pause: 2500,
				hoverPause: true,
				animationStart: function(current){
					$('.caption').animate({
						bottom:-35
					},100);
					if (window.console && console.log) {
						// example return of current slide number
						console.log('animationStart on slide: ', current);
					};
				},
				animationComplete: function(current){
					$('.caption').animate({
						bottom:0
					},200);
					if (window.console && console.log) {
						// example return of current slide number
						console.log('animationComplete on slide: ', current);
					};
				},
				slidesLoaded: function() {
					$('.caption').animate({
						bottom:0
					},200);
				}
			});
		});
	</script>
<!-- ===================================================================== -->

 <script> <%-- 스크롤 등장 모션 --%>
      $(document).ready(function($) {
        $window = $(window);
 
        // 다음 섹션이 브라우저 하단으로부터 200px 만큼 보여질때
        var delayPosition = 200,
            // 현재 브라우저의 높이값
            windowheight; 
 
        // 브라우저의 크기가 변하면 대상 엘리먼트의 위치값을 다시 할당
        $window.on('resize', function() {
          insertTargetPosition();
        });
 
        // 스크롤이 이동할때
        $window.on('scroll', function() {
          // 현재의 위치 = 스크롤이 이동한 값 + 윈도우 높이 - 처음에 선언한 지연 위치값(200);
          var position = $window.scrollTop() + windowheight - delayPosition;
 
          // 아직 활성화되지 않은 타겟 엘리먼트를 순회하여
          $('.target-section.ready').each(function() {
            // 활성화되어 있지 않고 타겟의 위차값이 현재 위치값보다 작으면
            if(!$(this).hasClass('active') && $(this).data('offsetTop') < position) {
              // 활성화
              $(this).addClass('active');
              // 활성화 된 엘리먼트는 이후 타겟에서 제외
              $(this).removeClass('ready');
            }
          });
        });
 
        function insertTargetPosition() {
          windowheight = $window.height(); // 브라우저의 높이값 할당
          $('.target-section').each(function() { // 모든 대상 엘리먼트에
            $(this).data('offsetTop', ($(this).offset().top)); // 각자의 위치 값을 할당
          });
        }
 
        (function init() {
          // 최초 진입시 각 섹션의 위치값을 할당
          // 컨텐츠 중에 이미지 파일이 있거나 비동기로 가져오는 값이 있다면, 대상 요소들이 모두 불러진 후에
          // 각 섹션의 위치값을 다시 할당
          insertTargetPosition();
        })();
      });
    </script>
	<script type="text/javascript">
	
    function hide() {
	  alert("실행됨");
      document.getElementById("green_hide").style.display="none";
    }
    </script>
    <script type="text/javascript">
    $(window).ready(function(){
        if
    });
    </script>
</body>
</html>