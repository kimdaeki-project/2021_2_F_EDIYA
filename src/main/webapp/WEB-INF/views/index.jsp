<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>EDIYA COFFEE</title>
	<c:import url="./temp_common/head_common.jsp"></c:import>
	<!-- LS Master -->
	<link rel="stylesheet" type="text/css" href="css/lightslider/lightslider.css">
	<script type="text/javascript" src="js/lightslider.js"></script>
	<!-- index css 파일 -->
	<link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
<!-- Start -->
	<div id="wrapper">
	
	<c:import url="./temp_common/header.jsp"></c:import>
	
	<section id="container">
		<div class="main_contents">
			<div class="slider_wrapper">
				<div class="main_slider" id="main_slider">
					<c:forEach begin="1" end="8" var="i">
						<div>
							<img alt="slide_item" src="images/index/slider/main_slider0${i}.jpg">
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
	
	<c:import url="./temp_common/footer.jsp"></c:import>
	
	</div>
<!-- Finish -->

<!-- Script -->
	<script type="text/javascript" src="js/common.js"></script>
	<script type="text/javascript">
		$(function () {
			 $("#main_slider").lightSlider({
		        item: 1,
		        autoWidth: false,
		        slideMove: 1, // slidemove will be 1 if loop is true
		        slideMargin: 0,
		 
		        addClass: '',
		        mode: "slide",
		        useCSS: true,
		        cssEasing: 'ease', //'cubic-bezier(0.25, 0, 0.25, 1)',//
		        easing: 'linear', //'for jquery animation',////
		 
		        speed: 2000, //ms'
		        auto: true,
		        loop: true,
		        slideEndAnimation: true,
		        pause: 4000,
		 
		        keyPress: false,
		        controls: true,
		        prevHtml: '',
		        nextHtml: '',
		 
		        rtl:false,
		        adaptiveHeight:false,
		 
		        vertical:false,
		        verticalHeight:500,
		        vThumbWidth:100,
		 
		        thumbItem:10,
		        pager: true,
		        gallery: false,
		        galleryMargin: 0,
		        thumbMargin: 0,
		        currentPagerPosition: 'middle',
		 
		        enableTouch:false,
		        enableDrag:false,
		        freeMove:false,
		        swipeThreshold: 40,
		 
		        responsive : [],
		 
		        onBeforeStart: function (el) {},
		        onSliderLoad: function (el) {},
		        onBeforeSlide: function (el) {},
		        onAfterSlide: function (el) {},
		        onBeforeNextSlide: function (el) {},
		        onBeforePrevSlide: function (el) {}
		    });
		});
	</script>
</body>
</html>