<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="top_nav">
	<div class="top_align">
		<div class="top_util">
			<ul class="top_members">
				<li><a href="${pageContext.request.contextPath}/member/login">로그인</a></li>
				<li><a href="#">매장찾기</a></li>
				<li><a href="#">고객의 소리</a></li>
				<li><a href="#">이디야 공식몰</a></li>
			</ul>
			<ul class="top_sns">
				<li><a href="https://blog.naver.com/ediya-coffee"></a></li>
				<li><a href="https://www.instagram.com/ediya.coffee/"></a></li>
				<li><a href="https://www.facebook.com/iEDIYA"></a></li>
				<li><a href="https://www.youtube.com/channel/UCK45lxAV_92LqR2DcQCP8Qg?view_as=subscriber"></a></li>
			</ul>
			<div class="total_search">
				<form action="" method="get">
					<input type="text" name="search_value">
					<button type="button"></button>
				</form>
			</div>
		</div>
	</div>
	<h1 class="top_logo">
		<a href="/">
			<img alt="EDIYACOFFE LOGO" src="${pageContext.request.contextPath}/images/common/top_logo.gif">
		</a>
	</h1>
	<div class="m_gnb">
		<ul class="main">
			<li>
				<a href="#">메뉴</a>
				<ul class="dropdown">
					<li><a href="#">음료</a></li>
					<li><a href="#">베이커리</a></li>
					<li><a href="#">원두</a></li>
				</ul>
			</li>
			<li>
				<a href="#">유통제품</a>
				<ul class="dropdown">
					<li><a href="#">스틱커피(비니스트)</a></li>
					<li><a href="#">커피믹스</a></li>
					<li><a href="#">캡슐커피</a></li>
					<li><a href="#">컵커피</a></li>
				</ul>
			</li>
			<li>
				<a href="#">이디야멤버스</a>
				<ul class="dropdown">
					<li><a href="${pageContext.request.contextPath}/board/ediya_members_main">멤버스 소개</a></li>
					<li><a href="${pageContext.request.contextPath}/board/ediya_members_card">이디야카드</a></li>
					<li><a href="#">선물하기</a></li>
					<li><a href="#">이디야오더</a></li>
					<li><a href="${pageContext.request.contextPath}/board/ediya_members_faq">FAQ</a></li>
				</ul>
			</li>
			<li>
				<a href="#">기프트카드</a>
				<ul class="dropdown">
					<li><a href="#">기프트카드 소개</a></li>
					<li><a href="#">잔액 조회</a></li>
					<li><a href="#">분실신고/환불신청</a></li>
					<li><a href="#">자주하는 질문</a></li>
				</ul>
			</li>
			<li>
				<a href="#">사회공헌</a>
				<ul class="dropdown">
					<li><a href="${pageContext.request.contextPath}/board/campaign?board_category=메이트희망기금">메이트 희망기금</a></li>
					<li><a href="${pageContext.request.contextPath}/board/campaign?board_category=캠퍼스희망기금">캠퍼스 희망기금</a></li>
					<li><a href="${pageContext.request.contextPath}/board/campaign?board_category=식수위생캠페인">식수위생 캠페인</a></li>
					<li><a href="${pageContext.request.contextPath}/board/campaign?board_category=이디야의동행">이디야의 동행</a></li>
					<li><a href="${pageContext.request.contextPath}/board/campaign?board_category=기타활동">기타 활동</a></li>
				</ul>
			</li>
			<li>
				<a href="#">이디야 소식</a>
				<ul class="dropdown">
					<li><a href="${pageContext.request.contextPath}/board/notice?board_category=notice">공지사항</a></li>
					<li><a href="${pageContext.request.contextPath}/board/event?board_category=event">이벤트</a></li>
					<li><a href="${pageContext.request.contextPath}/board/homecafe">홈카페 레시피</a></li>
					<li><a href="${pageContext.request.contextPath}/board/coupon">대량쿠폰구매</a></li>
				</ul>
			</li>
		</ul>
	</div>
</header>
<script type="text/javascript">
	$(document).ready(function() {
		var lastScroll = 0;
		$(window).scroll(function(event) {
			var scroll = $(this).scrollTop();
			if(scroll > 50){
				$(".top_nav").addClass("top_fixed");
				$(".top_align").addClass("hide");
				$(".main").addClass("changed");
			}else{
				$(".top_nav").removeClass("top_fixed");
				$(".top_align").removeClass("hide");
				$(".main").removeClass("changed");
			}
		});
	});
</script>