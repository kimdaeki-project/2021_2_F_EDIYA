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
	<script type="text/javascript">
 	$(function(){
		 history.replaceState({}, null, location.pathname);
		 
		 function noRefresh() { 
			 /* CTRL + N키 막음. */ 
			 if ((event.keyCode == 78) && (event.ctrlKey == true)) 
			 { 
			 	event.keyCode = 0; 
			 	return false; 
			 } 
			 /* F5 번키 막음. */ 
			 if(event.keyCode == 116) 
			 { 
			 	event.keyCode = 0;
			 
			 	return false; 
			 	} 
			 } 
		 		document.onkeydown = noRefresh;
	});
	</script>
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
				<li><a href="#" data-value="메이트희망기금" class="category">메이트 희망기금</a></li>
				<li><a href="#" data-value="캠퍼스희망기금" class="category">캠퍼스 희망기금</a></li>
				<li><a href="#" data-value="식수위생캠페인" class="category">식수위생 캠페인</a></li>
				<li><a href="#" data-value="이디야의동행" class="category">이디야의 동행</a></li>
				<li><a href="#" data-value="기타활동" class="category">기타활동</a></li>
			</ul>
				
		</div>
		
		<div class="contents">
			
			<input type="hidden" value="${param.board_category}" id="category">
			
			<div class="location">
				<span>HOME</span>
				<span>사회공헌활동</span>
				<span>${param.board_category}</span>
			</div>
			
			<div class="board_wrap">
				
				<div class="board_title">
					<c:choose>
						<c:when test="${param.board_category eq '메이트희망기금'}">
							<h2>이디야 메이트 희망기금 사업</h2>
							<p>이디야커피는 대한민국 청년의 미래를 후원합니다.</p>
						</c:when>
						<c:when test="${param.board_category eq '캠퍼스희망기금'}">
							<h2>이디야 가맹점주 자녀 캠퍼스 희망기금</h2>
							<p>가맹점주님과 자녀들의 미래와 희망을 함께 그려나가고자 합니다.</p>
						</c:when>
						<c:when test="${param.board_category eq '식수위생캠페인'}">
							<h2>식수위생 캠페인</h2>
							<p>이디야커피는 식수위생 캠페인을 통해 식수부족국가를 위한 정수시설 설치 및 인식개선 사업을 후원합니다.</p>
						</c:when>
						<c:when test="${param.board_category eq '이디야의동행'}">
							<h2>이디야의 동행</h2>
							<p>이디야커피는 따뜻한 마음과 기쁨을 나누기 위해 먼저 실천합니다.</p>
						</c:when>
						<c:when test="${param.board_category eq '기타활동'}">
							<h2>그 외 사회공헌활동</h2>
						</c:when>
					</c:choose>
				</div>
				
				<div class="board_list">
					<c:forEach begin="1" end="5">
						<div class="board_list_item">
							<div class="list_item_img">
								<img alt="thumb" src="${pageContext.request.contextPath}/images/temp/IMG_1511156632684.png">
							</div>
							<div class="list_item_txt">
								<a href="#">
									<h5>aaaa</h5>
									<p>여러분이 구입하는 비프렌드 팔찌가 남아공 결식아동에게 큰 힘이 됩니다.</p>
								</a>
							</div>
							<div class="list_item_more">
								<a href="campaign_view?board_category=${param.board_category}&board_id=">더 보기</a>
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
	
	/* category에 따른 lnb 적용 스크립트 */
	let category = '${param.board_category}';
					
	if(category == '메이트희망기금'){
		$(".lnb").children().eq(0).addClass("on");
	}
	if(category == '캠퍼스희망기금'){
		$(".lnb").children().eq(1).addClass("on");
	}
	if(category == '식수위생캠페인'){
		$(".lnb").children().eq(2).addClass("on");
	}
	if(category == '이디야의동행'){
		$(".lnb").children().eq(3).addClass("on");
	}
	if(category == '기타활동'){
		$(".lnb").children().eq(4).addClass("on");
	}
	
	
	$(document).on('click', '.category', function () {
		let board_category = $('.lnb').find(this).data("value");
		
		$.ajax({
			type: 'get',
			url: 'campaign?board_category=' + board_category,
			success: function (data) {
				let result = $(data).find(".contents").html();
				$(".contents").html(result);
				
				let category = $("#category").val();
				
				
				if(category == '메이트희망기금'){
					$(".lnb").children().eq(0).addClass("on");
					$(".lnb").children().not(":eq(0)").removeClass("on");
				}
				if(category == '캠퍼스희망기금'){
					$(".lnb").children().eq(1).addClass("on");
					$(".lnb").children().not(":eq(1)").removeClass("on");
				}
				if(category == '식수위생캠페인'){
					$(".lnb").children().eq(2).addClass("on");
					$(".lnb").children().not(":eq(2)").removeClass("on");
				}
				if(category == '이디야의동행'){
					$(".lnb").children().eq(3).addClass("on");
					$(".lnb").children().not(":eq(3)").removeClass("on");
				}
				if(category == '기타활동'){
					$(".lnb").children().eq(4).addClass("on");
					$(".lnb").children().not(":eq(4)").removeClass("on");
				}
			},
			error: function () {
				alert("실패!");
			}
		});
		
	});

	</script>
</body>
</html>