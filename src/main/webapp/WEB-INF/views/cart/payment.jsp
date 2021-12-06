<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cart/payment.css">
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
						전자금융거래 이용약관
						개인정보의 수집 및 이용안내
						개인정보 제공 및 위탁안내
						
						<!-- 카드 그리드 -->
						NH농협
						KB국민
						신한카드
						하나카드
						BC카드
						롯데카드
						삼성카드
						현대카드
						
						<!-- ===== 카드 선택 후 정보입력 ===== -->
						<!-- 카드번호 -->
						<!-- 유효기간 -->
						<!-- 이름 -->
						<!-- 성 -->
						<!-- 생년월일 -->
						
					</div>
					<!-- 휴대폰 -->
					<div class="insert_box phone">
						<h2>◇ 휴대폰 결제</h2>
					</div>
					<!-- 카카오페이 -->
					<div class="insert_box kakao">
						<h2>◇ 카카오페이 결제</h2>
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
						
						
						<span>
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
			$(".insert_box").eq(index).addClass("on");
			$(".insert_box").not(":eq(" + index + ")").removeClass("on");
			
		})
		
	
	</script>
</html>
