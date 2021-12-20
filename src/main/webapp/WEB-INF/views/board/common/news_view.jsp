<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			<c:choose>
				<c:when test="${param.board_category eq 'notice'}">
					<h1 class="banner_title">공지사항</h1>
					<p class="banner_subtit">
						<span>이디야는 국내 브랜드의 자부심을 지키며</span>
						대한민국 커피 문화를 이끌어 나갑니다.
					</p>
				</c:when>
				<c:otherwise>
					<h1 class="banner_title">이벤트</h1>
					<p class="banner_subtit">
						<span>국내 커피문화를 선도하는</span>
						이디야에서 준비한 문화 이벤트에 참여하세요.
					</p>
				</c:otherwise>
			</c:choose>
			
			<!-- lnb : local navigation bar -->
			<ul class="lnb">
				<li><a href="${pageContext.request.contextPath}/board/notice?board_type=notice">공지사항</a></li>
				<li><a href="${pageContext.request.contextPath}/board/event?board_type=event">이벤트</a></li>
				<li><a href="#">홈카페 레시피</a></li>
				<li><a href="${pageContext.request.contextPath}/board/coupon">대량쿠폰구매</a></li>
			</ul>	
		</div>
		
		<div class="contents">
			<div class="location">
				<span>HOME</span>
				<span>이디야 소식</span>
				<c:choose>
					<c:when test="${board_type eq 'notice'}">
						<span>공지사항</span>
					</c:when>
					<c:otherwise>
						<span>이벤트</span>
					</c:otherwise>
				</c:choose>
			</div>
			
			<div class="board_view_title">
				<p>${post.board_title}</p>
				<p><fmt:formatDate value="${post.board_regdate}" pattern="yyyy-MM-dd"/></p>
			</div>
			<div class="board_view_con">
				${post.board_content}
			</div>
			<div class="board_view_util">
				<a href="./${board_type}?board_type=${board_type}&pn=${param.pn}">목록보기</a>
			</div>
			<div class="board_view_page">
				<c:choose>
					<c:when test="${not empty prev_post.board_title}">
						<dl>
							<dt>이전글</dt>
							<dd><a href="getSelectOne?board_id=${prev_post.board_id}&board_type=${param.board_type}&pn=${param.pn}">${prev_post.board_title}</a></dd>
							<dd><fmt:formatDate value="${prev_post.board_regdate}" pattern="yyyy-MM-dd"/></dd>
						</dl>
					</c:when>
					<c:otherwise>
						<dl>
							<dt>이전글</dt>
							<dd>이전글이 존재하지 않습니다.</dd>
							<dd></dd>
						</dl>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${not empty next_post.board_title}">
						<dl>
							<dt>다음글</dt>
							<dd><a href="getSelectOne?board_id=${next_post.board_id}&board_type=${param.board_type}&pn=${param.pn}">${next_post.board_title}</a></dd>
							<dd><fmt:formatDate value="${next_post.board_regdate}" pattern="yyyy-MM-dd"/></dd>
						</dl>
					</c:when>
					<c:otherwise>
						<dl>
							<dt>다음글</dt>
							<dd>다음글이 존재하지 않습니다.</dd>
							<dd></dd>
						</dl>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		
	</section>
	
	<c:import url="../../temp_common/footer.jsp"></c:import>
	
	</div>
<!-- Finish -->

<!-- Script -->
	<script type="text/javascript">
	/* category에 따른 lnb 적용 스크립트 */
	let category = '${board_type}';
	
	if(category == 'notice'){
		$(".lnb").children().eq(0).addClass("on");
	}
	if(category == 'event'){
		$(".lnb").children().eq(1).addClass("on");
	}
	</script>
</body>
</html>