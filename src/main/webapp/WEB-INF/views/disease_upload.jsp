<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Picture Upload Page</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">   <!-- link : 웹 페이지에 다른 파일을 추가 -->
<link rel="stylesheet" href="resources/css/font-awesome.min.css">

<link rel="stylesheet" href="resources/css/upload.css">
<!-- Main css -->
<link rel="stylesheet" href="resources/css/style.css">

<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
</head>
<body onload="Confirming();">

<!-- === 로그인 안했을 시 로그인 페이지로 이동 === -->
<c:set var="info" value="${info }"/>
<c:if test="${info eq null}">
	<script type="text/javascript">
		alert("로그인을 해야 이용할 수 있는 서비스입니다.");
		location.href= "main.do";
	</script>	
</c:if>
<!-- ============================ -->

<section id="home" class="target-section section">   <!-- section : 여러 중심 내용을 감싸는 공간 -->
     <div class="container" id="home_contents">
	<h2 id="upload_title"><b>질병 진단</b></h2>
          <div class="row">
	<div class="field" align="center">
		<div class="image_box">
		<!-- 첨부파일(이미지파일만 업로드가능) -->
		<form id= "uploadForm" action="${ctx}/diseaseUpload.do" method="post" enctype="multipart/form-data">
		
		<input type="text" id="fileNm" readonly/>
		<a id="" href="javascript:fnUpload();"><img src="./resources/images/upload.png" alt="찾아보기" id="upload_image"/></a>
		<input type="file" id="fileUpload" style="display:none" name="uploadFile" accept="image/*" onchange="$('#fileNm').val(this.value)"/>
		</form>
		
		<!-- 이미지 미리보기 영역 --> 
		<div id="imgViewArea" style="margin-top:10px;"> 
			<img id="imgArea" style="width:400px; height:390px;" onerror="imgAreaError()"/> 
		</div>
		</div>
		<div>
		<input type="submit" id="btnUpload" value="진단">
		</div>
		<!-- <div id="noneDiv" style="background-color: #dff3d6;" ><p id="upload_eyes">&#128064;</p></div> -->
		<div>
			<img src="" id="ex_img" >
		<div class="info-box">
		<div><span class = disease-span ></span><span class = disease-span id = dinfo_0></span></div>
		<div>
			<span class = disease-span >점무늬병</span><span class = disease-span id = dinfo_1></span>
			<span class = disease-span >흰가루병</span><span class = disease-span id = dinfo_2></span>
			<span class = disease-span >정상</span><span class = disease-span id = dinfo_3></span>
		</div>
		</div>
		<button class="btn01" onclick="fn_spread('hiddenContent02');"><b>상세 보기</b></button> 
		<!--style="visibility: hidden;"-->
		<div id="hiddenContent02" class="example01" >
		<div class="image_box2">
			<div> 
			<table style="border-style: solid; position: relative; bottom: 3px; left: 5px;">
       			 <c:forEach var="i" begin="2" end="11">
        	   		 <tr>
           			 <td id = "info_title${i}"  style="border-style: solid; text-align: center; height: 50px; font-weight: 900"></td>
           			 <td id = "info${i}"  style="border-style: solid; height: 50px"></td>
           		 	 </tr>
				</c:forEach>
			</table>
  		</div>
			</div>
				</div>
			</div>
		<div class="upload_finalbtn">
			<button class="upload_lastbtn" id="home_lastbtn"><a href="main.do"> <b>홈으로</b> </a></button>
		</div>
	</div>
				</div>
          </div>
</section>

<!-- 식별 클릭시 div 숨기기 -->
<script>
	
</script>

<%--이미지 미리보기 --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<script type="text/javascript"> 
	function readURL(input) { 
		if (input.files && input.files[0]) { 
			var reader = new FileReader(); 
			reader.onload = function(e) { 
				$('#imgArea').attr('src', e.target.result); 
				} 
			reader.readAsDataURL(input.files[0]); } } 
			$(":input[name='uploadFile']").change(function() { 
				if( $(":input[name='uploadFile']").val() == '' ) { 
					$('#imgArea').attr('src' , ''); } 
				$('#imgViewArea').css({ 'display' : '' }); 
				readURL(this); }); // 이미지 에러 시 미리보기영역 미노출 
				function imgAreaError(){ 
					$('#imgViewArea').css({ 'display' : 'none' }); } 
</script>

<%-- 업로드이미지 --%>
<script>
	function fnUpload(){
	
		$('#fileUpload').click();
	
	}
</script>


<script>
<%-- onbeforeunload : 새로고침이나 브라우져를 닫았을 때, 실행되는 이벤트 --%>
		function Confirming() {
		    window.onbeforeunload = function (e) { 
                    return 0;
		    };
		}
</script>


<script type="text/javascript">
// 업로드 버튼 클릭 시 ajax통신으로 서버에 저장
$('#btnUpload').on('click', function(event) {
    event.preventDefault();
    
    var form = $('#uploadForm')[0]
    var data = new FormData(form);
    
    $('#btnUpload').prop('disabled', true);
   
    let getDisease = () => {
       return new Promise((resolve, reject) => {
    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url: "/myapp/diseaseCheck.do",
        data: data,
        processData: false,
        contentType: false,
        cache: false,
        timeout: 600000,
        success: function (data) {
           $('#btnUpload').prop('disabled', false);
           console.log('success');
           $(function(){
       		$('#btnUpload').click(function(){
       			if($("#noneDiv").css("display")!="none"){
       				$('#noneDiv').hide();
       			}
       		});
       	});
           resolve(data);
        },
        error: function (e) {
            $('#btnUpload').prop('disabled', false);
            alert('fail');
        }
    });
    });
    }
    
    const targetDisease = getDisease();
    targetDisease.then(dname => {
    	document.getElementById("dinfo_0").innerText = dname.diagnosis;
    	document.getElementById("dinfo_1").innerText = dname.leafSpot;
    	document.getElementById("dinfo_2").innerText = dname.powderyMildew;
    	document.getElementById("dinfo_3").innerText = dname.nomal;
     })
})
</script>
<%-- /식물 정보 받아오는 것 --%>

<script> 
	function fn_spread(id){ 
		var getID = document.getElementById(id); getID.style.display=(getID.style.display=='block') ? 'none' : 'block'; } 
</script>


<%@ include file="footer.jsp"%>
	
	
</body>
</html>