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
		<div class="notice_banner">
			<h1 class="banner_title">공지사항</h1>
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
				<span>단체º기업 구매</span>
			</div>
			
		
	</section>
	
	<c:import url="../../temp_common/footer.jsp"></c:import>
	
	</div>
<!-- Finish -->

<!-- Script -->
	<script type="text/javascript" src="js/common.js"></script>
</body>
</html>