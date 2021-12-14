<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cart/payment.css">
		<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	</head>
	<body>
		
		<div class="payment_body_wrap">
			
			<div class="payment_insert_info">
				
				<h1>결제정보 입력</h1>
				
				<!-- 결제방식 선택 박스 -->
				<h3>① 결제방식 선택</h3>
				<div class="payment_kind_wrap">
					
					<div class="payment_kind">
						<div class="kind_txt">
							카드 결제
						</div>
					</div>
					
					<div class="payment_kind">
						<div class="kind_txt">
							휴대폰 결제
						</div>
					</div>
					
					<div class="payment_kind">
						<div class="kind_txt">
							카카오페이 결제
						</div>
					</div>
					
					<div class="payment_kind">
						<div class="kind_txt">
							네이버페이 결제
						</div>
					</div>
					
				</div>
				
				<!-- 결제정보 입력 박스 -->
				<div class="fade_in">
				
					<!-- 카드 -->
					<div class="insert_box card">
							<h2>◇ 카드 결제</h2>
							<h3 class="terms_use">
								이용약관
								<input type="checkbox" id="all_check">
								<label for="all_check">전체동의</label>
							</h3>
							
							<div class="terms_use_each">
							
								<input type="checkbox" class="payment_check" id="agree1">
								<label for="agree1">전자금융거래 이용약관</label>
								
								<input type="checkbox" class="payment_check" id="agree2">
								<label for="agree2">개인정보의 수집 및 이용안내</label>
								
								<input type="checkbox" class="payment_check" id="agree3">
								<label for="agree3">게인정보 제공 및 위탁안내</label>
							
							</div>
							
							<!-- 카드 그리드 -->
							<div class="card_grid">
								<div class="card_item">
									NH농협
								</div>
								<div class="card_item">
									KB국민
								</div>
								<div class="card_item">
									신한카드
								</div>
								<div class="card_item">
									하나카드
								</div>
								<div class="card_item">
									BC카드
								</div>
								<div class="card_item">
									롯데카드
								</div>
								<div class="card_item">
									삼성카드
								</div>
								<div class="card_item">
									현대카드
								</div>
							</div>
							
							<!-- ===== 카드 선택 후 정보입력 ===== -->
							<div class="card_info">
								<h2>정보 입력</h2>
								<!-- 카드번호 -->
								<span class="card_info_txt">카드번호</span>
								<div class="card_number">
								
									<input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" size="4" maxlength="4" class="card_num block01">
									-
									<input type="password" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" size="4" maxlength="4" class="card_num block02">
									-
									<input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" size="4" maxlength="4" class="card_num block03">
									-
									<input type="password" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" size="4" maxlength="4" class="card_num block04">
									
								</div>
								<!-- 유효기간 -->
								<span class="card_info_txt">유효기간</span>
								<div class="card_date">
									
									<input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" size="2" maxlength="2" class="card_month" placeholder="01">
									
									<input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" size="4" maxlength="4" class="card_year" placeholder="2020">
									
								</div>
								<!-- cvc 번호 -->
								<span class="card_info_txt">CVC번호</span>
								<div class="card_cvc">
								
									<input type="password" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" size="4" maxlength="4" class="card_cvc_number">
									
								</div>
							</div>
							
							<button type="button" class="payment_btn card">결제 하기</button>
							
					</div>
					<!-- 휴대폰 -->
					<div class="insert_box phone">
						<h2>◇ 휴대폰 결제</h2>
						
					</div>
					<!-- 카카오페이 -->
					<div class="insert_box kakao">
						<h2>◇ 카카오페이 결제</h2>
						<button type="button" class="payment_btn kakao" style="display: block;">
							<img alt="kakao" src="${pageContext.request.contextPath}/images/cart/kakao_large.png">
							카카오페이 결제
						</button>
					</div>
					<!-- 네이버페이 -->
					<div class="insert_box naver">
						<h2>◇ 네이버페이 결제</h2>
					</div>
				
				</div>
				
			</div>
			
			<div class="payment_item_info">
				
				<h1>선택 상품 리스트</h1>
				
				<div class="item_list_wrap">
					
					<c:forEach items="${selectList}" var="list">
						
						
						<span class="item_list_select" data-cart-id="${list.cart_id}">
							${list.pdName} / 
							<fmt:formatNumber>${list.pdPrice * list.pdCnt}</fmt:formatNumber> 원
							/ ${list.pdCnt} 개
						</span>
						
					</c:forEach>
					
				</div>
				
				<h1 class="total_txt">총 금액</h1>
				
				<h1 class="item_total">
					<fmt:formatNumber>${totalPrice}</fmt:formatNumber> 원		
				</h1>
				
			</div>
			
		</div>
	
	</body>
	
	<!-- Script -->
	<script type="text/javascript">		
		$(".payment_kind").on("click", function () {
		
			// 클릭한 div index 번호 가져오기
			let index = $(this).index();
			
			// 해당 index 번호의 insert_box addClass
			$(".payment_kind").eq(index).addClass("on");
			$(".payment_kind").not(":eq(" + index + ")").removeClass("on");
			
			$(".insert_box").eq(index).addClass("on");
			$(".insert_box").not(":eq(" + index + ")").removeClass("on");
			
		})
		
		/* =================================== 카드결제 =================================== */
		// 전체동의 버튼
		$("#all_check").on("click", function () {
			
			let allCheck = $(this).is(":checked");
			
			if(allCheck == true){
			
				$(".payment_check").each(function () {
					
					let isCheck = $(this).is(":checked");
					
					if(isCheck == false){
						
						$(this).prop("checked", true);
					}
					
				});
			
			}else{
				
				$(".payment_check").each(function () {
					
					let isCheck = $(this).is(":checked");
					
					if(isCheck == true){
						
						$(this).prop("checked", false);
					}
					
				});
				
			}
			
		})
		
		// 약관 동의 버튼
		$(".payment_check").on("click", function () {
			
			let isCheck = true;
			
			$(".payment_check").each(function () {
				isCheck = isCheck && $(this).is(":checked");
			});
			
			$("#all_check").prop("checked", isCheck);
			
		})
		
		// 카드사 선택 후 나오는 정보 입력
		$(".card_item").on("click", function () {
			
			// 클릭한 div index 번호 가져오기
			let index = $(this).index();
			
			$(this).addClass("on");
			$(".card_item").not(":eq(" + index + ")").removeClass("on");
			
			$(".card_info").css("display", "block");
			$(".payment_btn").css("display", "block");
			
		})
		
		// 카드결제하기 버튼
		$(".payment_btn.card").on("click", function () {
			
			let payment_type = "card";
			let card_kind = $(".card_item.on").text();
			card_kind = card_kind.trim();
			let cardNum1 = $(".card_num.block01").val();
			let cardNum2 = $(".card_num.block02").val();
			let cardNum3 = $(".card_num.block03").val();
			let cardNum4 = $(".card_num.block04").val();
			let card_number = cardNum1 + "-" + cardNum2 + "-" + cardNum3 + "-" + cardNum4;
			let month = $(".card_month").val();
			let year = $(".card_year").val();
			let card_date = year + "-" + month;
			let card_cvc = $(".card_cvc_number").val();
			
			// 카트 ID List
			let id_list = new Array();
			$(".item_list_select").each(function () {
				let getOne = $(this).data("cartId");
				id_list.push(getOne);
			});
			
			$.ajax({
				url: "../payment/paymentCard",
				type: "POST",
				data: {
					payment_type: payment_type,
					card_kind: card_kind,
					card_number: card_number,
					card_date: card_date,
					card_cvc: card_cvc,
					item_list: id_list
				},
				dataType: "html",
				success: function (result) {
					$(".payment_body_wrap").html(result);
				},
				error: function (xhr, status ,error) {
					console.log(error);
				}
			});
			
		})
		
		/* ============================================================================ */
		/* =================================== 휴대폰결제 =================================== */
		
		
		/* ================================================================================ */
		
		/* =================================== 카카오페이 결제 =================================== */
		
		$(".payment_btn.kakao").on("click", function () {
			
			let payment_type = "kakaopay"
			// 카트 ID List
			let id_list = new Array();
			$(".item_list_select").each(function () {
				let getOne = $(this).data("cartId");
				id_list.push(getOne);
			});
			
			let IMP = window.IMP;
			
			IMP.init("imp74163699");
			IMP.request_pay({
				pg: "kakaopay",
				pay_method: "card",
				merchant_uid: "merchant_" + new Date().getTime(),
				name: "클론코딩 이디야 홈페이지", 
				amount: ${totalPrice}
		        //m_redirect_url : 'redirect url'
			}, function (rsp) {
				if(rsp.success){
					
					$.ajax({
						url: "../payment/paymentKakao",
						type: "POST",
						data: {
							payment_type: payment_type,
							item_list: id_list
						},
						dataType: "html",
						success: function (result) {
							$(".payment_body_wrap").html(result);
						},
						error: function (xhr, status, error) {
							console.log(error);
						}
					});
					
				}else{
					console.log("결제실패");
				}
			});
			
		})
		
		
		/* ================================================================================ */
	</script>
</html>
