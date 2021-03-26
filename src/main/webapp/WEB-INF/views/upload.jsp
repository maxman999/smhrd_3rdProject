<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Picture Upload Page</title>
<link rel="stylesheet" href="resources/css/upload.css">
</head>
	<%@ include file="header.jsp"%>
<body onload="Confirming();">

	<div class="field" align="center">
		<div class="image_box">
		<!-- 첨부파일(이미지파일만 업로드가능) --> 
		<input type="file" id="u_file" name="u_file" accept="image/*"> 
		
		<!-- 이미지 미리보기 영역 --> 
		<div id="imgViewArea" style="margin-top:10px;"> 
			<img id="imgArea" style="width:400px; height:300px;" onerror="imgAreaError()"/> 
		</div>
		</div>
		<br>
		<span>
			<label><input type="checkbox" name="use" value="use" >질병 진단 사용 여부 선택</label>
			<input type="submit" value="업로드">
		</span>
		<br>
		<br>
		<div class="image_box2">
			<p>결과창</p>
		</div>
		<br>
		<div>
			<button><a href="main.do"> 홈으로 </a></button>
			<button><a href="img_register.do"> 등록 </a></button>
		</div>
	</div>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript"> 
	function readURL(input) { 
		if (input.files && input.files[0]) { 
			var reader = new FileReader(); 
			reader.onload = function(e) { 
				$('#imgArea').attr('src', e.target.result); 
				} 
			reader.readAsDataURL(input.files[0]); } } 
			$(":input[name='u_file']").change(function() { 
				if( $(":input[name='u_file']").val() == '' ) { 
					$('#imgArea').attr('src' , ''); } 
				$('#imgViewArea').css({ 'display' : '' }); 
				readURL(this); }); // 이미지 에러 시 미리보기영역 미노출 
				function imgAreaError(){ 
					$('#imgViewArea').css({ 'display' : 'none' }); } 
</script>

<script>
<%-- onbeforeunload : 새로고침이나 브라우져를 닫았을 때, 실행되는 이벤트 --%>
		function Confirming() {
		    window.onbeforeunload = function (e) { 
                    return 0;
		    };
		}
</script>
	
</body>
</html>