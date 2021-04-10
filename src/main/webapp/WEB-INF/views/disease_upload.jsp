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

<link rel="stylesheet" href="resources/css/disease_upload.css">

<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

 <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
 <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
 <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>


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
      <div style="height: 366px;">
      <div class="info-box" id="info_box_css">
      <table style=" position: relative; bottom: 30px;">
      <tr>
		<td><img src="" id="ex_img" ></td>
      <td class="disease_td2">
      <!-- 차트 -->
      <div id="graph"></div>
      </td>
      </tr>
      </table>
      </div>
      <button class="btn01-d" onclick="fn_spread('hiddenContent02');" id="btn_dtail"><b>상세 보기</b></button> 
      <!--style="visibility: hidden;"-->
      <div id="hiddenContent02" class="example01" >
      <div class="image_box2" id="image_box2_1">
         <table style="border-style: solid;position: absolute;bottom: 4px;border-top: hidden;">
                 <c:forEach var="i" begin="0" end="2">
                     <tr>
                     <td id = "info_title${i}"  style="border-style: solid; text-align: center; height: 50px; font-weight: 900"></td>
                     <td id = "info${i}"  style="border-style: solid; height: 50px"></td>
                      </tr>
            </c:forEach>
         </table>
        </div>
            </div>
           	<div id="autoKeyword">
		<div id="noneDiv" style="background-color: #dff3d6;" ><p id="upload_eyes">&#128064; <p id="upload_take">식물 전체가 나올 수 있도록 찍어주세요</p></p></div>
			</div>
         </div>
      <div class="upload_finalbtn">
         <button class="upload_lastbtn" id="home_lastbtn"><a href="main.do"> <b>홈으로</b> </a></button>
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

<%-- 업로드이미지 --%>
<script>
   function fnUpload(){
   
      $('#fileUpload').click();
      $('.ment').hide();
   }
</script>

<script>
   if($("").css("display") == "none"){
       $("#dis").show();
   } else {
       $("#dis").hide();
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
    loadingStart();
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
       
    	// 데이터 받아오고 도넛차트 생성
        Morris.Donut({
        element: 'graph',
        data: [
          {value: Number(dname.leafSpot), label: "점무늬병", formatted: dname.leafSpot, color:'#2e8700' },
          {value: Number(dname.powderyMildew), label: "흰가루병", formatted: dname.powderyMildew, color:'#75d45b' },
          {value: Number(dname.nomal), label: "정상", formatted: dname.nomal, color:'#cdffb3' },
        ],
        formatter: function (x, data) { return data.formatted; }
   		});
        document.getElementById("ex_img").src = "./resources/images/img_samples/"+dname.diagnosis+".jpg";
		document.getElementById("autoKeyword").style.display = "none";
    	 ///////////////
		
    	document.getElementById("info_title0").innerText = "원인";
    	document.getElementById("info0").innerText = "곰팡이의 형태로 병든 식물체에서 겨울을 지내고 이 곰팡이균이 전염원이 되며, 공기전염 되어 계속해서 다른 식물에게 영향을 끼칩니다. 일반적으로 15～28℃에서 많이 발생하며, 32℃ 이상의 고온에서는 발생하지 않습니다. 특히 일조가 부족하고, 밤, 낮의 온도 차가 심할 때 자주 발생합니다.";
    	document.getElementById("info_title1").innerText = "증상";
    	document.getElementById("info1").innerText = "잎, 줄기, 과실에 발생하며, 주로 잎에 많이 발생합니다. 감염부위에는 하얀색의 균들이 표면에 부분적으로 나타나고, 심하면 잎 전면에 밀가루를 뿌려놓은 것 같은 증상이 나타납니다.";
    	document.getElementById("info_title2").innerText = "대처방법";
    	document.getElementById("info2").innerText = "병든 잎은 바로 제거해주세요. 넓은 곳에서 키우는 것이 좋고, 통풍이 잘되게 해주세요. 발병 초기에 식물에 적절한 약을 사용하여 초기에 균이 전파되는 것을 방지해주세요.";
     })
   
})
</script>

<script type="text/javascript">
var x = 
 </script>

<%-- /식물 정보 받아오는 것 --%>

<script> 
   function fn_spread(id){ 
      var getID = document.getElementById(id); getID.style.display=(getID.style.display=='block') ? 'none' : 'block'; } 
</script>
<script>
    function LoadingWithMask() {
    var maskHeight = $(document).height();
    var maskWidth  = window.document.body.clientWidth;
    var mask = "<div id='mask' style='position:absolute; z-index:9000; background-color:#000000; display:none; left:0; top:0;'></div>";
    var loadingImg = '';
    loadingImg +="<div id='loadingImg'>";
    loadingImg +="<img src='./resources/images/Spinner.gif' style='position: fixed; display: block; z-index:1031; top: calc(50% - (50px/2)); right:calc(50% - (50px/2));'/>";
    loadingImg +="</div>";   
    $('body')
        .append(mask)
        .append(loadingImg)        
    $('#mask').css({
            'width' : maskWidth
            ,'height': maskHeight
            ,'opacity' :'0.3'
    });  
    $('#mask').show();    
    $('#loadingImg').show();
}
function closeLoadingWithMask() {
    $('#mask, #loadingImg').hide();
    $('#mask, #loadingImg').remove(); 
}
</script>   
<script>
    function loadingStart() {
    LoadingWithMask();
    setTimeout("closeLoadingWithMask()", 500);
    }
</script>



<%@ include file="footer.jsp"%>
   
   
</body>
</html>