<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>EDIYA COFFEE</title>
	<c:import url="../temp_common/head_common.jsp"></c:import>
	<!-- cartList css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cart/cartList.css">
</head>
<body>
<!-- Start -->
<div id="wrapper">
	
	<c:import url="../temp_common/header.jsp"></c:import>
	
	<section id="container">
	
		<div class="cart_banner">
			
		</div>
		
		<div class="cart_body">
		
			<div class="location">
				<span>HOME</span>
				<span>장바구니</span>
			</div>
			
			<div class="top_tit">
				<h1>▶ EDIYA 장바구니</h1>
			</div>
			
			<div class="cart_list_wrap">
				
				<div class="cart_list_title">
					<div>
						선택
					</div>
					<div>
						상품 이미지
					</div>
					<div>
						상품명
					</div>
					<div>
						수량
					</div>
					<div>
						가격
					</div>
					<div>
						
					</div>
				</div>
			
				<div class="cart_list">
					
					<c:if test="${empty cartList}">
						<h1 class="cart_noItem">장바구니에 담긴 상품이 없습니다.</h1>
					</c:if>
					
					<c:forEach items="${cartList}" var="list">
						
						<div class="cart_item_wrap" data-pdnum="${list.pdNum}">
							
							<div class="box item_chk">
								<input type="checkbox" id="${list.cart_id}" class="chk" data-price="${list.pdPrice * list.pdCnt}">
								<label for="${list.cart_id}"></label>
							</div>
							
							<div class="box item_img">
								<img alt="temp" src="../images/product/bread/IMG_${list.pdImg}.png">
							</div>
							
							<div class="box item_name">
								<span>${list.pdName}</span>
							</div>
							
							<div class="box item_count">
								<div class="count_box">
								
									<button class="cnt_btn minus" data-kind="-"><span>－</span></button>
									
									<div class="cnt"><span>${list.pdCnt}</span></div>
									
									<button class="cnt_btn plus" data-kind="+"><span>＋</span></button>
									
								</div>
							</div>
							
							<div class="box item_price">
								<span>
									<fmt:formatNumber>${list.pdPrice * list.pdCnt}</fmt:formatNumber>
								</span>
									원	
							</div>
							
							<div class="box item_delete">
								<div class="del_btn" id="delete">
									<span>
										×
									</span>
								</div>
							</div>
							
						</div>
					
					</c:forEach>
					
				</div>
				
			</div>
			
			<div class="cart_check_option">
			
				<button type="button" class="check_option_btn" id="check_all">전체 선택</button>
				<span>( <span id="count_select">0</span> / ${fn:length(cartList)} )</span>
				
				<button type="button" class="check_option_btn" id="check_delete">선택 삭제</button>
				
			</div>
			
			<div class="top_tit total">
				<h2>총 금액</h2>
			</div>
			
			<div class="cart_total_wrap">
				
				<div class="total_coupon">
					<button type="button" id="modal_coupon">쿠폰 사용</button>
					<button type="button" id="add_orderinfo" class="off" disabled="disabled">결제 하기</button>
				</div>
				
				<div class="total_price">
					<span class="step1">0원</span>
					<span>-</span>
					<span class="step2">0원</span>
					<span>=</span>
					<span class="step3">0원</span>
				</div>
				
			</div>
			
		</div>
		
	</section>
	
	<c:import url="../temp_common/footer.jsp"></c:import>
	
</div>

<!-- 쿠폰 모달 창 -->
<div class="modal">
	<div class="coupon_wrap">
		<div class="coupon_contents">
		
			<div class="coupon_title">
				<sec:authentication property="principal" var="user"/>
				<h1>${user.username}님의 쿠폰함입니다.></h1>
			</div>
			
			<!-- 적용한 쿠폰 -->
			<input type="hidden" class="using_coupon" value="0" data-coupon-id="">
			
			<div class="coupon_body">
	
					<c:forEach items="${couponList}" var="list">
					
						<div class="coupon_item_wrap">
							
							<div class="coupon_item">
								
								<div class="coupon_kind">
									<h1><span class="percent">${list.couponPercent}</span> %</h1>
								</div>
								
								<div class="coupon_state">
									<h3>기한: ${list.validity} 까지</h3>
								</div>
								
								<div class="coupon_useBtn">
									<button type="button" class="coupon_btn" data-sale-percent="${list.couponPercent}" data-coupon-id="${list.couponNum}">사용</button>
								</div>
								
							</div>
							
						</div>	
						
					</c:forEach>
				
			</div>
		</div>
	</div>
</div>
<!-- 결제 모달 창 -->
<div class="modal">
	<div class="payment_wrap">
		
		
	</div>
</div>
<!-- Finish -->

<!-- Script -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
<script type="text/javascript">	
	// 결제 하기 버튼 활성화 함수
	function enabledPayBtn() {
		
		$(".cart_item_wrap").each(function () {		
			let isCheck = $(this).find(".item_chk").children(".chk").is(":checked");
			
			if(isCheck == true){
				$("#add_orderinfo").attr("disabled", false);
				$("#add_orderinfo").removeClass("off");
				
				return false;		
			}
			else{
				$("#add_orderinfo").attr("disabled", true);
				$("#add_orderinfo").addClass("off");
			}
			
		});
		
	}
	
	// 선택물품 카운팅 함수
	function countSelect() {
		
		let count = 0;
		
		$(".cart_item_wrap").each(function () {
			
			let isCheck = $(this).find(".item_chk").children(".chk").is(":checked");
			
			if(isCheck){
				count++;
			}
			
		});
		
		$("#count_select").text(count);
		
	}
	
	// 할인 쿠폰 적용시 계산 함수
	function onCoupon() {
		
		// 총합 계산값 가져오기
		let total = getTotalPrice();
		
		// 할인 비율 가져오기
		let salePercent = $(".using_coupon").val();
		
		if(salePercent != 0){
			
			// 할인 값 계산
			let salePrice = total * (salePercent/100);
			
			$(".total_price").children(".step2").text(addComma(salePrice) + "원");
		}
	}
	
	// 총 계산한 값 세팅 함수
	function setTotalPrice() {
		let getTotal = getTotalPrice();
		
		//할인 전
		$(".total_price").children(".step1").text(addComma(getTotal) + "원");
		
		// 할인 금액 가져오기
		let salePrice = Number($(".total_price").children(".step2").text().replace("원", "").replace(",",""));
		getTotal = getTotal - salePrice;
		
		// 할인 후
		getTotal = addComma(getTotal) + "원";
		$(".total_price").children(".step3").text(getTotal);
	}
	
	// 천단위 , 함수
	function addComma(value) {
		
		value = value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		return value;
		
	}
	
	// totalPrice 계산 함수
	function getTotalPrice() {
		
		let totalPrice = 0;
		
		$(".cart_item_wrap").each(function () {
			
			let isCheck = $(this).find(".item_chk").children(".chk").is(":checked");
			
			if(isCheck){
				
				let eachPrice =  $(this).find(".item_chk").children(".chk").data("price");
				totalPrice = totalPrice + eachPrice;
				
			}
			
		});
		
		return totalPrice;
	}
	
	// + - 버튼 이벤트
	$(document).on("click", ".cnt_btn", function () {
		
		let kind = $(this).data("kind");
		let cur_id = $(this).parents(".cart_item_wrap").data("pdnum");
		let cur_count = Number($(this).siblings(".cnt").text());
		
		if(kind == "+"){
			
			cur_count++;
			
		}else if(kind == "-"){
			
			if(cur_count <= 1){
				alert("1개 이하는 불가능합니다.")
				return false;
			}
			
			cur_count--;
			
		}else{
			console.log("error!");
		}
		
		//ajax
		$.ajax({
			url: "updateCount",
			type: "GET",
			data: {
				pdNum: cur_id,
				pdCnt: cur_count
			},
			success: function (result) {
				result = $.trim(result);
				
				$(result).find(".cart_item_wrap").each(function () {
					
					if(cur_id == $(this).data("pdnum")){
						
						// 바뀌는 html 선택자 (수량 과 가격부분만 새로고침)
						let ch_count = $(this).find(".item_count").html();
						let ch_price = $(this).find(".item_price").html();

						// 체크박스의 data-price값도 바꿔야 해서 체크박스 div도 바꾸기
						let ch_chk = $(this).find(".item_chk").children(".chk").data("price");
			
						$(".cart_item_wrap[data-pdnum=" + cur_id + "]").find(".item_count").html();
						$(".cart_item_wrap[data-pdnum=" + cur_id + "]").find(".item_price").html(ch_price);
						$(".cart_item_wrap[data-pdnum=" + cur_id + "]").find(".item_chk").children(".chk").data("price", ch_chk);
						
						// 수량이 바뀌어도 체크박스는 유지되므로 총합 자동계산되어야함
						if($(".cart_item_wrap[data-pdnum=" + cur_id + "]").find(".item_chk").children(".chk").is(":checked")){
							onCoupon();
							setTotalPrice();
						}
														
						return false;
					}
					
				});
				
			}
		});
		
		$(this).siblings(".cnt").children("span").text(cur_count);
		
	})
	
	// 체크박스 클릭 이벤트
	$(document).on("click", ".chk", function () {
		
		// 체크된 항목들의 총합 구하기
		onCoupon();
		setTotalPrice();
		// 선택물품 카운팅 하기
		countSelect();
		// 결제 하기 버튼 활성화
		enabledPayBtn();
		
	})
	
	// 전체선택 버튼 이벤트
	$(document).on("click", "#check_all", function () {
		
		$(".cart_item_wrap").each(function () {
			
			let isCheck = $(this).find(".item_chk").children(".chk").is(":checked");
			
			if(!isCheck){
				$(this).find(".item_chk").children(".chk").prop("checked", true);
				
				// 전체선택 이후 자동계산
				onCoupon();
				setTotalPrice();
				// 선택물품 카운팅 하기
				countSelect();
				enabledPayBtn();
			}
			
		});
		
		console.log("clcik");
	})
	
	// 삭제 버튼 이벤트
	$(document).on("click", ".del_btn", function () {
		
		let cart_id = $(this).parents(".item_delete").siblings(".item_chk").children(".chk").attr("id");
		let checkArray = new Array();
		
		// 체크된 아이디들 배열에 넣기
		$(".cart_item_wrap").each(function () {
			
			let isCheck = $(this).find(".item_chk").children(".chk").is(":checked");
			let checkId = $(this).find(".item_chk").children(".chk").attr("id");
			
			if(isCheck == true && cart_id != checkId){
				checkArray.push(checkId);
			}
		})
		
		const answer = confirm("해당 상품을 삭제하시겠습니까?");
		if(answer){
			$.ajax({
				url: "deleteOne",
				type: "GET",
				data: {
					cart_id: cart_id
				},
				success: function (result) {
					result_list = $(result).find(".cart_list").html();
					$(".cart_list").html(result_list);
					
					result_option = $(result).find(".cart_check_option").html();
					$(".cart_check_option").html(result_option);
					
					// 불러온뒤에 그전에 체크되어있던 값들 다시 체크해주기
					for(let i=0; i<checkArray.length; i++){
						$(".chk[id=" + checkArray[i] + "]").prop("checked", true);
					}
					
					// 다시 불러온뒤에 계산값이랑 카운트수 다시세기
					onCoupon();
					setTotalPrice();
					countSelect();
				},
				error: function (xhr, status, error) {
					console.log(error);
				}
			});
		}
	})
	
	// 선택삭제 버튼 이벤트
	$(document).on("click", "#check_delete", function () {
		
		let count = 0;
		
		$(".cart_item_wrap").each(function () {
			
			if($(this).find(".item_chk").children(".chk").is(":checked") != false){
				count++;
			}
			
		});
		
		let result_data;
		
		if(count > 0){
			
			let answer = confirm("선택한 상품들을 삭제하시겠습니까?");
			
			if(answer){
			
				$(".cart_item_wrap").each(function () {
					
					let isCheck = $(this).find(".item_chk").children(".chk").is(":checked");
					let checkId = $(this).find(".item_chk").children(".chk").attr("id");
					
					if(isCheck == true){
						
						$.ajax({
							url: "deleteOne",
							type: "GET",
							async: false,
							data: {
								cart_id: checkId
							},
							success: function (result) {
								result_data = result.trim();
							},
							error: function (xhr, status, error) {
								console.log(error);
							}
						});
						
					}
					
				});
				
				result_list = $(result_data).find(".cart_list").html();
				$(".cart_list").html(result_list);
				
				result_option = $(result_data).find(".cart_check_option").html();
				$(".cart_check_option").html(result_option);
				
				// 다시 불러온뒤에 계산값이랑 카운트수 다시세기
				onCoupon();
				setTotalPrice();
				countSelect();
			
			}
		}else{
			alert("선택한 물품이 없습니다.")
		}
	})
	
	// Modal Coupon 버튼 이벤트
	$("#modal_coupon").on("click", function () {
		
		// 만약 쿠폰 선택 후 물품변경 시 선택 상태가 남아있으면 초기화
		let isZero = getTotalPrice();
		if(isZero <= 0){
			
			$(".coupon_item_wrap").each(function () {
				
				$(this).find(".coupon_btn").prop("disabled", false);
				$(this).find(".coupon_btn").removeClass("off");
				$(this).find(".coupon_btn").text("사용")
				
			});
		}
		
		$(".using_coupon").val(0);
		$(".using_coupon").data("couponId", "");
		
		$(".modal").eq(0).fadeIn();
	})
	
	// Modal 바깥 영역 클릭 시 이벤트
	$(document).on("mouseup", function (e) {
		
		let modal = $(".modal");
		let isDo = Number($(".isPaymentDo").val());
		
		if(modal.has(e.target).length === 0){
			modal.fadeOut();		
		}	
	})
	
	// 첫 화면 체크박스 모두 비활성화: 뒤로가기 하면 체크되어있어서
	$(document).ready(function () {
		
		$(".cart_item_wrap").each(function () {
			
			$(this).find(".item_chk").children(".chk").prop("checked", false);
			
		});
		
	})
	
	// 쿠폰 사용 버튼 이벤트
	$(".coupon_btn").on("click", function () {
		
		// 선택 된게 없으면 실행 X
		let isZero = getTotalPrice();
		if(isZero <= 0){
		
			alert("먼저 상품을 선택해주세요!");
			return false;
			
		}
		
		else{
			
			// 쿠폰 키값
			let thisID = $(this).data("couponId");
			
			// 선택 된 버튼은 선택 됨으로 바꾸고 비활성화
			$(".coupon_item_wrap").each(function () {
				
				let thisFind = $(this).find(".coupon_btn").data("couponId");
				let isUse = $(this).find(".coupon_btn").prop("disabled");
				
				if(isUse == false && thisID == thisFind){
					$(this).find(".coupon_btn").prop("disabled", true);
					$(this).find(".coupon_btn").addClass("off");
					$(this).find(".coupon_btn").text("사용중")
				}else{
					$(this).find(".coupon_btn").prop("disabled", false);
					$(this).find(".coupon_btn").removeClass("off");
					$(this).find(".coupon_btn").text("사용")
				}
			})
			
			// 쿠폰 할인 퍼센트 값 저장
			let salePercent = Number($(this).data("salePercent"));
			$(".using_coupon").val(salePercent);
			$(".using_coupon").data("couponId", thisID);
			
			// 할인 값 적용
			onCoupon();
			setTotalPrice();
	
			// 모달창 빠져나가기
			let modal = $(".modal");
			modal.fadeOut();
			
		}
	})
	
	// 결제 하기 버튼
	$("#add_orderinfo").on("click", function () {
		
		// 선택된 쿠폰 키값
		let couponId = $(".using_coupon").data("couponId");
		// 선택된 아이템들 모아놓는 배열
		let selectItem = new Array();
		
		$(".cart_item_wrap").each(function () {
			
			let isCheck = $(this).find(".chk").is(":checked");
			
			if(isCheck){
				
				selectItem.push($(this).find(".chk").attr("id"));
				
			}
			
		});
		
		$.ajax({
			url: "getSelectList",
			type: "POST",
			data: {
				couponNum: couponId,
				selected: selectItem
			},
			success: function (result) {
				result = result.trim();
				$(".payment_wrap").html(result);
			},
			error: function (xhr, status, error) {
				console.log(error);
			}
		});
		
		$(".modal").eq(1).fadeIn();
	})
	
	
</script>

</body>
</html>