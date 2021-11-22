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
	<!-- ediya_members css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/ediya_members.css">
</head>
<body>
<!-- Start -->
	<div id="wrapper">
	
	<c:import url="../../temp_common/header.jsp"></c:import>
	
	<section id="container">
	
		<div class="notice_banner members_faq">
			<h1 class="banner_title">자주하는 질문</h1>
			<p class="banner_subtit">
				<span>이디야를 이용하시는 고객님들이 자주 질문하시는 내용입니다.</span>
			</p>
			
			<!-- lnb : local navigation bar -->
			<ul class="lnb">
				<li><a href="ediya_members_main" id="members01">멤버스소개</a></li>
				<li><a href="ediya_members_card" id="members02">이디야카드</a></li>
				<li><a href="#3" id="members03">선물하기</a></li>
				<li><a href="#4" id="members04">이디야오더</a></li>
				<li class="on"><a href="ediya_members_faq" id="members05">FAQ</a></li>
			</ul>	
		</div>
		
		<div class="contents">
			<div class="location">
				<span>HOME</span>
				<span>이디야 멤버스</span>
				<span>FAQ</span>
			</div>
			
			<div class="board_wrap">
			
				<div class="board_top">
					<div class="board_search">
						<form action="in_search" method="get" name="frm">
							<select name="kind" class="search_kind">
								<option value="title">제목</option>
								<option value="contents">내용</option>
							</select>
							<div class="search_bar">
								<input type="hidden" name="board_category" value="${param.board_category}">
								<input type="text" class="search_bar_input" name="searchValue">
								<button type="submit" class="search_bar_btn"></button>
							</div>
						</form>
					</div>
				</div>
				
				<div class="faq_board">
					<ul class="members_top">
						<li class="faq_li_7 on">
							<a href="#c">전체</a>
						</li>
						<li class="faq_li_7">
							<a href="#c">회원</a>
						</li>
						<li class="faq_li_7">
							<a href="#c">회원등급</a>
						</li>
						<li class="faq_li_7">
							<a href="#c">스탬프</a>
						</li>
						<li class="faq_li_7">
							<a href="#c">쿠폰</a>
						</li>
						<li class="faq_li_7">
							<a href="#c">이디야카드</a>
						</li>
						<li class="faq_li_7">
							<a href="#c">이디야오더</a>
						</li>
					</ul>
					<ul class="faq_list">
						<c:forEach begin="1" end="10">
							<li>
								<dl class="faq_Q">
									<dt>Q</dt>
									<dd>
										<a href="#c" class="btn_faq">쿠폰 선물 내역은 어디에서 확인할 수 있나요?</a>
									</dd>
									<dd class="down">
										<a href="#c" class="btn_faq"></a>
									</dd>
								</dl>
								<dl class="faq_A" style="display: none;">
									<dt>A</dt>
									<dd>
										<p>이디야멤버스 App의 [선물하기]-[쿠폰선물]-[쿠폰선물내역]에서 볼 수 있습니다.</p>
									</dd>
								</dl>
							</li>
						</c:forEach>
					</ul>
				</div>
				
				<div class="board_pager">
					<!-- 앞 -->
					<span><a href="notice?board_category=notice&pn=${param.pn-1}"><img alt="이전" src="${pageContext.request.contextPath}/images/common/page_prev.gif"></a></span>
					
					<!-- 번호 -->
					<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
						<c:choose>
							<c:when test="${empty noticeAr}">
								<a href="#1">1</a>
							</c:when>
							<c:otherwise>
								<a href="notice?board_category=notice&pn=${i}">${i}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					
					<!-- 뒤 -->
					<c:choose>
						<c:when test="${not pager.lastCheck}">
							<span><a href="notice?board_category=notice&pn=${param.pn+1}"><img alt="다음" src="${pageContext.request.contextPath}/images/common/page_next.gif"></a></span>
						</c:when>
						<c:otherwise>
							<span><a href="#"><img alt="다음" src="${pageContext.request.contextPath}/images/common/page_next.gif"></a></span>
						</c:otherwise>
					</c:choose>
					
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
		$(function () {
			
			// up.down
			$(".btn_faq").on("click", function () {
				
				let state = $(this).parent().attr("class");
				
				if(state == "down"){
					$(this).parents(".faq_Q").next().slideDown();
					$(this).parent().attr("class", "up");
				}else{
					$(this).parents(".faq_Q").next().slideUp();
					$(this).parent().attr("class", "down");
				}
				
			});
			
			//top_menu
			$(".faq_li_7").on("click", function () {
				
				$(this).siblings().removeClass("on");
				$(this).addClass("on");
				
			});
			
		});
	</script>
</body>
</html>