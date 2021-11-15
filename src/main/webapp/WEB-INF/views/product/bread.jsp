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
	<link rel="stylesheet" type="text/css" href="../css/product/bread/bread.css">
	<link rel="stylesheet" type="text/css" href="../css/product/product.bxslider.css">
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
		
		<!-- 추천 상품 -->
		
		<div class="block_new ">
			<div class="con_align">
				<h3 class="nunito">추천 상품</h3>
				<div class="new_pro">
    	
		    		<!-- 제품 상세 Popup -->
		      		<div class="pro_detail " id="new_pro_detail" style="display:none;">
			      		<div class="detail_con">
			        		<h2 id="new_pro_detail_h2">카페 아메리카노<span>Caffe Americano</span></h2>
			          			<div class="detail_close"><a href="#c" onclick="hide_slide_detail()"><img src="../images/menu/pro_detail_close.gif" width="17" height="16" alt="창닫기"></a></div>
			          		<p id="new_pro_detail_con">이디야의 스모키한 맛과 풍부한 바디감을 느낄 수 있는 이디야 대표 음료</p>
			        	</div>
		        
			      		<div class="pro_comp" id="new_pro_detail_nutri">
				        	
				        	<!-- 상품 정보 -->
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
		          	<div class="bx-wrapper" style="max-width: 1179px;"><div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative; height: 356px;">
		          	<ul class="pro_n bxSlider" style="width: 28215%; position: relative; transition-duration: 0s; transform: translate3d(-1969.92px, 0px, 0px);">
			          	<li style="float: left; list-style: none; position: relative; width: 393px;" class="bx-clone" aria-hidden="true">
							<a href="#c" onclick="show_slide_detail('184')">
								<span class="new_icon">
									<img src="/images/common/best_icon.png" alt="new">
								</span>
									<img src="/files/menu/IMG_1523869208680.png" alt="콜드브루 니트로">
							</a>
							<p><a href="#c" onclick="show_slide_detail('184')">콜드브루 니트로</a></p>
						</li>
						<li style="float: left; list-style: none; position: relative; width: 393px;" class="bx-clone" aria-hidden="true">
							<a href="#c" onclick="show_slide_detail('238')">
								<span class="new_icon">
									<img src="/images/common/best_icon.png" alt="new">
								</span>
								<img src="/files/menu/IMG_1511829699286.png" alt="제주청귤 블라썸">
							</a>
							<p><a href="#c" onclick="show_slide_detail('238')">제주청귤 블라썸</a></p>
						</li>
						<li style="float: left; list-style: none; position: relative; width: 393px;" class="bx-clone" aria-hidden="true">
							<a href="#c" onclick="show_slide_detail('240')">
								<span class="new_icon">
									<img src="/images/common/best_icon.png" alt="new">
								</span><img src="/files/menu/IMG_1511829751169.png" alt="석류 애플라임">
							</a>
							<p><a href="#c" onclick="show_slide_detail('240')">석류 애플라임</a></p>
						</li>
						<li style="float: left; list-style: none; position: relative; width: 393px;" aria-hidden="true">
							<a href="#c" onclick="show_slide_detail('320')">
								<span class="new_icon">
									<img src="/images/common/best_icon.png" alt="new">
								</span>
								<img src="/files/menu/IMG_1564379279645.png" alt="이디야 콤부차 복숭아망고">
							</a>
							<p><a href="#c" onclick="show_slide_detail('320')">이디야 콤부차 복숭아망고</a></p>
						</li>
						<li style="float: left; list-style: none; position: relative; width: 393px;" aria-hidden="true">
							<a href="#c" onclick="show_slide_detail('321')">
								<span class="new_icon">
									<img src="/images/common/best_icon.png" alt="new">
								</span><img src="/files/menu/IMG_1564379353475.png" alt="이디야 콤부차 청포도레몬">
							</a>
							<p><a href="#c" onclick="show_slide_detail('321')">이디야 콤부차 청포도레몬</a></p>
						</li>
						<li style="float: left; list-style: none; position: relative; width: 393px;" aria-hidden="false">
							<a href="#c" onclick="show_slide_detail('352')">
								<span class="new_icon">
									<img src="/images/common/new_icon.png" alt="new">
								</span>
								<img src="/files/menu/IMG_1584942100701.png" alt="ICED디카페인 콜드브루 아메리카노 ">
							</a>
							<p><a href="#c" onclick="show_slide_detail('352')">ICED디카페인 콜드브루 아메리카노 </a></p>
						</li>
						<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 393px;">
							<a href="#c" onclick="show_slide_detail('353')">
								<span class="new_icon">
									<img src="/images/common/new_icon.png" alt="new">
								</span>
								<img src="/files/menu/IMG_1584944055215.png" alt="ICED디카페인 콜드브루 라떼">
							</a>
							<p><a href="#c" onclick="show_slide_detail('353')">ICED디카페인 콜드브루 라떼</a></p>
						</li>
						<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 393px;">
							<a href="#c" onclick="show_slide_detail('356')">
								<span class="new_icon">
									<img src="/images/common/new_icon.png" alt="new">
								</span><img src="/files/menu/IMG_1584945139538.png" alt="ICED디카페인 흑당 콜드브루 ">
							</a>
							<p><a href="#c" onclick="show_slide_detail('356')">ICED디카페인 흑당 콜드브루 </a></p>
						</li>
						<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
							<a href="#c" onclick="show_slide_detail('357')">
								<span class="new_icon">
									<img src="/images/common/new_icon.png" alt="new">
								</span><img src="/files/menu/IMG_1585298262644.png" alt="(EX)ICED디카페인 흑당 콜드브루">
							</a>
							<p><a href="#c" onclick="show_slide_detail('357')">(EX)ICED디카페인 흑당 콜드브루</a></p>
						</li>
						<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
							<a href="#c" onclick="show_slide_detail('358')">
								<span class="new_icon">
									<img src="/images/common/new_icon.png" alt="new">
								</span><img src="/files/menu/IMG_1584945456727.png" alt="ICED디카페인 연유 콜드브루">
							</a>
							<p><a href="#c" onclick="show_slide_detail('358')">ICED디카페인 연유 콜드브루</a></p>
						</li>
						<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
							<a href="#c" onclick="show_slide_detail('360')">
								<span class="new_icon">
									<img src="/images/common/new_icon.png" alt="new">
								</span><img src="/files/menu/IMG_1584945941218.png" alt="ICED디카페인 콜드브루 크림넛">
							</a>
							<p><a href="#c" onclick="show_slide_detail('360')">ICED디카페인 콜드브루 크림넛</a></p>
						</li>
						<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
							<a href="#c" onclick="show_slide_detail('362')">
								<span class="new_icon">
									<img src="/images/common/new_icon.png" alt="new">
								</span><img src="/files/menu/IMG_1585298211635.png" alt="(EX)ICED디카페인 버블 흑당 콜드브루">
							</a>
							<p><a href="#c" onclick="show_slide_detail('362')">(EX)ICED디카페인 버블 흑당 콜드브루</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('309')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1563238180331.png" alt="흑당 라떼"></a>
						<p><a href="#c" onclick="show_slide_detail('309')">흑당 라떼</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('310')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1563238936785.png" alt="(EX)흑당 라떼"></a>
						<p><a href="#c" onclick="show_slide_detail('310')">(EX)흑당 라떼</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('311')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1563239291456.png" alt="ICED흑당 콜드브루"></a>
						<p><a href="#c" onclick="show_slide_detail('311')">ICED흑당 콜드브루</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('312')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1563241039133.png" alt="(EX)ICED흑당 콜드브루"></a>
						<p><a href="#c" onclick="show_slide_detail('312')">(EX)ICED흑당 콜드브루</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('313')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1563242110490.png" alt="버블 흑당 라떼"></a>
						<p><a href="#c" onclick="show_slide_detail('313')">버블 흑당 라떼</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('314')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1563250399596.png" alt="(EX)버블 흑당 라떼"></a>
						<p><a href="#c" onclick="show_slide_detail('314')">(EX)버블 흑당 라떼</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('315')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1563250718130.png" alt="ICED버블 흑당 콜드브루"></a>
						<p><a href="#c" onclick="show_slide_detail('315')">ICED버블 흑당 콜드브루</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('316')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1563250807738.png" alt="(EX)ICED버블 흑당 콜드브루"></a>
						<p><a href="#c" onclick="show_slide_detail('316')">(EX)ICED버블 흑당 콜드브루</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('333')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1569485085454.png" alt="ICED연유 카페라떼 "></a>
						<p><a href="#c" onclick="show_slide_detail('333')">ICED연유 카페라떼 </a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('332')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1569484383380.png" alt="HOT연유 카페라떼 "></a>
						<p><a href="#c" onclick="show_slide_detail('332')">HOT연유 카페라떼 </a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('334')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1569485171449.png" alt="ICED연유 콜드브루"></a>
						<p><a href="#c" onclick="show_slide_detail('334')">ICED연유 콜드브루</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('297')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1558502162288.png" alt="ICED콜드브루 아메리카노"></a>
						<p><a href="#c" onclick="show_slide_detail('297')">ICED콜드브루 아메리카노</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('266')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1529902646309.png" alt="(EX)ICED 유자피나콜라다"></a>
						<p><a href="#c" onclick="show_slide_detail('266')">(EX)ICED 유자피나콜라다</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('250')"><span class="new_icon"><img src="/images/common/new_icon.png" alt="new"></span><img src="/files/menu/IMG_1524707533812.png" alt="꿀복숭아 플랫치노"></a>
						<p><a href="#c" onclick="show_slide_detail('250')">꿀복숭아 플랫치노</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('248')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1523925474425.png" alt="ICED콜드브루 라떼"></a>
						<p><a href="#c" onclick="show_slide_detail('248')">ICED콜드브루 라떼</a></p>
				</li>
								<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 393px;">
						<a href="#c" onclick="show_slide_detail('249')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1523925480622.png" alt="ICED콜드브루 화이트 비엔나"></a>
						<p><a href="#c" onclick="show_slide_detail('249')">ICED콜드브루 화이트 비엔나</a></p>
				</li>
								<li style="float: left; list-style: none; position: relative; width: 393px;" aria-hidden="true">
						<a href="#c" onclick="show_slide_detail('184')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1523869208680.png" alt="콜드브루 니트로"></a>
						<p><a href="#c" onclick="show_slide_detail('184')">콜드브루 니트로</a></p>
				</li>
								<li style="float: left; list-style: none; position: relative; width: 393px;" aria-hidden="true">
						<a href="#c" onclick="show_slide_detail('238')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1511829699286.png" alt="제주청귤 블라썸"></a>
						<p><a href="#c" onclick="show_slide_detail('238')">제주청귤 블라썸</a></p>
				</li>
								<li style="float: left; list-style: none; position: relative; width: 393px;" aria-hidden="true">
						<a href="#c" onclick="show_slide_detail('240')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1511829751169.png" alt="석류 애플라임"></a>
						<p><a href="#c" onclick="show_slide_detail('240')">석류 애플라임</a></p>
				</li>
							<li style="float: left; list-style: none; position: relative; width: 393px;" class="bx-clone" aria-hidden="true">
						<a href="#c" onclick="show_slide_detail('320')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1564379279645.png" alt="이디야 콤부차 복숭아망고"></a>
						<p><a href="#c" onclick="show_slide_detail('320')">이디야 콤부차 복숭아망고</a></p>
				</li><li style="float: left; list-style: none; position: relative; width: 393px;" class="bx-clone" aria-hidden="true">
						<a href="#c" onclick="show_slide_detail('321')"><span class="new_icon"><img src="/images/common/best_icon.png" alt="new"></span><img src="/files/menu/IMG_1564379353475.png" alt="이디야 콤부차 청포도레몬"></a>
						<p><a href="#c" onclick="show_slide_detail('321')">이디야 콤부차 청포도레몬</a></p>
				</li><li style="float: left; list-style: none; position: relative; width: 393px;" class="bx-clone" aria-hidden="true">
						<a href="#c" onclick="show_slide_detail('352')"><span class="new_icon"><img src="/images/common/new_icon.png" alt="new"></span><img src="/files/menu/IMG_1584942100701.png" alt="ICED디카페인 콜드브루 아메리카노 "></a>
						<p><a href="#c" onclick="show_slide_detail('352')">ICED디카페인 콜드브루 아메리카노 </a></p>
				</li></ul></div><div class="bx-controls bx-has-controls-direction"><div class="bx-controls-direction"><a class="bx-prev" href="">Prev</a><a class="bx-next" href="">Next</a></div></div></div>
			<!--a href="#" class="arrow_right"><img src="../images/common/new_btn_arrow02.gif" alt="오른쪽으로"/></a-->
		</div>		
	</div>
</div>
	
	</section>
	
	<c:import url="../temp_common/footer.jsp"></c:import>
	
	</div>
<!-- Finish -->



<!-- Script -->
	<script type="text/javascript" src="../js/common.js"></script>

</body>
</html>