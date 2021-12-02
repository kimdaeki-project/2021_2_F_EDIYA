<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
					
					<c:forEach items="${cartList}" var="list" varStatus="i">
						
						<div class="cart_item_wrap" data-pdnum="${list.cart_id}">
							
							<div class="box item_chk">
								<input type="checkbox" id="check${i.count}" class="chk" data-price="${list.pdPrice * list.pdCnt}">
								<label for="check${i.count}"></label>
							</div>
							
							<div class="box item_img">
								<img alt="temp" src="${pageContext.request.contextPath}/images/product/bread/IMG_1510912318685.png">
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
				
				<div>
				</div>
				
				<div class="total_price">
					0원
				</div>
				
			</div>
			
		</div>
		
	</section>
	
	<c:import url="../temp_common/footer.jsp"></c:import>
	
</div>
<!-- Finish -->

<!-- Script -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
<script type="text/javascript">
	
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
	
	// 총 계산한 값 세팅 함수
	function setTotalPrice() {
		let getTotal = getTotalPrice();
		
		getTotal = addComma(getTotal) + "원";
		$(".total_price").text(getTotal);
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
	$(".cnt_btn").on("click", function () {
		
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
		setTotalPrice();
		// 선택물품 카운팅 하기
		countSelect();
		
	})
	
	// 전체선택 버튼 이벤트
	$("#check_all").on("click", function () {
		
		$(".cart_item_wrap").each(function () {
			
			let isCheck = $(this).find(".item_chk").children(".chk").is(":checked");
			
			if(!isCheck){
				$(this).find(".item_chk").children(".chk").prop("checked", true);
				
				// 전체선택 이후 자동계산
				setTotalPrice();
				// 선택물품 카운팅 하기
				countSelect();
			}
			
		});
		
		console.log("clcik");
	})
	
	// 선택삭제 버튼 이벤트
	$("#check_delete").on("click", function () {
		
		console.log("click");
	})
	
</script>

</body>
</html>