<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>EDIYA COFFEE</title>
	<c:import url="../temp_common/head_common.jsp"></c:import>
	<!-- 이디야 소식 css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/notice/news.css">
	<!-- ediya_reservation css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/ediya_findplace.css">
</head>
<body>
<!-- Start -->
	<div id="wrapper">
	
	<c:import url="../temp_common/header.jsp"></c:import>
	
	<section id="container">
		<div class="notice_banner reservation_main">
			<h1 class="banner_title">매장검색</h1>
			<p class="banner_subtit">
				<span></span>
			</p>
			
			<!-- lnb : local navigation bar -->
			<ul class="lnb">
				
			</ul>	
		</div>
		
		<div class="contents reservation">
		
			<div class="location">
				<span>HOME</span>
				<span>매장찾기</span>
			</div>
			
			<div class="reservation_wrap">
						
				<div class="reservation_block_wrap">
					
					<div class="btn_wrap">
						<input type="button" id="find_btn" value="우리집 이디야 찾기">
						<input type="hidden" id="keyword" value="이디야커피">
					</div>
					
					<div id="map" style="width:100%;height:500px;position:relative;overflow:hidden;"></div>
					
				</div>			
				
			</div>
		    
		</div>
		
	</section>
	
	<c:import url="../temp_common/footer.jsp"></c:import>
	
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
			
			
			// 이디야 커피랩 위치 기본
			makeMap(37.5105206834077, 127.03314103979302, "이디야 커피랩");
			
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
						level : 3,
						// y좌표
						y : lat,
						// x좌표
						x : lon,
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
					
					const moveLatLon = new kakao.maps.LatLng(place.y, place.x);
					const level = map.getLevel();
					
					if(level == 1) {
						alert("더이상 축소 할 수 없습니다!")
					}else{
						map.setLevel(level-2);
						map.panTo(moveLatLon);
					}
					
					sendInfo(place);
				});
				
				// 마커 마우스 온 이벤트
				kakao.maps.event.addListener(marker, 'mouseover', function () {
					
					// 각 커스텀 오버레이 생성
					makeCustomOverlay(place);
					
				})
				
				// 마커 마우스 아웃
				kakao.maps.event.addListener(marker, 'mouseout', function () {
					
					overLay.setMap(null);
					
				})
				
			}
			
			// 마커 클릭 시 정보 전달
			function sendInfo(each_marker) {
				
				console.log(each_marker);
				/* $("#place_url").attr("href", each_marker.place_url);
				$("#place_url").attr("target", "_blank"); */
				aa(each_marker.place_url);
				
			}
			
			//
			function aa(url) {
				
				let popupWidth = 800;
				let popupHeight = 900;
				
				let popupX = (window.screen.width/2) - (popupWidth/2);
				let popupY = (window.screen.height/2) - (popupHeight/2);
				
				window.open(url, "", "status=no, width=" + popupWidth + ", height=" + popupHeight + ", top=" + popupY + ", left=" + popupX);
				
			}
			
			// 각 검색 건당 커스텀 오버레이 만들어 줄 함수
			function makeCustomOverlay(each_marker) {
				
				console.log(each_marker);
				
				// x, y 좌표
				let getX = each_marker.x;
				let getY = each_marker.y;
				
				
				let iwContent = 
					'<div style="background-color: white; padding: 3px; width: 100px; heigh: 50px; text-align: center; border-radius: 20px;">' +
					'<span style="font-weight: 700; font-size: 7px;">' + each_marker.place_name + '</span>' +
					'</div>',
		  			iwPosition = new kakao.maps.LatLng(getY, getX);
					
				
				overLay = new kakao.maps.CustomOverlay({
					map : map,
					position : iwPosition,
					content : iwContent,
					yAnchor : 2.5
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