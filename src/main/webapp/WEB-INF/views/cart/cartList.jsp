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
						<li class="on">장바구니</li>
						<li>결제정보입력</li>
						<li>결제완료</li>
						<li>결제내역</li>
					</ul>
				</div>
				
				<div class="underline"><span class="hide">경계선</span></div>
				
				<div class="cart_list_wrap">
				
					<div class="cart_list">
						
						<c:forEach begin="1" end="3">
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
										5.000원
									</div>
														 
									<div class="item_option item_align">
										<button type="button" class="item_del">삭제</button>
									</div>
									
								</div>
							</div>
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
										5.000원
									</div>
														 
									<div class="item_option item_align">
										<button type="button" class="item_del">삭제</button>
									</div>
									
								</div>
							</div>
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
										5.000원
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
						<h3 class="totalPrice">20,000원</h3>
						
						<div class="selectList">
							<!-- append -->
							
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
		
		$(".cart_chkbox").on("click", function () {
			
			// 주문표안에 넣을 배열값
			let alreadyIn = [];
			
			// 장바구니 리스트에서 값 가져오기
			let prd_num = $(this).siblings("#prd_num").val();
			let prd_name = $(this).siblings(".item_name").data("name");
			let prd_price = $(this).siblings(".item_price").data("price");
			const prd_count = 1;
			
			console.log(prd_name);
			console.log(prd_price);
			
			// 주문표안에 이미있는지 체크하기
			getPrdNum(prd_num);
			
			// chkbox 체크 여부
			let isCheck = $(this).is(":checked");
			
			console.log(isCheck);
			
			if(isCheck == true){
				
				// 
				
				// 주문표안에 넣기 위한 element요소 정의
				const setItem =
				'<div class="selectOne">' +
					'<div class="select name"><span>' + prd_name + '</span></div>' +
					'<div class="select price"><span>' + prd_price + '원</span></div>' +
					'<div class="select count">' +
						'<span>' + prd_count + '개</span>' +
					'</div>' +
					'<div class="select button">' +
						'<div class="cnt_btn plus">＋</div>' +
						'<div class="cnt_btn minus">－</div>' +
						//'<div class="cnt_btn delete">×</div>' +
					'</div>' +
				'</div>';
				
				console.log(setItem);
				
				// 추가
				$(".selectList").append(setItem);		
			}

		})
		
		// 주문표 안에 존재하는 상품고유번호 가져오기
		function getPrdNum() {
			
			$()
			
		}
	})
</script>

</body>
</html>