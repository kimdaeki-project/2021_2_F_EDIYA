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
			<div class="main_beanist">
				<h2><em>BEANIST</em> INFORMATION CARD</h2>
				<h3>비니스트는 <em>BEAN+Speciallist</em>의 합성어로
					<span class="block"><em>오직 커피만을 생각해온 커피 전문가</em>를 의미합니다.</span>
				</h3>
				<div class="beanist_slider_wrapper">
					<div class="beanist_slider" id="beanist_slider">
					
						<!-- latte -->
						<div>
							<ul class="latte">
								<li>
									<a href="#">
										<div class="pro_img">
											<img alt="pro_img" src="images/index/pro/main_beanist_latte01.png">
										</div>
										<dl>
											<dt>비니스트 카페 라떼</dt>
											<dd>Beanist Cafe Latte</dd>
										</dl>
									</a>
								</li>
								<li>
									<a href="#">
										<div class="pro_img">
											<img alt="pro_img" src="images/index/pro/main_beanist_latte02.png">
										</div>
										<dl>
											<dt>비니스트 바닐라 라떼</dt>
											<dd>Beanist Vanilla Latte</dd>
										</dl>
									</a>
								</li>
								<li>
									<a href="#">
										<div class="pro_img">
											<img alt="pro_img" src="images/index/pro/main_beanist_latte03.png">
										</div>
										<dl>
											<dt>비니스트 초콜릿 칩 라떼</dt>
											<dd>Beanist Chocolate Chip Latte</dd>
										</dl>
									</a>
								</li>
								<li>
									<a href="#">
										<div class="pro_img">
											<img alt="pro_img" src="images/index/pro/main_beanist_latte04.png">
										</div>
										<dl>
											<dt>비니스트 토피 넛 라떼</dt>
											<dd>Beanist Toffe Nut Latte</dd>
										</dl>
									</a>
								</li>
							</ul>
						</div>
						
						<!-- ame -->
						<div>
							<ul class="ame">
								<li>
									<a href="#">
										<div class="pro_img">
											<img alt="pro_img" src="images/index/pro/main_beanist_ame01.png">
										</div>
										<dl>
											<dt>비니스트 오리지널 아메리카노</dt>
											<dd>Beanist Original Americano</dd>
										</dl>
									</a>
								</li>
								<li>
									<a href="#">
										<div class="pro_img">
											<img alt="pro_img" src="images/index/pro/main_beanist_ame02.png">
										</div>
										<dl>
											<dt>비니스트 마일드 아메리카노</dt>
											<dd>Beanist Mild Americano</dd>
										</dl>
									</a>
								</li>
								<li>
									<a href="#">
										<div class="pro_img">
											<img alt="pro_img" src="images/index/pro/main_beanist_ame03.png">
										</div>
										<dl>
											<dt>비니스트 스페셜 아메리카노</dt>
											<dd>Beanist Special Americano</dd>
										</dl>
									</a>
								</li>
							</ul>
						</div>
						
						<!-- mix -->
						<div>
							<ul class="mix">
								<li>
									<a href="#">
										<div class="pro_img">
											<img alt="pro_img" src="images/index/pro/main_beanist_mix01.png">
										</div>
										<dl>
											<dt>모카블렌드 커피믹스</dt>
											<dd>Mocha Blend Coffee Mix</dd>
										</dl>
									</a>
								</li>
								<li>
									<a href="#">
										<div class="pro_img">
											<img alt="pro_img" src="images/index/pro/main_beanist_mix02.png">
										</div>
										<dl>
											<dt>모카블렌드 커피믹스</dt>
											<dd>Mocha Blend Coffee Mix</dd>
										</dl>
									</a>
								</li>
							</ul>
						</div>
						
					</div>
				</div>
			</div>
			<!-- 이디야 관련 소개 배너 등 .... -->
			<div class="main_banner01">
				<h2>
					ALWAYS BESIDE YOU, <em>EDIYA COFFEE</em>
				</h2>
				<h3>늘 당신 곁에, 이디야 커피의 다양한 메뉴를 맛보세요.</h3>
				<div class="main_banner01_btn">
					<a href="#">
						메뉴보기
					</a>
				</div>
			</div>
			<!-- main bottom 공지사항 등... -->
			<div class="main_bottom">
				<!-- 창업 -->
				<div class="bn franchise">
					<a href="#"></a>
					<h2>가맹점 개설 안내</h2>
					<p>성공 창업을 위한 선택</p>
				</div>
				<!-- 매장 찾기 -->
				<div class="bn searchStore">
					<h2>매장찾기</h2>
					<p>가까운 이디야 매장을<span style="display: block;">확인해보세요.</span></p>
					<div class="bottom_search_box">
						<form action="#" method="get" name="findStore">
							<input type="text" name="" placeholder="FIND A STORE">
							<a href="#">
								<img alt="bottom_search_btn" src="images/index/bottom/main_store_btn.png" width="44" height="44">
							</a>
						</form>
					</div>
				</div>
				<!-- 소식 등.. -->
				<div class="bn2">
					<!-- 소식 -->
					<div class="news">
						<h2>이디야 소식</h2>
						<div class="more_btn">
							<a href="#">
								<img alt="more_btn" src="images/index/bottom/main_news_more.png" width="47" height="8">
							</a>
						</div>
						<ul>
							<c:forEach begin="1" end="3">
								<li>
									<a href="#">이디야 멤버스 이용약관 변경 공지</a>
									<span>2021.11.15</span>
								</li>
							</c:forEach>
						</ul>
					</div>
					<div class="brochure">
						<a href="#"></a>
						<h2>브로슈어 다운받기</h2>
						<img alt="brochure" src="images/index/bottom/main_brochure_img.png" width="175" height="165">
					</div>
				</div>
			</div>
			<div style="clear: both; height: 150px;"></div>
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
			 
			$("#beanist_slider").lightSlider({
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
		        auto: false,
		        loop: false,
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