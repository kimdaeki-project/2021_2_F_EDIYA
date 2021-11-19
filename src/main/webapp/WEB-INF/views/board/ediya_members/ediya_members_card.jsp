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
		<div class="notice_banner members_card">
			<h1 class="banner_title">이디야카드</h1>
			<p class="banner_subtit">
				<span>이디야커피를 즐기는 편리한 방법, 한번의 터치로 간편하게 결제하고,</span>
				스탬프 자동적립까지 가능한 이디야카드를 소개합니다.
			</p>
			
			<!-- lnb : local navigation bar -->
			<ul class="lnb">
				<li><a href="ediya_members_main" id="members01">멤버스소개</a></li>
				<li class="on"><a href="ediya_members_card" id="members02">이디야카드</a></li>
				<li><a href="#3" id="members03">선물하기</a></li>
				<li><a href="#4" id="members04">이디야오더</a></li>
				<li><a href="#5" id="members05">FAQ</a></li>
			</ul>	
		</div>
		
		<div class="contents members">
		
			<div class="location">
				<span>HOME</span>
				<span>이디야 소식</span>
				<span>이디야 카드</span>
			</div>
			
			<div class="members_wrap">
				
				<div class="members_block_wrap">
				
					<div class="members_block">
						<div class="object">
							<img alt="members" src="${pageContext.request.contextPath}/images/board/members/members_block_img01.png">
						</div>
						<dl>
							<dt>이디야 카드란?</dt>
							<dd>
								음료 구매 시 스탬프 적립 및 FREE쿠폰의 혜택을 드리는
								<span style="display: block;">이디야만의 모바일 멤버쉽 서비스입니다.</span>
								이디야카드, 선물하기, 이디야오더 등 다양한 서비스를 지금 경험하세요!
							</dd>
						</dl>
					</div>
				
				</div>
				
				<div class="mem_block01">
					<dl>
						<dt>스탬프 적립</dt>
						<dd>
							제조음료 구매 시<br>
							스탬프 적립
						</dd>
					</dl>
					<dl>
						<dt>FREE쿠폰 사용</dt>
						<dd>
							스탬프 12개 적립 시<br>
							아메리카노(R) FREE쿠폰 증정
						</dd>
					</dl>
					<dl>
						<dt>회원 등급</dt>
						<dd>
							등급에 따른<br>
							다양한 혜택 제공
						</dd>
					</dl>
					<dl>
						<dt>선물하기</dt>
						<dd>
							이디야카드 / 쿠폰<br>
							선물하기
						</dd>
					</dl>
					<dl>
						<dt>이디야 카드</dt>
						<dd>
							간편결제 및<br>
							스탬프 자동적립
						</dd>
					</dl>
					<dl>
						<dt>이디야오더</dt>
						<dd>
							위치정보(GPS)기반<br>
							모바일 주문 시스템
						</dd>
					</dl>
				</div>
				
				<div class="mem_block02">
					<div class="max">
						<div class="object">
							<img alt="members" src="${pageContext.request.contextPath}/images/board/members/mem_block02_object.png">
						</div>
						<h3>이디야멤버스 애플리케이션으로 다양한 혜택을 받으세요!</h3>
						<p>
							이디야멤버스는 스탬프, FREE쿠폰, 이디야카드, 쿠폰 선물하기, 이디야오더 등 다양한<br>
							서비스를 제공하는 이디야커피의 공식 애플리케이션입니다.<br>
							지금 바로 구글 플레이스토어 & 애플 앱스토어에서 <em>'이디야멤버스'</em>를 다운받으세요!
						</p>
						<ul class="btn">
							<li>
								<a href="https://apps.apple.com/kr/app/%EC%9D%B4%EB%94%94%EC%95%BC%EB%A9%A4%EB%B2%84%EC%8A%A4/id1129166701" target="_blank">
									<img alt="btn" src="${pageContext.request.contextPath}/images/board/members/btn_app.png">
								</a>
							</li>
							<li>
								<a href="https://play.google.com/store/apps/details?id=com.ediya.coupon" target="_blank">
									<img alt="btn" src="${pageContext.request.contextPath}/images/board/members/btn_google.png">
								</a>
							</li>
						</ul>
						<ul class="note">
							<li>
								* 이디야멤버스 어플리케이션은 안드로이드 6.0(Marshmallow) 및 IOS 10.0이상 버전에 최적화되어 있습니다.
							</li>
							<li>
								* 갤럭시S6 및 갤럭시노트5, iPhone6 이상의 기종에 최적화되어 있으며, 일부 스마트폰의 기종 및 OS 버전에 따라 정상적으로 동작하지 않거나 설치되지 않을 수 있습니다.
							</li>
						</ul>
						<div style="padding-bottom: 0; clear: both; position: relative; width: 100%; height: 0; margin: auto;"></div>
					</div>
				</div>
				
				<div class="mem_block03">
					<div class="max">
						<h3>등급 및 혜택</h3>
						<p>
							이디야멤버스는 스탬프가 적립될 때마다 혜택도 차곡차곡 쌓입니다.<br>
							사용할수록 모이는 이디야커피만의 특별한 혜택, 이디야멤버스 회원 등급을 소개합니다!
						</p>
						<div class="lv_box">
							<dl class="members_lv family">
								<dt>Family</dt>
								<dd>
									<span>승급조건</span>
									이디야멤버스 가입 시
								</dd>
							</dl>
							<dl class="members_lv blue">
								<dt>Blue</dt>
								<dd>
									<span>승급조건</span>
									스탬프 24개 이상 적립 시
								</dd>
							</dl>
							<dl class="members_lv gold">
								<dt>Gold</dt>
								<dd>
									<span>승급조건</span>
									스탬프 48개 이상 적립 시
								</dd>
							</dl>
							<dl class="members_lv vip">
								<dt>Vip</dt>
								<dd>
									<span>승급조건</span>
									스탬프 120개 이상 적립 시
								</dd>
							</dl>
						</div>
						<dl class="guide">
							<dt>혜택안내</dt>
							<dd>
								- 스탬프 12개 적립 시, 아메리카노(R) FREE쿠폰 증정<br>
								- 등급별 다양한 프로모션 및 이벤트 참여기회 제공
							</dd>
						</dl>
						<dl class="guide">
							<dt>이용안내</dt>
							<dd>
								- 스탬프 유효기간은 스탬프 별 1년이며, 쿠폰 유효기간은 발행일 기준 1월입니다.<br>
								- 등급상승 : 해당 승급조건 충족 시 익일부터 적용됩니다.<br>
								- 등급기간 : 승급 일자로부터 1년간 유효합니다.<br>
								- 등급변경 : 승급 일자로부터 1년간 등급 유지 후 승급조건에 해당하는 등급으로 변경됩니다.<br>
								- 회원 전용 프로모션은 운영에 따라 변경될 수 있습니다.
							</dd>
						</dl>
					</div>
				</div>
				
				<div class="mem_block04">
					<div class="max">
						<h3>이디야 멤버스 이용약관</h3>
						<p>자세한 내용은 아래 약관 별 전문 보기를 통해 확인하실 수 있습니다.</p>
						<ul class="list_btn">
							<li>
								<a href="#">
									이디야멤버스 이용약관
									<span>
										<img alt="+" src="${pageContext.request.contextPath}/images/board/members/list_btn.gif">
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									개인정보 처리방침
									<span>
										<img alt="+" src="${pageContext.request.contextPath}/images/board/members/list_btn.gif">
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									위치기반 서비스 이용약관
									<span>
										<img alt="+" src="${pageContext.request.contextPath}/images/board/members/list_btn.gif">
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									마케팅 활용 및 광고성 정보 수신동의
									<span>
										<img alt="+" src="${pageContext.request.contextPath}/images/board/members/list_btn.gif">
									</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
				
			</div>
		</div>
		
	</section>
	
	<c:import url="../../temp_common/footer.jsp"></c:import>
	
	</div>
<!-- Finish -->

<!-- Script -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
	
</body>
</html>