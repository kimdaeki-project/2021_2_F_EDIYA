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
	<!-- event.jsp도 같은 css 사용 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/notice/news.css">
</head>
<body>
<!-- Start -->
	<div id="wrapper">
	
	<c:import url="../../temp_common/header.jsp"></c:import>
	
	<section id="container">
		<div class="notice_banner">
			<h1 class="banner_title">이벤트</h1>
			<p class="banner_subtit">
				<span>국내 커피문화를 선도하는</span>
				이디야에서 준비한 문화 이벤트에 참여하세요.
			</p>
			
			<!-- lnb : local navigation bar -->
			<ul class="lnb">
				<li><a href="${pageContext.request.contextPath}/board/notice?board_category=notice">공지사항</a></li>
				<li class="on"><a href="${pageContext.request.contextPath}/board/event?board_category=event">이벤트</a></li>
				<li><a href="#">홈카페 레시피</a></li>
				<li><a href="#">대량쿠폰구매</a></li>
			</ul>	
		</div>
		
		<div class="contents">
			<div class="location">
				<span>HOME</span>
				<span>이디야 소식</span>
				<span>이벤트</span>
			</div>
			
			<div class="board_wrap">
			
				<div class="board_top">
					<div class="board_search">
						<form action="#" method="get" name="frm">
							<select name="kind" class="search_kind">
								<option value="">제목</option>
								<option value="">내용</option>
							</select>
							<div class="search_bar">
								<input type="text" class="search_bar_input" name="">
								<button type="button" class="search_bar_btn"></button>
							</div>
						</form>
					</div>
				</div>
				
				<ul class="board_list">
					<c:forEach items="${eventAr}" var="ar">
						<li>
							<!-- event -->
							<div class="board_e_img">
								<a href="news_view?board_category=event&board_id=${ar.board_id}">
									<img alt="temp" src="${pageContext.request.contextPath}/images/temp/IMG_1628640375152.thumb">
								</a>
							</div>
							<dl class="board_e_con">
								<dt><a href="news_view?board_category=event&board_id=${ar.board_id}">${ar.board_title}</a></dt>
								<dd>
									<span class="blue_txt">기간 : </span>
									${ar.startDate} ~ ${ar.endDate}
								</dd>
							</dl>
							<div class="board_e_state">
								<!-- go : 진행중 , end : 종료 -->
								<span class="go">
									진행중
								</span>
							</div>
						</li>
					</c:forEach>
				</ul>
				
				<div class="board_pager">
					<!-- 앞 -->
					<span><a href="#"><img alt="이전" src="${pageContext.request.contextPath}/images/common/page_prev.gif"></a></span>
					
					<!-- 번호 -->
					<c:forEach begin="1" end="9" var="i">
						<a href="#">${i}</a>
					</c:forEach>
					
					<!-- 뒤 -->
					<span><a href="#"><img alt="다음" src="${pageContext.request.contextPath}/images/common/page_next.gif"></a></span>
				</div>
			</div>
		</div>
		
	</section>
	
	<c:import url="../../temp_common/footer.jsp"></c:import>
	
	</div>
<!-- Finish -->

<!-- Script -->
	<script type="text/javascript" src="js/common.js"></script>
</body>
</html>