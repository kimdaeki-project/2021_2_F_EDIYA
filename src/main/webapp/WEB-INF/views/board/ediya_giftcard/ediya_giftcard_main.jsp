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
	<!-- ediya_giftcard css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/ediya_giftcard.css">
</head>
<body>
<!-- Start -->
	<div id="wrapper">
	
	<c:import url="../../temp_common/header.jsp"></c:import>
	
	<section id="container">
		<div class="notice_banner giftcard_main">
			<h1 class="banner_title">기프트카드 소개</h1>
			<p class="banner_subtit">
				<span>작지만 가볍지 않은 당신의 마음을 전합니다.</span>
			</p>
			
			<!-- lnb : local navigation bar -->
			<ul class="lnb">
				<li class="on"><a href="ediya_giftcard_main">기프트카드 소개</a></li>
				<li><a href="#">기프트카드 조회</a></li>
				<li><a href="#">분실신고/환불신청</a></li>
				<li><a href="#">자주하는 질문</a></li>
			</ul>	
		</div>
		
		<div class="contents giftcard">
		
			<div class="location">
				<span>HOME</span>
				<span>이디야 멤버스</span>
				<span>기프트카드 소개</span>
			</div>
			
			<div class="giftcard_wrap">
				
				<div class="giftcard_block_wrap">
				
					<div class="giftcard_block giftcard_card">
						<div class="object">
							<img alt="giftcard" src="${pageContext.request.contextPath}/images/board/giftcard/giftcard_img.png">
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
		
		    <div id="menu_wrap" class="bg_white">
		        <div class="option">
		            <div>
		                <form onsubmit="searchPlaces(); return false;">
		                    키워드 : <input type="text" value="수원 이디야" id="keyword" size="15"> 
		                    <button type="submit">검색하기</button> 
		                </form>
		            </div>
		        </div>
		        <hr>
		        <ul id="placesList"></ul>
		        <div id="pagination"></div>
		    </div>
			
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
		let ps = new kakao.maps.services.Places();
		let infoWindow = new kakao.maps.InfoWindow({zIndex:1});
	    
		searchPlaces();
		
		// 키워드 요청 함수
		function searchPlaces() {
			
			let keyword = document.getElementById("keyword").value;
			
			if(!keyword.replace(/^\s+|\s+$/g, '')){
				alert("키워드를 입력해주세요!")
				return false;
			}
			
			ps.keywordSearch(keyword, placeSearchCB);
			
		};
		
		// 장소검색 완료 후 콜백 함수
		function placeSearchCB(data, status, pagination) {
			
			if(status === kakao.maps.services.Status.OK){
				
				// 정상 검색시 마커표시
				displayPlaces(data);
				
				// 페이지번호 표출
				displayPagination(pagination);
				
			}else if(status === kakao.maps.services.Status.ZERO_RESULT){
				
				alert("검색 결과가 존재하지 않습니다.");
				return;
				
			}else if(status === kakao.maps.services.Status.ERROR){
				
				alert("검색 결과 중 오류가 발생했습니다.");
				return;
				
			}
			
		}
		
		// 검색 결과 목록과 마커 표출 함수
		function displayPlaces(places) {
			
			let listEl = document.getElementById("placesList"),
			menuEl = document.getElementById("menu_wrap"),
			fragment = document.createDocumentFragment(),
			bounds = new kakao.maps.LatLngBounds(),
			listStr = "";
			
			// 검색 결과 목록에 추가된 항목들 삭제
			removeAllChildNods(listEl);
			
			// 지도에 표시되고 있는 마커 제거
			removeMarker();
			
			for(let i=0; i<places.length; i++){
				
				// 마커 생성 후 지도에 표시
				let placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
					marker = addMarker(placePosition, i),
					itemEl = getListItem(i, places[i]); // 검색 결과 항목 element 생성
				
				// 검색된 장소 위치를 기준으로 지도 범위 재설정
				// LatLngBounds 객체에 좌표 추가
				bounds.extend(placePosition);
				
				// mouseover 장소명 표시, mouseout 인포윈도우 닫기
				(function (marker, title) {
					kakao.maps.event.addListener(marker, "mouseover", function () {
						displayInfowindow(marker, title);
					});
					
					kakao.maps.event.addListener(marker, "mouseout", function () {
						infowindow.close();
					});
					
					itemEl.onmouseover = function () {
						displayInfowindow(marker, title);
					};
					
					itemEl.onmouseout = function () {
						infowindow.close();
					};
				})(marker, places[i].place_name);
				
				fragment.appendChild(itemEl);
			}
			
			// 검색결과 항목들을 검색결과 목록에 추가
			listEl.appendChild(fragment);
			menuEl.scrollTop = 0;
			
			// 검색된 장소 위치를 기준으로 지도 범위를 재설정
			map.setBounds(bounds);
			
		}
		
		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {

		    var el = document.createElement('li'),
		    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
		                '<div class="info">' +
		                '   <h5>' + places.place_name + '</h5>';

		    if (places.road_address_name) {
		        itemStr += '    <span>' + places.road_address_name + '</span>' +
		                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
		    } else {
		        itemStr += '    <span>' +  places.address_name  + '</span>'; 
		    }
		                 
		      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
		                '</div>';           

		    el.innerHTML = itemStr;
		    el.className = 'item';

		    return el;
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, idx, title) {
		    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
		        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
		        imgOptions =  {
		            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
		            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
		            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
		        },
		        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
		            marker = new kakao.maps.Marker({
		            position: position, // 마커의 위치
		            image: markerImage 
		        });

		    marker.setMap(map); // 지도 위에 마커를 표출합니다
		    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

		    return marker;
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
		    for ( var i = 0; i < markers.length; i++ ) {
		        markers[i].setMap(null);
		    }   
		    markers = [];
		}

		// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
		function displayPagination(pagination) {
		    var paginationEl = document.getElementById('pagination'),
		        fragment = document.createDocumentFragment(),
		        i; 

		    // 기존에 추가된 페이지번호를 삭제합니다
		    while (paginationEl.hasChildNodes()) {
		        paginationEl.removeChild (paginationEl.lastChild);
		    }

		    for (i=1; i<=pagination.last; i++) {
		        var el = document.createElement('a');
		        el.href = "#";
		        el.innerHTML = i;

		        if (i===pagination.current) {
		            el.className = 'on';
		        } else {
		            el.onclick = (function(i) {
		                return function() {
		                    pagination.gotoPage(i);
		                }
		            })(i);
		        }

		        fragment.appendChild(el);
		    }
		    paginationEl.appendChild(fragment);
		}

		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
		    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

		    infowindow.setContent(content);
		    infowindow.open(map, marker);
		}

		 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {   
		    while (el.hasChildNodes()) {
		        el.removeChild (el.lastChild);
		    }
		}  
		
	</script>
</body>
</html>