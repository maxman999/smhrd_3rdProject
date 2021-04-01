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

<section id="home" class="target-section section">   <!-- section : 여러 중심 내용을 감싸는 공간 -->
     <div class="container" id="home_contents">
	<h2 id="upload_title"><b>식별이랑 정보</b></h2>
          <div class="row">
	<div class="field" align="center">
		<div class="image_box">
		<!-- 첨부파일(이미지파일만 업로드가능) -->
		<form id= "uploadForm" action="${ctx}/fileUpload.do" method="post" enctype="multipart/form-data">
		
		<input type="text" id="fileNm" readonly/>
		<a id="" href="javascript:fnUpload();"><img src="./resources/images/upload.png" alt="찾아보기" id="upload_image"/></a>
		<input type="file" id="fileUpload" style="display:none" name="uploadFile" accept="image/*" onchange="$('#fileNm').val(this.value)"/>
		</form>
		
		<!-- 이미지 미리보기 영역 --> 
		<div id="imgViewArea" style="margin-top:10px;"> 
			<img id="imgArea" style="width:400px; height:300px;" onerror="imgAreaError()"/> 
		</div>
		</div>
		<div>
		<input type="submit" id="btnUpload" value="식별">
		</div>
		
		
		<button class="btn01" onclick="fn_spread('hiddenContent02');"><b>정보 보기</b></button> 
		<div id="hiddenContent02" class="example01" style="visibility: fix;">
		<div class="image_box2">
			<div> 
			<ul class="info_list">
				<li id = "info1"></li>
				<li id = "info2"></li>
				<li id = "info3"></li>
				<li id = "info4"></li>
			</ul>
    </div>
		</div>
		</div>
		<div class="upload_finalbtn">
			<button class="upload_lastbtn"><a href="main.do"> <b>홈으로</b> </a></button>
			<button class="upload_lastbtn"><a href="img_register.do"> <b>등록</b> </a></button>
		</div>
	</div>
				</div>
          </div>
</section>
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
<%-- /이미지 미리보기 --%>

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

<%--식물 정보 받아오는 것 --%>
<script>
	let getInfo = url => {
        return new Promise((resolve, reject) => {
            const xhr = new XMLHttpRequest();
            xhr.open('GET', url);
            xhr.setRequestHeader('Content-Type', 'application/xml');
            xhr.getResponseHeader('Access-Control-Allow-Methods: POST, GET, OPTIONS');
            xhr.send();
            xhr.onload = () => {
                if (xhr.status === 200) {
                    let xstring = xhr.response;
                    var parser = new DOMParser();
                    var xmlDoc = parser.parseFromString(xstring, "text/xml");
                    resolve(xmlDoc);
                } else {
                    console.error('Error', xhr.status, xhr.statusText);
                }
            };
        });
    }
	
</script>
<script type="text/javascript">
// 업로드 버튼 클릭 시 ajax통신으로 서버에 저장
$('#btnUpload').on('click', function(event) {
    event.preventDefault();
    
    var form = $('#uploadForm')[0]
    var data = new FormData(form);
    
    $('#btnUpload').prop('disabled', true);
   
    
    let getName = () => {
       return new Promise((resolve, reject) => {
    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url: "/myapp/fileUpload.do",
        data: data,
        processData: false,
        contentType: false,
        cache: false,
        timeout: 600000,
        success: function (data) {
           $('#btnUpload').prop('disabled', false);
           alert('success');
           console.log(data.result);
           resolve(data.result);
        },
        error: function (e) {
            $('#btnUpload').prop('disabled', false);
            alert('fail');
        }
    });
    });
    }
    
    let getInfo = url => {
        return new Promise((resolve, reject) => {
            const xhr = new XMLHttpRequest();
            xhr.open('GET', url);
            xhr.setRequestHeader('Content-Type', 'application/xml');
            xhr.getResponseHeader('Access-Control-Allow-Methods: POST, GET, OPTIONS');
            xhr.send();
            xhr.onload = () => {
                if (xhr.status === 200) {
                    let xstring = xhr.response;
                    var parser = new DOMParser();
                    var xmlDoc = parser.parseFromString(xstring, "text/xml");
                    resolve(xmlDoc);
                } else {
                    console.error('Error', xhr.status, xhr.statusText);
                }
            };
        });
    }
   
    const targetNum = getName();
    targetNum.then(pname => {
       const result = getInfo('http://api.nongsaro.go.kr/service/garden/gardenDtl?apiKey=20210325ZSIOCEZBQCK8HV5TOYGQUQ&cntntsNo='+pname);
      result.then(pdata => {
         document.getElementById("info1").innerText = pdata.getElementsByTagName('adviseInfo')[0].innerHTML;
            document.getElementById("info2").innerText = pdata.getElementsByTagName('frtlzrInfo')[0].innerHTML;
            document.getElementById("info3").innerText = pdata.getElementsByTagName('speclmanageInfo')[0].innerHTML;
            document.getElementById("info4").innerText = pdata.getElementsByTagName('fncltyInfo')[0].innerHTML;
      })
    })
    
})
</script>
<%-- /식물 정보 받아오는 것 --%>

<script> function fn_spread(id){ var getID = document.getElementById(id); getID.style.display=(getID.style.display=='block') ? 'none' : 'block'; } </script>


<%@ include file="footer.jsp"%>
	
	
</body>
</html>