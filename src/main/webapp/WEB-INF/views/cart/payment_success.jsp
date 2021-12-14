<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="payment_success">

	<div class="loader">
	</div>
	
	<div class="container" style="display: none;">
	
		<img alt="success" src="${pageContext.request.contextPath}/images/cart/payment_success.png" width="128px" height="128px">
		<div class="success_txt">
			<h1>
				결제 완료
			</h1>
			<h3>
				결제가 완료되었습니다. <br><br>
				결제 일시 : <fmt:formatDate value="${paymentInfo.payment_date}" pattern="yyyy-MM-dd HH:mm:ss"/><br><br>
				결제 금액 : <fmt:formatNumber>${paymentInfo.payment_price}</fmt:formatNumber>원<br><br>
				결제 방식 : ${paymentInfo.payment_type}
			</h3>
		</div>
		<button type="button" class="payment_btn success_return">돌아 가기</button>
	
	</div>
	
</div>

<script type="text/javascript">
	$(document).ready(function () {
		
		let loader = $(".loader");
		let container = $(".container");
		
		setTimeout(function () {
			loader.css("display", "none");
			container.fadeIn(1000);
		}, 2000);
		
	})
	
	$(".success_return").on("click", function () {
		
		$.ajax({
			url: "cart/cartList",
			type: "GET",
			success: function (result) {
			
				result_list = $(result).find(".cart_list").html();
				$(".cart_list").html(result_list);
				
				result_option = $(result).find(".cart_check_option").html();
				$(".cart_check_option").html(result_option);
				
				// 다시 불러온뒤에 계산값이랑 카운트수 다시세기
				onCoupon();
				setTotalPrice();
				countSelect();
				
				// 결제하기 창 비활성화
				enabledPayBtn();
				
				// 모달창 빠져나가기
				let modal = $(".modal");
				modal.fadeOut();
				
			},
			error: function (xhr, status, error) {
				console.log(error);
			}
		});
		
	})
</script>
