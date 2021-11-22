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
				<li><a href="ediya_members_faq" id="members05">FAQ</a></li>
			</ul>	
		</div>
		
		<div class="contents members">
		
			<div class="location">
				<span>HOME</span>
				<span>이디야 멤버스</span>
				<span>이디야 카드</span>
			</div>
			
			<div class="members_wrap">
				
				<div class="members_block_wrap">
				
					<div class="members_block members_card">
						<div class="object">
							<img alt="members" src="${pageContext.request.contextPath}/images/board/members/members_block_img02.png">
						</div>
						<dl>
							<dt>이디야 카드란?</dt>
							<dd>
								이디야카드는 금액충전을 통해 언제 어디서나 이디야커피를 구입할 수 있는
								<span style="display: block;">충전형 모바일 상품권입니다.</span>
								이디야카드, 선물하기, 이디야오더 등 다양한 서비스를 지금 경험하세요!
							</dd>
						</dl>
						<ul class="circle">
							<li>
								<dl>
									<dt class="icon1"></dt>
									<dd>
										<span>모바일결제</span>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt class="icon2"></dt>
									<dd>
										<span>스탬프 자동 적립</span>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt class="icon3"></dt>
									<dd>
										<span>자동 충전기능</span>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt class="icon4"></dt>
									<dd>
										<span>전자영수증</span>
									</dd>
								</dl>
							</li>
						</ul>
					</div>
								
				</div>
				
				<div class="ul_wrap">
					<ul class="members_top">
						<li class="three on">
							<a href="#c">카드 구매</a>
						</li>
						<li class="three">
							<a href="#c">충전 및 결제</a>
						</li>
						<li class="three">
							<a href="#c">카드 이용안내</a>
						</li>
					</ul>
					<ul class="members_list">
						<li class="box01">
							<h3 class="list_title">
								이디야카드 구매는 이디야 멤버스(App)의
								<span style="display: block;">
								[이디야카드] - [카드 구매하기] 서비스를 이용하여 구매하실 수 있습니다.
								</span>
							</h3>
							<dl>
								<dt>구매 절차</dt>
								<dd>
									<ul class="list_icon">
										<li>
											<div>
												<img alt="list_icon" src="${pageContext.request.contextPath}/images/board/members/members_icon01.png">
											</div>
											<p><strong>01.</strong> 카드 디자인 선택</p>
										</li>
										<li>
											<div>
												<img alt="list_icon" src="${pageContext.request.contextPath}/images/board/members/members_icon02.png">
											</div>
											<p><strong>02.</strong> 나에게 선물하기</p>
										</li>
										<li>
											<div>
												<img alt="list_icon" src="${pageContext.request.contextPath}/images/board/members/members_icon03.png">
											</div>
											<p><strong>03.</strong> 결제수단 선택</p>
										</li>
										<li>
											<div>
												<img alt="list_icon" src="${pageContext.request.contextPath}/images/board/members/members_icon04.png">
											</div>
											<p><strong>04.</strong> 결제하기</p>
										</li>
									</ul>
								</dd>
							</dl>
						</li>
						
						<li class="box02">
							<dl>
								<dt>결제 안내</dt>
								<dd>
									<ul class="list_txt">
										<li>신용(체크)카드 / 휴대폰 소액결제 / 간편결제</li>
										<li>휴대폰 소액결제 한도는 통신사 또는 요금납부 내역 등 개인별로 상이하오니 통신사로 문의해주시기 바랍니다.</li>
										<li>이디야카드의 결제(구매 / 충전)취소는 결제일 포함 14일 이내 가능합니다.</li>
									</ul>
								</dd>
							</dl>
						</li>
						
						<li class="box01">
							<dl>
								<dt>이용 안내</dt>
								<dd>
									<ul class="list_txt">
										<li>이디야카드로 이디야커피의 모든 제품 및 상품을 구매하실 수 있습니다.</li>
										<li>이디야카드는 다른 신용카드, 현금 등 다른 결제수단과 함께 결제할 수 있습니다.</li>
										<li>이디야카드로 결제하신 금액에 대해 소득공제 혜택을 받으실 수 있습니다.</li>
									</ul>
								</dd>
							</dl>
						</li>
						
						<li class="box02">
							<dl>
								<dt>유의 사항</dt>
								<dd>
									<ul class="list_txt">
										<li>이디야카드를 구매하실 때 현금영수증이 발행되지 않으며, 매장에서 제품으로 교환 시 발행 가능합니다.</li>
										<li>거래명세서(또는 거래확인서)의 발급은 결제수단에 따라 아래의 방법으로 진행하실 수 있습니다.</li>
										<li>일반 신용카드 결제 및 핸드폰 소액결제 : 한국정보통신(KICC) 홈페이지(http://www.kicc.co.kr)</li>
										<li>간편 결제 및 포인트 결제 : 페이코(PAYCO) 홈페이지(http://www.payco.com)</li>
									</ul>
								</dd>
							</dl>
						</li>
						
					</ul>
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