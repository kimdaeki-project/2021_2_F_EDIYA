<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>EDIYA COFFEE</title>
	<c:import url="../../temp_common/head_common.jsp"></c:import>
	<!-- 이디야 소식 css -->
	<!-- event.jsp도 같은 css 사용 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/notice/news.css">
	<!-- detail view -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/notice/detail_view.css">
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
				<li><a href="${pageContext.request.contextPath}/board/notice">공지사항</a></li>
				<li><a href="${pageContext.request.contextPath}/board/event">이벤트</a></li>
				<li><a href="#">홈카페 레시피</a></li>
				<li><a href="#">대량쿠폰구매</a></li>
			</ul>	
		</div>
		
		<div class="contents">
			<div class="location">
				<span>HOME</span>
				<span>이디야 소식</span>
				<span>공지사항</span>
			</div>
			
			<div class="board_view_title">
				<p>이디야멤버스 이용약관 변경 공지</p>
				<p>2021-11-17</p>
			</div>
			<div class="board_view_con"></div>
			<div class="board_view_util">
				<a href="#">목록보기</a>
			</div>
			<div class="board_view_page">
				<dl>
					<dt>이전글</dt>
					<dd>이디야멤버스 이용약관 변경 공지</dd>
					<dd>2021.11.16</dd>
				</dl>
				<dl>
					<dt>다음글</dt>
					<dd>이디야멤버스 이용약관 변경 공지</dd>
					<dd>2021.11.16</dd>
				</dl>
			</div>
		</div>
		
	</section>
	
	<c:import url="../../temp_common/footer.jsp"></c:import>
	
	</div>
<!-- Finish -->

<!-- Script -->
	<script type="text/javascript" src="js/common.js"></script>
	<script type="text/javascript">
	/* category에 따른 lnb 적용 스크립트 */
	let category = '${param.category}';
	if
	</script>
</body>
</html>