<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="resources/css/global.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
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
</head>
<body>
<div id="container_test">
		<div id="example">
			<div id="slides">
				<div class="slides_container">
					<div class="slide">
					<a href="http://www.flickr.com/photos/streetpreacher/2078765853/" title="twelve.inch | Flickr - Photo Sharing!" target="_blank"><img src="./resources/img/slide-6.jpg" width="570" height="270" alt="Slide 6"></a>
						<img src="./resources/img/slide-1.jpg" width="570" height="270" alt="Slide 1">
						<div class="caption" style="bottom:0">
							<p>식물이름, 등록일자</p>
						</div>
					</div>
					
				</div>
				<a href="#" class="prev"><img src="./resources/img/arrow-prev.png" width="24" height="43" alt="Arrow Prev"></a>
				<a href="#" class="next"><img src="./resources/img/arrow-next.png" width="24" height="43" alt="Arrow Next"></a>
			</div>
			<img src="./resources/img/example-frame.png" width="739" height="341" alt="Example Frame" id="frame">
		</div>
		<img src="./resources/img/example-frame.png" width="739" height="341" alt="Example Frame" id="frame">
		
	</div>

</body>
</html>