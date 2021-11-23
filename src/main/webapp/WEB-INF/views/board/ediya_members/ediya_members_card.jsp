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
						<li class="three on" id="card_purchase_tab">
							<a href="#c">카드 구매</a>
						</li>
						<li class="three" id="card_charge_tab">
							<a href="#c">충전 및 결제</a>
						</li>
						<li class="three" id="card_info_tab">
							<a href="#c">카드 이용안내</a>
						</li>
					</ul>
					
					<ul class="members_list" id="card_purchase">
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
					
					<ul class="members_list" id="charge_payment" style="display: none;">
						<li class="box01">
							<h3 class="list_title">
								이디야카드 충전은 이디야멤버스(App)의
								<span style="display: block;">
								[이디야카드] - [잔액충전] 서비스를 이용하여 충전하실 수 있습니다.
								</span>
							</h3>
							<ul class="list_charge">
								<li>
									<div>
										<img alt="list_charge" src="${pageContext.request.contextPath}/images/board/members/members_icon_charge01.png">
									</div>
									<dl>
										<dt>일반 충전</dt>
										<dd>
											필요 시 마다 충전금액과 결제정보를
											<span style="display: block;">입력하여 즉시 충전하는 방식</span>
										</dd>
									</dl>
								</li>
								<li>
									<div>
										<img alt="list_charge" src="${pageContext.request.contextPath}/images/board/members/members_icon_charge02.png">
									</div>
									<dl>
										<dt>자동 충전</dt>
										<dd>
											충전방법, 충전금액, 결제정보를
											<span style="display: block;">미리 설정하여 자동 충전되는 방식</span>
										</dd>
									</dl>
								</li>
							</ul>
						</li>
						
						<li class="box02">
							<dl>
								<dt>충전 방법</dt>
								<dd>
									<div class="card_mobile">
										<img alt="card_mobile" src="${pageContext.request.contextPath}/images/board/members/members_card_mobile.png">
									</div>
									
									<ul class="list_icon list_s">
										<li>										
											<div style="background-color: #f5f5f5">
												<img alt="normal" src="${pageContext.request.contextPath}/images/board/members/members_icon11.png">
											</div>
											<p><strong>01. 일반충전</strong></p>
										</li>
										<li>										
											<div style="background-color: #f5f5f5">
												<img alt="normal" src="${pageContext.request.contextPath}/images/board/members/members_icon13.png">
											</div>
											<p>충전금액 입력</p>
										</li>
										<li>										
											<div style="background-color: #f5f5f5">
												<img alt="normal" src="${pageContext.request.contextPath}/images/board/members/members_icon14.png">
											</div>
											<p>결제수단 선택</p>
										</li>
										<li>										
											<div style="background-color: #f5f5f5">
												<img alt="normal" src="${pageContext.request.contextPath}/images/board/members/members_icon03.png">
											</div>
											<p>결제하기</p>
										</li>
									</ul>
									
									<ul class="list_icon list_s">
										<li>										
											<div style="background-color: #f5f5f5">
												<img alt="normal" src="${pageContext.request.contextPath}/images/board/members/members_icon12.png">
											</div>
											<p><strong>01. 자동충전</strong><span style="font-size: 13px; display: block; color: #666; line-height: 1em;">(월정액 / 기준하한)</span></p>
										</li>
										<li>										
											<div style="background-color: #f5f5f5">
												<img alt="normal" src="${pageContext.request.contextPath}/images/board/members/members_icon13.png">
											</div>
											<p>충전기준 및 금액입력</p>
										</li>
										<li>										
											<div style="background-color: #f5f5f5">
												<img alt="normal" src="${pageContext.request.contextPath}/images/board/members/members_icon14.png">
											</div>
											<p>결제수단 선택</p>
										</li>
										<li>										
											<div style="background-color: #f5f5f5">
												<img alt="normal" src="${pageContext.request.contextPath}/images/board/members/members_icon15.png">
											</div>
											<p>등록하기</p>
										</li>
									</ul>
									
									<ul class="list_txt">
										<li>
											<strong>월정액 자동 충전</strong>이란? 매월 지정한 날짜에 선택한 금액을 자동 충전하는 방식입니다.
										</li>
										<li>
											<strong>기준하한 자동 충전</strong>이란? 이디야카드 잔액이 기준금액보다 낮을 경우 설정금액이 자동으로 충전되는 방식입니다.
										</li>
									</ul>
									
								</dd>
							</dl>
						</li>
						
						<li class="box01">
							<dl>
								<dt>충전 및 결제 안내</dt>
								<dd>
									<ul class="list_txt">
										<li>결제수단 : 신용(체크)카드, 휴대폰 소액결제, 간편결제</li>
										<li><strong>일반충전 금액 : 10,000원 ~ 500,000원(만원단위로 충전가능)</strong></li>
										<li><strong>자동충전 금액 : 10,000원 ~ 100,000원(만원단위로 충전가능)</strong></li>
										<li>일반충전의 경우, 충전 시 1회 최대 50만원을 초과할 수 없으며, 계정당 최대 충전 금액은 월 300만원을 초과할 수 없습니다.</li>
									</ul>
								</dd>
							</dl>
						</li>
						
					</ul>
					
					<ul class="members_list" id="card_info" style="display: none;">
						<li class="box01">
							<h3 class="list_title">
								이디야카드는 이디야멤버스APP의
								<span style="display: block;">
								[카드등록] 서비스를 이용하여 등록하실 수 있습니다.
								</span>
							</h3>
							<dl>
								<dt>카드 등록</dt>
								<dd>
									<ul class="list_icon">
										<li>
											<div>
												<img alt="list_icon" src="${pageContext.request.contextPath}/images/board/members/members_icon16.png">
											</div>
											<p><strong>01.</strong> 문자 메세지 확인</p>
										</li>
										<li>
											<div>
												<img alt="list_icon" src="${pageContext.request.contextPath}/images/board/members/members_icon17.png">
											</div>
											<p><strong>02.</strong> 이디야멤버스 실행</p>
										</li>
										<li>
											<div>
												<img alt="list_icon" src="${pageContext.request.contextPath}/images/board/members/members_icon18.png">
											</div>
											<p><strong>03.</strong> 카드정보 입력</p>
										</li>
										<li>
											<div>
												<img alt="list_icon" src="${pageContext.request.contextPath}/images/board/members/members_icon04.png">
											</div>
											<p><strong>04.</strong> 카드등록 완료</p>
										</li>
									</ul>
									<ul class="list_txt" style="padding-top: 50px;">
										<li>
											<span style="font-weight: 500; color: #002f6c;">
												선물 받은 이디야카드는 이디야멤버스 APP에 등록 후 사용 가능합니다. (APP 설치가 불가능한 2G폰 등 스마트폰 외 기종 사용 불가)
											</span>
										</li>
										<li>
											이디야멤버스 외 구입채널(ex. 카카오톡 등)에서 발급된 금액권의 경우 이디야멤버스 APP에 등록이 불가합니다.
										</li>
									</ul>
								</dd>
							</dl>
						</li>
						
						<li class="box02">
							<dl>
								<dt>카드 통합 신청</dt>
								<dd>
									<ul class="list_icon">
										<li>
											<div class="bg_g">
												<img alt="list_icon" src="${pageContext.request.contextPath}/images/board/members/members_icon17.png">
											</div>
											<p><strong>01.</strong> 이디야카드 클릭</p>
										</li>
										<li>
											<div class="bg_g">
												<img alt="list_icon" src="${pageContext.request.contextPath}/images/board/members/members_icon21.png">
											</div>
											<p><strong>02.</strong> 카드통합 신청</p>
										</li>
										<li>
											<div class="bg_g">
												<img alt="list_icon" src="${pageContext.request.contextPath}/images/board/members/members_icon22.png">
											</div>
											<p><strong>03.</strong> 통합대상 카드 선택</p>
										</li>
										<li>
											<div class="bg_g">
												<img alt="list_icon" src="${pageContext.request.contextPath}/images/board/members/members_icon04.png">
											</div>
											<p><strong>04.</strong> 카드통합 완료</p>
										</li>
									</ul>
									<ul class="list_txt" style="padding-top: 50px;">
										<li>
											선택하신 상위 카드의 잔액이 통합 대상 카드로 이전되며, 해당 카드는 삭제됩니다.
										</li>
									</ul>
								</dd>
							</dl>
						</li>
						
						<li class="box01">
							<dl>
								<dt>카드 분실 신고 / 해지</dt>
								<dd>
									<ul class="list_txt">
										<li>분실 신고 : 이디야카드 분실 시, 이디야 고객센터로 분실신고를 접수하여 잔액을 보호하시기 바랍니다.</li>
										<li>분실 해지 : 이디야멤버스 [이디야카드]-[분실해지]서비스를 이용하여 직접 해지 신청이 가능합니다.</li>
									</ul>
								</dd>
							</dl>
						</li>
						
						<li class="box02">
							<dl>
								<dt>카드 삭제 및 환불신청</dt>
								<dd>
									<ul class="list_icon">
										<li>
											<div class="bg_g">
												<img alt="list_icon" src="${pageContext.request.contextPath}/images/board/members/members_icon17.png">
											</div>
											<p><strong>01.</strong> 이디야카드 클릭</p>
										</li>
										<li>
											<div class="bg_g">
												<img alt="list_icon" src="${pageContext.request.contextPath}/images/board/members/members_icon19.png">
											</div>
											<p><strong>02.</strong> 카드삭제 신청</p>
										</li>
										<li>
											<div class="bg_g">
												<img alt="list_icon" src="${pageContext.request.contextPath}/images/board/members/members_icon13.png">
											</div>
											<p><strong>03.</strong> 환불계좌 입력</p>
										</li>
										<li>
											<div class="bg_g">
												<img alt="list_icon" src="${pageContext.request.contextPath}/images/board/members/members_icon26.png">
											</div>
											<p><strong>04.</strong> 환불신청 완료</p>
										</li>
									</ul>
								</dd>
							</dl>
						</li>
						
						<li class="box01">
							<dl>
								<dt>환불 안내</dt>
								<dd>
									<ul class="list_txt">
										<li>(유효기간 만료 전)최종 충전 시점의 잔액을 60% 이상 사용 시 남은 잔액을 환불 대상금액으로 삼습니다.</li>
										<li>(유효기간 만료 후)카드 잔액의 90%를 환불 대상금액으로 삼습니다.</li>
										<li>소멸시효기한(5년)만료 시 환불이 불가합니다.</li>
										<li>환불 신청 시 해당 카드는 삭제 처리되며, 환불신청 이후 고객이 지정한 계좌로 잔액을 환급해 드립니다.</li>
										<li>이벤트로 발행된 이디야카드의 경우 충전, 환불, 통합, 유효기간 연장이 불가합니다.</li>
										<li>미 등록한 이디야카드는 무기명 카드로 분실신고 및 잔액 보호가 되지 않습니다.</li>
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
	<script type="text/javascript">
		$(function () {
			
			//card_charge_tab, card_buy_tab, card_info_tab
			$(".three").on("click", function () {
				
				$(this).siblings().removeClass("on");
				$(this).addClass("on");
				
				let tab_type = $(this).attr("id");
				
				if(tab_type == "card_purchase_tab"){
					//block
					$("#card_purchase").css("display", "block");
					
					//none
					$("#charge_payment").css("display", "none");
					$("#card_info").css("display", "none");
				}else if(tab_type == "card_charge_tab"){
					//block
					$("#charge_payment").css("display", "block");
					
					//none
					$("#card_purchase").css("display", "none");
					$("#card_info").css("display", "none");
				}else{
					//block
					$("#card_info").css("display", "block");
					
					//none
					$("#charge_payment").css("display", "none");
					$("#card_purchase").css("display", "none");
				}
				
			});
			
		});
	</script>
</body>
</html>