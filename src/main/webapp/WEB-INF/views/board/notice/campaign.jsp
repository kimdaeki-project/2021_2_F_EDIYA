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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/notice/campaign.css">
</head>
<body>
<!-- Start -->
	<div id="wrapper">
	
	<c:import url="../../temp_common/header.jsp"></c:import>
	
	<section id="container">
		<div class="campaign_banner">
		
			<h1 class="banner_title">이디야커피와 함께 하는 향기로운 동행</h1>
			<p class="banner_subtit">
				<span>오랜 시간 아껴주신 여러분의 성원에 보답하기 위해</span>
				이디야커피가 대한민국과 이디야 가족 모두를 응원합니다.
			</p>
			
			<!-- lnb : local navigation bar -->
			<ul class="lnb">
				<li class="on"><a href="${pageContext.request.contextPath}/board/news">메이트 희망기금</a></li>
				<li><a href="${pageContext.request.contextPath}/board/event">캠퍼스 희망기금</a></li>
				<li><a href="#">식수위생 캠페인</a></li>
				<li><a href="#">이디야의 동행</a></li>
				<li><a href="#">기타동행</a></li>
			</ul>
				
		</div>
		
		<div class="contents">
			<div class="location">
				<span>HOME</span>
				<span>사회공헌활동</span>
				<span>메이트 희망기금</span>
			</div>
			
			<div class="board_wrap">
				
				<div class="board_title">
					<h2>이디야 메이트 희망기금 사업</h2>
					<p>이디야커피는 대한민국 청년의 미래를 후원합니다.</p>
				</div>
				
				<div class="board_list">
					<c:forEach items="${campaign_list}" var="list">
						<div class="board_list_item">
							<div class="list_item_img">
								<img alt="thumb" src="${pageContext.request.contextPath}/images/temp/IMG_1511156632684.png">
							</div>
							<div class="list_item_txt">
								<a href="#">
									<h5>${list}</h5>
									<p>여러분이 구입하는 비프렌드 팔찌가 남아공 결식아동에게 큰 힘이 됩니다.</p>
								</a>
							</div>
							<div class="list_item_more">
								<a href="#">더 보기</a>
							</div>
						</div>
					</c:forEach>
				</div>
					
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
	<script type="text/javascript">
	</script>
</body>
</html>