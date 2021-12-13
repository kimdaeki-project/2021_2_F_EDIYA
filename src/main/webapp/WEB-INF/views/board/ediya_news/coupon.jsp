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
</head>
<body>
<!-- Start -->
	<div id="wrapper">
	
	<c:import url="../../temp_common/header.jsp"></c:import>
	
	<section id="container">
		<div class="notice_banner coupon_banner">
			<h1 class="banner_title">단체ㆍ기업 구매</h1>
			<p class="banner_subtit">
				<span>이디야는 국내 브랜드의 자부심을 지키며</span>
				대한민국 커피 문화를 이끌어 나갑니다.
			</p>
			
			<!-- lnb : local navigation bar -->
			<ul class="lnb">
				<li><a href="${pageContext.request.contextPath}/board/notice?board_category=notice">공지사항</a></li>
				<li><a href="${pageContext.request.contextPath}/board/event?board_category=event">이벤트</a></li>
				<li><a href="#">홈카페 레시피</a></li>
				<li class="on"><a href="${pageContext.request.contextPath}/board/coupon">대량쿠폰구매</a></li>
			</ul>	
		</div>
		
		<div class="contents">
			<div class="location">
				<span>HOME</span>
				<span>이디야 소식</span>
				<span>단체ㆍ기업 구매</span>
			</div>
			
			<div class="giftcard_box01">
				<h3>
					단체 및 기업의 경우, 모바일쿠폰과 이디야 기프트카드를
					<span style="display: block;">대량 구매 하실 수 있습니다.</span>
				</h3>
				<ul class="giftcard_img">
					<li>
						<img alt="coupon" src="${pageContext.request.contextPath}/images/board/reservation/coupon_card.png">
						<span class="card_name">모바일 상품권</span>
					</li>
					<li>
						<img alt="coupon" src="${pageContext.request.contextPath}/images/board/reservation/giftcard01.png">
						<span class="card_name">기프트 카드</span>
					</li>
				</ul>
			</div>
			
			<div class="giftcard_box02">
				<dl class="coupon_txt">
					<dd>
						<p>상담 운영시간: 월~금 09:00 ~ 17:00 (토/일요일, 공휴일 휴무)</p>
						<p>상품 구매 및 제휴 문의 : 02-728-1555 OR coupon@ediya.com</p>
					</dd>
				</dl>
				<dl class="coupon_txt">
					<dd>
						기프트카드의 경우, 하단 발주서 작성 후 기재된 이메일로 발송하여 구매 요청 가능합니다.
						<br>
						(권종 : 1만원 권, 2만원 권, 3만원 권, 4만원 권, 5만원 권, 10만원 권 / 단체 및 기업카드 별도)
					</dd>
				</dl>
				<dl class="coupon_txt">
					<dt>★ 대량 구매 고객님을 위한 특별 혜택 ★</dt>
					<dd>
						기프트카드 200만원 이상을 구매하시면 총 구매 금액의 3%를 추가로 지급해드립니다.
						<button type="button">기프트카드 발주서</button>
						<p></p>
					</dd>
				</dl>
				<dl class="coupon_txt">
					<dd>
						답변은 신청 시 기재한 메일 또는 유선으로 운영 시간 내에 안내됩니다.
					</dd>
					<dd>
						기재 오류로 인하여 답변이 불가할 수 있으므로 메일 주소 및 전화번호를 꼭 확인해 주시기 바랍니다.
					</dd>
				</dl>
			</div>
			
		</div>
		
	</section>
	
	<c:import url="../../temp_common/footer.jsp"></c:import>
	
	</div>
<!-- Finish -->

<!-- Script -->
</body>
</html>