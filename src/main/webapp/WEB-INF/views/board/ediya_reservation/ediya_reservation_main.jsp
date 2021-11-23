<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>EDIYA COFFEE</title>
	<c:import url="../../temp_common/head_common.jsp"></c:import>
	<!-- 이디야 소식 css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/notice/news.css">
	<!-- ediya_reservation css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/ediya_reservation.css">
</head>
<body>
<!-- Start -->
	<div id="wrapper">
	
	<c:import url="../../temp_common/header.jsp"></c:import>
	
	<section id="container">
		<div class="notice_banner reservation_main">
			<h1 class="banner_title">이디야 예약</h1>
			<p class="banner_subtit">
				<span></span>
			</p>
			
			<!-- lnb : local navigation bar -->
			<ul class="lnb">
				<li class="on"><a href="ediya_reservation_main">예약시스템 소개</a></li>
				<li><a href="#">기프트카드 조회</a></li>
			</ul>	
		</div>
		
		<div class="contents reservation">
		
			<div class="location">
				<span>HOME</span>
				<span>이디야 멤버스</span>
				<span>기프트카드 소개</span>
			</div>
			
			<div class="reservation_wrap">
				
				<div class="reservation_block_wrap">
				
					<div class="reservation_block reservation_card">
						<div class="object">
							<img alt="reservation" src="${pageContext.request.contextPath}/images/board/reservation/reservation_img.png">
						</div>
						<dl>
							<dt>기프트카드란?</dt>
							<dd>
								이디야카드는 금액충전을 통해 언제 어디서나 이디야커피를 구입할 수 있는
								<span style="display: block;">충전형 모바일 상품권입니다.</span>
								이디야카드, 선물하기, 이디야오더 등 다양한 서비스를 지금 경험하세요!
							</dd>
						</dl>
					</div>
								
				</div>
				
			</div>
			
		    <div id="map" style="width:500px;height:400px;position:relative;overflow:hidden;"></div>
		    
		</div>
		
	</section>
	
	<c:import url="../../temp_common/footer.jsp"></c:import>
	
	</div>
<!-- Finish -->

<!-- Script -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8fbaee02fa7d6c63224b2e212a1bf966&libraries=services"></script>
	<script type="text/javascript">
			
		//마커
		let markers = [];
		
		let container = document.getElementById("map");
		let options = {
			center : new kakao.maps.LatLng(33.450701, 126.570667),
			level : 3
		};
		
		let map = new kakao.maps.Map(container, options);
		
	</script>
</body>
</html>