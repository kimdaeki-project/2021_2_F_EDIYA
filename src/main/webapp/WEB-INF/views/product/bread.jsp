<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>EDIYA COFFEE</title>
	<link rel="stylesheet" type="text/css" href="../css/index.css">
	<link rel="stylesheet" type="text/css" href="../css/common/common.css">
	
	<!-- 페이지 css -->
	<link rel="stylesheet" type="text/css" href="../css/product/animate.css">
	<link rel="stylesheet" type="text/css" href="../css/product/common.css">
	<link rel="stylesheet" type="text/css" href="../css/product/ediya_2017_member.css">
	<link rel="stylesheet" type="text/css" href="../css/product/ediya_2017_style.css">
	<link rel="stylesheet" type="text/css" href="../css/product/ediya_2018_festa_v180912.css">
	<link rel="stylesheet" type="text/css" href="../css/product/fonts.css">
	<link rel="stylesheet" type="text/css" href="../css/product/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="../css/product/product.bxslider.css">
	<link rel="stylesheet" type="text/css" href="../css/product/swiper.css">
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<!-- Start -->
	<div id="wrapper">
	
	<c:import url="../temp_common/header.jsp"></c:import>
	
	<section id="container">
	
		<!-- 사진 css -->
		<div class="sub_visual bakery_visual">
	    	<h1 class="con_tt">베이커리</h1>
	    	<p class="menu_txt">ALWAYS BESIDE YOU, <strong>EDIYA BAKERY</strong></p>
	  	</div>
	  	
	  	<!-- 메뉴 css -->
	  	<ul class="lnb">
			<li><a href="<!-- say* 음료링크 -->">음료</a></li>
			<li class="on"><a href="<!-- say* 베이커리링크 -->">베이커리</a></li>
			<li><a href="<!-- say* 원두링크 -->">원두</a></li>
		</ul>
		
		<!-- 우측 소메뉴 -->
		<div class="location"><span>HOME</span><span>메뉴</span>베이커리</div>
		
		<script src="../js/jquery.bxslider.js"></script>
		<script>
			var menu_slider;
			var filter = "win16|win32|win64|mac";
			if (navigator.platform && filter.indexOf(navigator.platform.toLowerCase()) >= 0) {
				var pc = false;
			}else{
				var pc = true;
			}
			$(document).ready(function(){
					menu_slider = $('.bxSlider').bxSlider({
					touchEnabled: pc,
					mode: 'horizontal',// 가로 방향 수평 슬라이드 ‘horizontal’ ‘horizontal’‘vertical’‘fade’ 슬라이드 이동 방향 설정
					speed: 500,        // 이동 속도를 설정
					pager: false,      // 현재 위치 페이징 표시 여부 설정
					moveSlides: 1,     // 슬라이드 이동시 개수
					slideWidth: 393,   // 슬라이드 너비
					minSlides: 2,      // 최소 노출 개수
					maxSlides: 3,      // 최대 노출 개수
					slideMargin: 0,    // 슬라이드간의 간격
					auto: true,        // 자동 실행 여부
					autoHover: true,   // 마우스 호버시 정지 여부
					controls: true    // 이전 다음 버튼 노출 여부
				});
			});
		</script>
		
		<!-- 상품 -->
		
		<div class="block_new ">
			<div class="con_align">
			<h3 class="nunito">추천 상품</h3>
				<div class="new_pro">
    			
    			<!-- 제품 상세 Popup -->
      			<div class="pro_detail " id="new_pro_detail" style="display:none;">
      				<div class="detail_con">
	        			<h2 id="new_pro_detail_h2">카페 아메리카노
	          				<span>Caffe Americano</span>
	          			</h2>
	          			<div class="detail_close">
	          				<a href="#c" onclick="hide_slide_detail()">
	          					<img src="../images/menu/pro_detail_close.gif" width="17" height="16" alt="창닫기">
	          				</a>
	          			</div>
	          			<p id="new_pro_detail_con">이디야의 스모키한 맛과 풍부한 바디감을 느낄 수 있는 이디야 대표 음료</p>
        			</div>
                
      				<div class="pro_comp" id="new_pro_detail_nutri">
          				<div class="pro_nutri">
          					<dl><dt>칼로리</dt><dd>(12kal)</dd></dl>
          					<dl><dt>포화지방</dt><dd>(12kal)</dd></dl>
          					<dl><dt>당류</dt><dd>(0g)</dd></dl>
          					<dl><dt>나트륨</dt><dd>(2mg)</dd></dl>
          					<dl><dt>단백질</dt><dd>(20g)</dd></dl>
          					<dl><dt>카페인</dt><dd>(22mg)</dd></dl>
          				</div> 
          				<div class="pro_allergy">알레르기 유발요인: 계란, 우유, 대두, 밀, 쇠고기, 닭고기 함유</div>
          			</div>
      			</div>
      			<!-- //제품 상세 Popup -->
      			<!-- 이동 버튼 -->
      			<!-- <a href="#" class="arrow_left"><img src="../images/common/new_btn_arrow01.gif" alt="왼쪽으로"/></a> -->
				<div class="bx-wrapper" style="max-width: 1179px;">
					<div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative; height: 356px;">
						<ul class="pro_n bxSlider" style="width: 9215%; position: relative; transition-duration: 0.5s; transform: translate3d(-3545.86px, 0px, 0px);">
							<li style="float: left; list-style: none; position: relative; width: 393px;" class="bx-clone" aria-hidden="true">
								<a href="#c" onclick="show_slide_detail('257')">
									<span class="new_icon"><img src="../images/common/best_icon.png" alt="new"></span>
									<img src="../images/product/bread/IMG_1527143944548.png" alt="초코 티라미수">
								</a>
								<p><a href="#c" onclick="show_slide_detail('257')">초코 티라미수</a></p>
							</li>
							<li style="float: left; list-style: none; position: relative; width: 393px;" class="bx-clone" aria-hidden="true">
								<a href="#c" onclick="show_slide_detail('210')">
									<span class="new_icon"><img src="../images/common/best_icon.png" alt="new"></span>
									<img src="../images/product/bread/IMG_1510912426297.png" alt="소고기 브리또">
								</a>
								<p><a href="#c" onclick="show_slide_detail('210')">소고기 브리또</a></p>
							</li>
							<li style="float: left; list-style: none; position: relative; width: 393px;" class="bx-clone" aria-hidden="true">
								<a href="#c" onclick="show_slide_detail('209')">
									<span class="new_icon"><img src="../images/common/best_icon.png" alt="new"></span>
									<img src="../images/product/bread/IMG_1510912318685.png" alt="핫치킨 브리또">
								</a>
								<p><a href="#c" onclick="show_slide_detail('209')">핫치킨 브리또</a></p>
							</li>
							<li style="float: left; list-style: none; position: relative; width: 393px;" aria-hidden="true">
								<a href="#c" onclick="show_slide_detail('349')">
									<span class="new_icon"><img src="../images/common/best_icon.png" alt="new"></span>
									<img src="../images/product/bread/IMG_1597389154897.png" alt="햄앤치즈샌드위치">
								</a>
								<p><a href="#c" onclick="show_slide_detail('349')">햄앤치즈샌드위치</a></p>
							</li>
							<li style="float: left; list-style: none; position: relative; width: 393px;" aria-hidden="true">
								<a href="#c" onclick="show_slide_detail('330')">
									<span class="new_icon"><img src="../images/common/best_icon.png" alt="new"></span>
									<img src="../images/product/bread/IMG_1566779269364.png" alt="크루아상">
								</a>
								<p><a href="#c" onclick="show_slide_detail('330')">크루아상</a></p>
							</li>
							<li style="float: left; list-style: none; position: relative; width: 393px;" aria-hidden="true">
								<a href="#c" onclick="show_slide_detail('335')">
									<span class="new_icon"><img src="../images/common/best_icon.png" alt="new"></span>
									<img src="../images/product/bread/IMG_1572224047505.png" alt="에그 베이컨 과카몰리 샌드위치">
								</a>
								<p><a href="#c" onclick="show_slide_detail('335')">에그 베이컨 과카몰리 샌드위치</a></p>
							</li>
							<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
								<a href="#c" onclick="show_slide_detail('336')">
									<span class="new_icon"><img src="../images/common/best_icon.png" alt="new"></span>
									<img src="../images/product/bread/IMG_1572224265674.png" alt="페퍼로니 피자 샌드위치">
								</a>
								<p><a href="#c" onclick="show_slide_detail('336')">페퍼로니 피자 샌드위치</a></p>
							</li>
							<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
								<a href="#c" onclick="show_slide_detail('258')">
									<span class="new_icon"><img src="../images/common/best_icon.png" alt="new"></span>
									<img src="../images/product/bread/IMG_1527144123168.png" alt="수플레 치즈 케이크">
								</a>
								<p><a href="#c" onclick="show_slide_detail('258')">수플레 치즈 케이크</a></p>
							</li>
							<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
								<a href="#c" onclick="show_slide_detail('331')">
									<span class="new_icon"><img src="../images/common/best_icon.png" alt="new"></span>
									<img src="../images/product/bread/IMG_1566780567234.png" alt="갈릭 치즈 브레드">
								</a>
								<p><a href="#c" onclick="show_slide_detail('331')">갈릭 치즈 브레드</a></p>
							</li>
							<li style="float: left; list-style: none; position: relative; width: 393px;" aria-hidden="false">
								<a href="#c" onclick="show_slide_detail('257')">
									<span class="new_icon"><img src="../images/common/best_icon.png" alt="new"></span>
									<img src="../images/product/bread/IMG_1527143944548.png" alt="초코 티라미수">
								</a>
								<p><a href="#c" onclick="show_slide_detail('257')">초코 티라미수</a></p>
							</li>
							<li style="float: left; list-style: none; position: relative; width: 393px;" aria-hidden="false">
								<a href="#c" onclick="show_slide_detail('210')">
									<span class="new_icon"><img src="../images/common/best_icon.png" alt="new"></span>
									<img src="../images/product/bread/IMG_1510912426297.png" alt="소고기 브리또">
								</a>
								<p><a href="#c" onclick="show_slide_detail('210')">소고기 브리또</a></p>
							</li>
							<li style="float: left; list-style: none; position: relative; width: 393px;" aria-hidden="false">
								<a href="#c" onclick="show_slide_detail('209')">
									<span class="new_icon"><img src="../images/common/best_icon.png" alt="new"></span>
									<img src="../images/product/bread/IMG_1510912318685.png" alt="핫치킨 브리또">
								</a>
								<p><a href="#c" onclick="show_slide_detail('209')">핫치킨 브리또</a></p>
							</li>
							<li style="float: left; list-style: none; position: relative; width: 393px;" class="bx-clone" aria-hidden="true">
								<a href="#c" onclick="show_slide_detail('349')">
									<span class="new_icon"><img src="../images/common/best_icon.png" alt="new"></span>
									<img src="../images/product/bread/IMG_1597389154897.png" alt="햄앤치즈샌드위치">
								</a>
								<p><a href="#c" onclick="show_slide_detail('349')">햄앤치즈샌드위치</a></p>
							</li>
							<li style="float: left; list-style: none; position: relative; width: 393px;" class="bx-clone" aria-hidden="true">
								<a href="#c" onclick="show_slide_detail('330')">
									<span class="new_icon"><img src="../images/common/best_icon.png" alt="new"></span>
									<img src="../images/product/bread/IMG_1566779269364.png" alt="크루아상">
								</a>
								<p><a href="#c" onclick="show_slide_detail('330')">크루아상</a></p>
							</li>
							<li style="float: left; list-style: none; position: relative; width: 393px;" class="bx-clone" aria-hidden="true">
								<a href="#c" onclick="show_slide_detail('335')">
									<span class="new_icon"><img src="../images/common/best_icon.png" alt="new"></span>
									<img src="../images/product/bread/IMG_1572224047505.png" alt="에그 베이컨 과카몰리 샌드위치">
								</a>
								<p><a href="#c" onclick="show_slide_detail('335')">에그 베이컨 과카몰리 샌드위치</a></p>
							</li>
						</ul>
					</div>
					<div class="bx-controls bx-has-controls-direction">
						<div class="bx-controls-direction">
							<a class="bx-prev" href="">Prev</a>
							<a class="bx-next" href="">Next</a>
						</div>
					</div>
				</div>
				
				
				
				
				
				<!-- <a href="#" class="arrow_right"><img src="../images/common/new_btn_arrow02.gif" alt="오른쪽으로"/></a> -->
			</div>		
		</div>
	</div>

	
	</section>
	
	<c:import url="../temp_common/footer.jsp"></c:import>
	
	</div>
<!-- Finish -->



<!-- Script -->
	<script type="text/javascript" src="../js/common.js"></script>
	<script type="text/javascript" src="../js/product/bread1.js"></script>
	<script type="text/javascript" src="../js/product/bread2.js"></script>

</body>
</html>