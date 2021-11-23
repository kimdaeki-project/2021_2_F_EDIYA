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
							<img alt="reservation" src="${pageContext.request.contextPath}/images/board/reservation/giftcard_img.png">
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
					
					<div>
						키워드 : <input type="text" id="keyword" value="">
						<input type="button" id="find_btn" value="찾기">
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
		
	
		$(function () {
			/* ====================================================================== */
			/* ========================== 위치, 맵 관련 함수들 ========================== */
			/* ====================================================================== */
			
			// 전역 변수
			let map; // map!@2345
			let overLay = []; // 검색 건당의 오버레이 현 위치 오버레이아님..
			
			$("#find_btn").on("click", function () {
				
				let keyword = $("#keyword").val();
				
				// 현재 위치를 가져오는 API
				if(navigator.geolocation){	
					navigator.geolocation.getCurrentPosition(function (pos) {
						
						let lat = pos.coords.latitude;
						let lon = pos.coords.longitude;
						
						makeMap(lat, lon, keyword);
						
					});	
				} else {
					
					let locPosition = new kakao.maps.LatLng(33.450701, 126.570667);
					alert("해당 웹 브라우저는 위치찾기를 지원하지 않습니다!");
				}
				
			});
			
			// 지도 생성 함수
			function makeMap(lat, lon, keyword) {
				
				// 지도 표시할 html
				let container = $("#map")[0];
				
				// 이용할 변수들
				let options = {
						// 맵 기준
						center : new kakao.maps.LatLng(lat, lon),
						// 확대
						level : 4,
						// y좌표
						y: lat,
						// x
						x: lon,
						// 범위
						radius : 5000,
						// 기준 결정
						useMapCenter : true
					};
				let position = {
						lat : lat,
						lon : lon
				}
				// 지도 생성
				map = new kakao.maps.Map(container, options);
				
				// 장소 검색 객체 생성
				let ps = new kakao.maps.services.Places();
				
				// 현재 위치 표시하기
				currentPos(options.center, map, position);
				// 키워드 장소 검색
				ps.keywordSearch(keyword, placesSearchCB, options);
			
			}
			
			// 키워드 검색 완료 콜백함수
			function placesSearchCB(data, status, pagination) {
				if(status === kakao.maps.services.Status.OK){
					
					let bounds = new kakao.maps.LatLngBounds();
					
					for(let i=0; i<data.length; i++){
						displayMarker(data[i]);
						bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
					}
					
					map.setBounds(bounds);
				}
			}
			
			// 마커표시 함수
			function displayMarker(place) {
				
				// 마커 생성
				let marker = new kakao.maps.Marker({
					map : map,
					position : new kakao.maps.LatLng(place.y, place.x),
					place_name : place.place_name
				});
				
				
				
				// 마커 클릭 이벤트
				kakao.maps.event.addListener(marker, 'click', function () {
					
					// 각 커스텀 오버레이 생성
					makeCustomOverlay(place);
					
				});
				
			}
			
			// 각 검색 건당 커스텀 오버레이 만들어 줄 함수
			function makeCustomOverlay(each_marker) {
				
				console.log(each_marker);
				
				// x, y 좌표
				let getX = each_marker.x;
				let getY = each_marker.y;
				
				console.log(getX);
				
				let iwContent = 
					'<div style="background-color: white; padding: 3px; width: 100px; heigh: 50px; text-align: center; border-radius: 20px;">' +
					'<button type="button" data-place="'+ each_marker +'" class="close_btn">닫기</button><br>' +
					'<span style="font-weight: 700; font-size: 7px;">' + each_marker.place_name + '</span>' +
					'</div>',
		  			iwPosition = new kakao.maps.LatLng(getY, getX);
					
				
				overLay = new kakao.maps.CustomOverlay({
					map : map,
					position : iwPosition,
					content : iwContent,
					yAnchor : 0.5
				});
				
				overLay.setMap(map);
				
			}
			
			
			// 각 검색 커스텀 오버레이 삭제 버튼 클릭 이벤트 
			// 동적으로 만들어진 버튼이여서 document 사용
			$(document).on("click", ".close_btn", function () {
				
				console.log("??");
				overLay.setMap(null);
				
			});
			
			// 현재 위치 표시함수
			function currentPos(pos, map, position) {
				
				let marker = new kakao.maps.Marker({
					position : pos
				});
				
				marker.setMap(map);
				
				// 현재위치 마커위에 표시할 커스텀 오버레이
				const c_iwContent = 
						'<div style="background-color: white; padding: 3px; width: 80px; heigh: 30px; text-align: center; border-radius: 20px;">' +
							'<span style="font-weight: 700;">현재위치</span>' +
						'</div>',
					  c_iwPosition = new kakao.maps.LatLng(position.lat, position.lon);
				
				let customOverlay = new kakao.maps.CustomOverlay({
					map : map,
					position : c_iwPosition,
					content : c_iwContent,
					yAnchor : 2.8
				});
				
			}
			
		});
		
		/* =================================================================== */		
	</script>
</body>
</html>