<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		
		<div class="contents cartList">
			
			<div class="banner">
			
			</div>
			
			<div class="location">
				<span>HOME</span>
				<span>장바구니</span>
			</div>
			
			<div class="cart_body">
			
				<h1 class="cart_tit">장바구니</h1>
				<div class="cart_progress_wrap">
					<progress max="100" value="25" class="cart_progress"></progress>
					<ul class="progress_ul">
						<li class="progress_li on">장바구니</li>
						<li class="progress_li">결제정보입력</li>
						<li class="progress_li">결제완료</li>
						<li class="progress_li">결제내역</li>
					</ul>
				</div>
				
				<div class="underline"><span class="hide">경계선</span></div>
				
				<div class="cart_list_wrap">
						
					<!-- 이전 다음 버튼 -->
					<div class="prev_btn">
						<span>＜</span>
					</div>
					<div class="next_btn">
						<span>＞</span>
					</div>
					
					<div class="slider_container">
					
						<div class="cart_list">
							
							<c:forEach begin="1" end="1">
								<div class="item_wrap">
									<div class="item">
										
										<input type="hidden" id="prd_num" value="1">
										<input type="checkbox" id="" class="cart_chkbox item_align">
										
										<div class="cart_img item_align">
											<img alt="cart_img" src="${pageContext.request.contextPath}/images/product/bread/IMG_1510912318685.png" width="100px" height="100px">
										</div>
										
										<div class="item_name item_align" data-name="핫치킨 브리또">
											핫치킨 브리또
										</div>
										
										<div class="item_price item_align" data-price="5000">
											5,000원
										</div>
															 
										<div class="item_option item_align">
											<button type="button" class="item_del">삭제</button>
										</div>
										
									</div>
								</div>
								<div class="item_wrap">
									<div class="item">
										
										<input type="hidden" id="prd_num" value="2">
										<input type="checkbox" id="" class="cart_chkbox item_align">
										
										<div class="cart_img item_align">
											<img alt="cart_img" src="${pageContext.request.contextPath}/images/product/bread/IMG_1510912426297.png" width="100px" height="100px">
										</div>
										
										<div class="item_name item_align" data-name="게맛살 브리또">
											게맛살 브리또
										</div>
										
										<div class="item_price item_align" data-price="4500">
											4,500원
										</div>
															 
										<div class="item_option item_align">
											<button type="button" class="item_del">삭제</button>
										</div>
										
									</div>
								</div>
								<div class="item_wrap">
									<div class="item">
										
										<input type="hidden" id="prd_num" value="3">
										<input type="checkbox" id="" class="cart_chkbox item_align">
										
										<div class="cart_img item_align">
											<img alt="cart_img" src="${pageContext.request.contextPath}/images/product/bread/IMG_1527143944548.png" width="100px" height="100px">
										</div>
										
										<div class="item_name item_align" data-name="티라미수 케이크 1조각">
											티라미수 케이크 1조각
										</div>
										
										<div class="item_price item_align" data-price="6500">
											6,500원
										</div>
															 
										<div class="item_option item_align">
											<button type="button" class="item_del">삭제</button>
										</div>
										
									</div>
								</div>
							</c:forEach>
							
						</div>
						
						<div class="info_wrap">
							<h2 class="totalPrice_tit">총 상품금액</h2>
							<h3 class="totalPrice" data-total="0">0원</h3>
							
							<div class="selectList">
								<!-- append -->
								
							</div>
							
							
						</div>
					
					</div>
					
				</div>
				
				<div class="underline down"><span class="hide">경계선</span></div>
				
			</div>
			
		</div>
		
	</section>
	
	<c:import url="../temp_common/footer.jsp"></c:import>
	
</div>
<!-- Finish -->

<!-- Script -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
<script type="text/javascript">
	$(function () {
		
		// 주문표안에 넣을 배열값
		let alreadyIn = [];
		// 이미 안에 있는지 없는지 판단할 인수
		let hasValue = false;
		
		$(".cart_chkbox").on("click", function () {
				
			// 장바구니 리스트에서 값 가져오기
			let prd_num = $(this).siblings("#prd_num").val();
			let prd_name = $(this).siblings(".item_name").data("name");
			let prd_price = $(this).siblings(".item_price").data("price");
			const prd_count = 1;
			
			//console.log(prd_name);
			//console.log(prd_price);
			
			// chkbox 체크 여부
			let isCheck = $(this).is(":checked");
			
			//console.log(isCheck);
			
			if(isCheck == true){
				
				// 
				
				// 주문표안에 넣기 위한 element요소 정의
				const setItem =
				'<div class="selectOne" data-' + prd_num + '="' + prd_num + '">' +
					'<div class="select name"><span>' + prd_name + '</span></div>' +
					'<div class="select price" data-price="' + prd_price + '" data-prdprice="0">' +
						'<span>' + prd_price + '원</span></div>' +
					'<div class="select count" data-count="' + prd_count + '">' +
						'<span>' + prd_count + '개</span>' +
					'</div>' +
					'<div class="select button">' +
						'<div class="cnt_btn plus">＋</div>' +
						'<div class="cnt_btn minus">－</div>' +
						//'<div class="cnt_btn delete">×</div>' +
					'</div>' +
				'</div>';
				
				//console.log(setItem);
				
				// 추가
				$(".selectList").append(setItem);
				
				// 주문표 배열안에 값 넣기
				alreadyIn.push(prd_num);
			
				// 총합 계산기
				calculateTotal(prd_price, "plus");
				
			}else{
				
				$.each(alreadyIn, function (index, value) {
					
					if(value == prd_num){
						
						// 같은 배열의 값은 삭제시키기
						alreadyIn.splice(index, 1);
						
						// 상품의 현재 값 가져오기
						let perPrd = $('.selectOne[data-' + prd_num + '=' + prd_num + ']').children('.price').data("prdprice");
						let curPrice = 0;
						if(perPrd != 0){
							curPrice = $('.selectOne[data-' + prd_num + '=' + prd_num + ']').children('.price').data("prdprice");
						}else{
							curPrice = prd_price;
						}
						
						console.log(curPrice);
						
						// 총합 계산기
						calculateTotal(curPrice, "minus");
						
						$('.selectOne[data-' + prd_num + '=' + prd_num + ']').remove();
						
					}
					
				});

			}
		
		})
		
		// 아이템 삭제버튼 
		$(".item_del").on("click", function () {
			
			let answer = confirm("해당 아이템을 삭제 하시겠습니까?");
			
			if(answer == true){
				
				// 데이터베이스 연동 후 ajax 처리해줄거임.
				//$.ajax({
					
				//});
				
			}else{
				return false;
			}
		})
		
		// +, - 버튼
		// 동적으로 생성된거여서 document.on해야함
		$(document).on("click", ".plus", function () {
			
			// 클릭 했을때 자신의 prd_count, price가져오기
			let getPrice = $(this).parent().siblings(".price").data("price");
			let getCount = $(this).parent().siblings(".count").data("count");
			
			getCount = getCount + 1;
			// 상품별 합 가격
			let perPrdPrice = getPrice * getCount;
			
			$(this).parent().siblings(".count").data("count", getCount);
			$(this).parent().siblings(".price").data("prdprice", perPrdPrice);
			$(this).parent().siblings(".count").children().text(getCount + "개");
			$(this).parent().siblings(".price").children().text(perPrdPrice + "원");
			
			calculateTotal(getPrice, "plus");
			
		})
		$(document).on("click", ".minus", function () {
			
			// 클릭 했을때 자신의 prd_count, price가져오기
			let getPrice = $(this).parent().siblings(".price").data("price");
			let getCount = $(this).parent().siblings(".count").data("count");
			
			// 1개 미만으로 선택 불가능
			if(getCount <= 1){
				alert("1개 이상 부터 가능합니다.")
				return false;
			}
			
			getCount = getCount - 1;
			// 상품별 합 가격
			let perPrdPrice = getPrice * getCount;
			
			$(this).parent().siblings(".count").data("count", getCount);
			$(this).parent().siblings(".price").data("prdprice", perPrdPrice);
			$(this).parent().siblings(".count").children().text(getCount + "개");
			$(this).parent().siblings(".price").children().text(perPrdPrice + "원");
			
			calculateTotal(getPrice, "minus");
			
		})
		
		//
		stepBar();
		
		// click next_btn
		$(".next_btn").on("click", function () {
			
			let percent = $(".cart_progress").attr("value");
			console.log(percent);
			percent = Number(percent) + 25;
			
			let step = $(".progress_li.on").index();
			step = step + 1;
			$(".progress_li").eq(step).addClass("on");
			$(".progress_li:not(:eq(" + step+ "))").removeClass("on");
			
			$(".cart_progress").attr("value", percent);
			
			stepBar();
			
		})
		// click prev_btn
		$(".prev_btn").on("click", function () {
			
			let percent = $(".cart_progress").attr("value");
			percent = Number(percent) - 25;
			
			let step = $(".progress_li.on").index();
			step = step - 1;
			$(".progress_li").eq(step).addClass("on");
			$(".progress_li:not(:eq(" + step+ "))").removeClass("on");
			
			$(".cart_progress").attr("value", percent);
			
			stepBar();
			
		})
		
		
	})
	
	// 총 가격 계산하는 함수
	function calculateTotal(price, kind) {
		
		let totalPrice = $(".totalPrice").data("total");
		
		if(kind == "plus"){
			
			totalPrice = totalPrice + price;
			
		}else{
			
			totalPrice = totalPrice - price;
			
		}
	
		//console.log(totalPrice);
		
		$(".totalPrice").data("total", totalPrice);
		$(".totalPrice").text(totalPrice + "원");
		
	}
	
	//  progress bar 값 이용 버튼 생성 함수
	function stepBar() {
		
		if($(".cart_progress").attr("value") <= 25){
			
			$(".prev_btn").css("display", "none");
			
		}else{
			
			$(".prev_btn").css("display", "block");
			
			
		}
		if($(".cart_progress").attr("value") >= 100){
			
			$(".next_btn").css("display", "none");
			
		}else{
			
			$(".next_btn").css("display", "block");
			
		}
	}
	
</script>

</body>
</html>