<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>EDIYA COFFEE</title>
	<c:import url="../../temp_common/head_common.jsp"></c:import>
	<!-- 이디야 소식 css -->
	<!-- event.jsp도 같은 css 사용 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/notice/campaign.css">
	<!-- detail view -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/notice/detail_view.css">
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
				<li><a href="#" data-value="social_mate" class="category">메이트 희망기금</a></li>
				<li><a href="#" data-value="social_campus" class="category">캠퍼스 희망기금</a></li>
				<li><a href="#" data-value="social_sanitation" class="category">식수위생 캠페인</a></li>
				<li><a href="#" data-value="social_accompany" class="category">이디야의 동행</a></li>
				<li><a href="#" data-value="social_etc" class="category">기타활동</a></li>
			</ul>
				
		</div>
		
		<div class="contents">
		
			<div class="location">
				<span>HOME</span>
				<span>사회공헌활동</span>
				<span>
					<c:choose>
						<c:when test="${board_type eq 'social_mate'}">
							메이트 희망기금
						</c:when>
						<c:when test="${board_type eq 'social_campus'}">
							캠퍼스 희망기금
						</c:when>
						<c:when test="${board_type eq 'social_sanitation'}">
							식수위생 캠페인
						</c:when>
						<c:when test="${board_type eq 'social_accompany'}">
							이디야의 동행
						</c:when>
						<c:when test="${board_type eq 'social_etc'}">
							기타 활동
						</c:when>
					</c:choose>
				</span>
			</div>
			
			<div class="board_view_etitle">
				<c:choose>
					<c:when test="${board_type eq 'social_mate'}">
						<h2>이디야 메이트 희망기금 사업</h2>
						<p>이디야커피는 대한민국 청년의 미래를 후원합니다.</p>
					</c:when>
					<c:when test="${board_type eq 'social_campus'}">
						<h2>이디야 가맹점주 자녀 캠퍼스 희망기금</h2>
						<p>가맹점주님과 자녀들의 미래와 희망을 함께 그려나가고자 합니다.</p>
					</c:when>
					<c:when test="${board_type eq 'social_sanitation'}">
						<h2>식수위생 캠페인</h2>
						<p>이디야커피는 식수위생 캠페인을 통해 식수부족국가를 위한 정수시설 설치 및 인식개선 사업을 후원합니다.</p>
					</c:when>
					<c:when test="${board_type eq 'social_accompany'}">
						<h2>이디야의 동행</h2>
						<p>이디야커피는 따뜻한 마음과 기쁨을 나누기 위해 먼저 실천합니다.</p>
					</c:when>
					<c:when test="${board_type eq 'social_etc'}">
						<h2>그 외 사회공헌활동</h2>
					</c:when>
				</c:choose>
			</div>
			
			<div class="board_view_title">
				<p>${post.board_title}</p>
				<p>
					<fmt:formatDate value="${post.board_regdate}" pattern="yyyy-MM-dd"/>
				</p>
			</div>
			<div class="board_view_con">
				${post.board_content}
			</div>
			<div class="board_view_util">
				<a href="./campaign?board_type=${board_type}">목록보기</a>
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
	<script type="text/javascript">
		/* category에 따른 lnb 적용 스크립트 */
		
		let category = '${board_type}';
		
		if(category == 'social_mate'){
			$(".lnb").children().eq(0).addClass("on");
		}
		if(category == 'social_campus'){
			$(".lnb").children().eq(1).addClass("on");
		}
		if(category == 'social_sanitation'){
			$(".lnb").children().eq(2).addClass("on");
		}
		if(category == 'social_accompany'){
			$(".lnb").children().eq(3).addClass("on");
		}
		if(category == 'social_etc'){
			$(".lnb").children().eq(4).addClass("on");
		}
		
		$(document).on("click", ".category", function () {

			let board_type = $(this).data("value");
			
			$(".category").each(function () {
				$(this).parent().removeClass("on");
			});

			$(this).parent().addClass("on");
			
			$.ajax({
				url: "campaign",
				type: "GET",
				dataType: "html",
				data:{
					board_type: board_type
				},
				success: function (result) {
					result = $(result).find(".contents");
					$(".contents").html(result);
				},
				error: function (xhr, status, error) {
					console.log(error);
				}
			});
			
		})
	</script>
</body>
</html>