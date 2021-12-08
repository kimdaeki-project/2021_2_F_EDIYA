<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="../css/common/common.css">
<link type="text/css" rel="stylesheet" href="../css/member/mypage.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- nav  -->
<c:import url="../temp_common/header.jsp"></c:import>
<!-- /nav  -->


	<section id="contentWrap" class="visual_big visual_txt_w">
	
	<div class="sub_visual status_visual">
		<h1 class="con_tt">
			<img src="${pageContext.request.contextPath}/images/member/mypage/status_tt.png" width="753" height="81">
		</h1>
		<p class="visual_mt">My Member's Status</p>
		<p class="visual_txt">고객님의 이디야 멤버스 서비스 이용현황입니다.</p>
	</div>
	
	
	
	<div class="status_wrap">
	
		<div class="status_con">
			<div class="con_align">
				<div class="status_inform_bg">
					<div class="status_inform">
						<div class="inform_con_wrap">
							<div class="inform_con">
								<div class="level_logo">
									<img src="${pageContext.request.contextPath}/images/member/mypage/level_family.png">
								</div>
								<p class="ns level_txt">
									<span class="status_bold_txt"><sec:authentication property="principal.name"/></span>
									회원님은 <br>
									<span class="status_family_txt status_exbold_txt">회원레벨</span>
									입니다.
								</p>
							</div>
							<div class="inform_con inform_modify">
								<ul class="inform_txt">
									<li>아이디 : 	<sec:authentication property="principal.username"/> </li>
									<li>닉네임 :  <sec:authentication property="principal.nickName"/></li>
									<li>휴대폰 :  <sec:authentication property="principal.phone"/></li>
									<li>수신동의 : </li>
								</ul>
								<a href="./update" class="status_btn_b">
									회원정보 수정
								</a>
							</div>
						</div>
						<div class="inform_con con_last">
							<ul>
								<li class="status_now">
									<div class="now_icon">
										<img src="${pageContext.request.contextPath}/images/member/mypage/status_stamp_icon.png">
									</div>
									<dl class="now_con">
										<dt class="now_tt">스탬프 현황</dt>
										<dd class="now_txt">
											<span class="status_blue_txt status_bold_txt">0</span> <!-- 수정하기 -->
											/12
										</dd>
									</dl>
								</li>
								<li class="status_now">
									<div class="now_icon">
										<img src="${pageContext.request.contextPath}/images/member/mypage/status_coupon_icon.png">
									</div>
									<dl class="now_con">
										<dt class="now_tt">보유 쿠폰</dt>
										<dd class="now_txt">
											<span class="status_blue_txt status_bold_txt">0</span> <!-- 수정하기  -->
										</dd>
									</dl>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="status_con">
			<div class="con_align">
				<div class="status_condition_top">
					<h3 class="ns">
					스탬프 적립 현황
					<span>스탬프 12개를 적립하면 아메리카노(R) Free 쿠폰을 발급해 드립니다.</span>
					</h3>
					<a href="#c" class="status_btn_b stamp_status" onclick="stamp_list_v('history');">
						스탬프 적립내역
					</a>
					<a href="#c" class="status_btn_b stamp_history" onclick="stamp_list_v('status');" style="display: none">
						스탬프 현황판
					</a>
				</div>
				<div class="stamp_status">
					<ul class="stamp_list">
					<!-- 이부분 js나 JSTL로 작업을 해야할 듯? 총 12개  -->
						<li class="stamp_icon">
							<img src="${pageContext.request.contextPath}/images/member/mypage/stamp_icon_no.jpg">
						</li>
						<li class="stamp_icon">
							<img src="${pageContext.request.contextPath}/images/member/mypage/stamp_icon_no.jpg">
						</li>
						<li class="stamp_icon">
							<img src="${pageContext.request.contextPath}/images/member/mypage/stamp_icon_no.jpg">
						</li>
						<li class="stamp_icon">
							<img src="${pageContext.request.contextPath}/images/member/mypage/stamp_icon_no.jpg">
						</li>
						<li class="stamp_icon">
							<img src="${pageContext.request.contextPath}/images/member/mypage/stamp_icon_no.jpg">
						</li>
						<li class="stamp_icon">
							<img src="${pageContext.request.contextPath}/images/member/mypage/stamp_icon_no.jpg">
						</li>
						<li class="stamp_icon">
							<img src="${pageContext.request.contextPath}/images/member/mypage/stamp_icon_no.jpg">
						</li>
						<li class="stamp_icon">
							<img src="${pageContext.request.contextPath}/images/member/mypage/stamp_icon_no.jpg">
						</li>
						<li class="stamp_icon">
							<img src="${pageContext.request.contextPath}/images/member/mypage/stamp_icon_no.jpg">
						</li>
						<li class="stamp_icon">
							<img src="${pageContext.request.contextPath}/images/member/mypage/stamp_icon_no.jpg">
						</li>
						<li class="stamp_icon">
							<img src="${pageContext.request.contextPath}/images/member/mypage/stamp_icon_no.jpg">
						</li>
						<li class="stamp_icon">
							<img src="${pageContext.request.contextPath}/images/member/mypage/stamp_icon_no.jpg">
						</li>
					</ul>
				
				</div>
				<!-- 스탬프 적립내역  -->
				<div class="stamp_history" style="display: none">
					<ul class="status_list">
						<li class="list_td list_tt">
							<div class="box_w01">번호</div>
							<div class="box_w02">구분</div>
							<div class="box_w03">포인트</div>
							<div class="box_w04">매장명</div>
							<div class="box_w05">적립일</div>
							<div class="box_w06">유효기간</div>
						</li>
					</ul>
				</div>
				<dl class="stamp_notice">
					<dt>유의사항</dt>
					<dd>음료1잔당 1개의 스탬프를 적립해드립니다.</dd>
					<dd>발행된 스탬프의 유효기간은 발행일로부터 1년입니다.</dd>
					<dd>스탬프 12개를 적립하시면 3,200원의 아메리카노(R) Free 쿠폰을 발급해 드립니다.</dd>
					<dd>발행된 쿠폰의 유효기간은 발행일로부터 1개월입니다.</dd>
				</dl>
			</div>
		</div>
		
		<div class="status_con">
			<div class="con_align">
				<div class="status_condition_top">
					<h3 class="ns" id="coupon_status_text">보유 쿠폰 현황</h3>
					<a href="#c" class="status_btn_b coupon_status" onclick="coupons_list_v('history');">쿠폰 사용 내역</a>
					<a href="#c" class="status_btn_b coupon_history" style="display: none" onclick="coupons_list_v('status');">보유 쿠폰 현황</a>
				</div>
				
				<div class="coupon_status">
					<ul class="coupon_visual" id="coupon_status">
						<!-- 쿠폰 없을 시 -->
						<dl class="coupon_no">
							<dt>사용 가능한 쿠폰이 없습니다.</dt>
							<dd>스탬프를 적립하시면 쿠폰을 받으실 수 있습니다.</dd>
						</dl>
					</ul>
				</div>
				
				<div class="coupon_history" style="display: none" id="coupon_history">
					<dl class="coupon_no">
						<dt>사용 가능한 쿠폰이 없습니다.</dt>
						<dd>스탬프를 적립하시면 쿠폰을 받으실 수 있습니다.</dd>
					</dl>
				
				</div>
			</div>
		</div>
	
	</div>
	
	
	</section>





<!-- footer  -->
<c:import url="../temp_common/footer.jsp"></c:import>
<!-- /footer  -->

<script type="text/javascript">

function stamp_list_v(id){
	$(".stamp_history,.stamp_status").hide();
	$(".stamp_"+id).show();
}

function coupons_list_v(id){
	$(".coupon_history,.coupon_status").hide();
	$(".coupon_"+id).show();
	if(id == "history"){
		$("#coupon_status_text").html('쿠폰 사용내역');
	}else{
		$("#coupon_status_text").html('보유 쿠폰 현황');
	}
}
</script>
</body>
</html>