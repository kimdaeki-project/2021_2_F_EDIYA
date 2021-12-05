<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/common/common.css">
<link type="text/css" rel="stylesheet" href="../css/member/update.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<!-- nav -->
<c:import url="../temp_common/header.jsp"></c:import>
<!-- //nav  -->


<!-- 회원탈퇴 안내 Popup -->
<div class="popup_wrap" id="join_email_info" style="display: none;">
<div class="popup_blind">
  <div class="login_popup">
    <h1 class="pop_tt">회원탈퇴</h1>
    <div class="pop_close"><a href="#c" onClick="close_login_pop()"><img src="${pageContext.request.contextPath}/images/member/pop/mypage_pop_close.gif" width="17" height="16" alt="창닫기" /></a></div>
    
    <h2 class="pop_con_tt">회원탈퇴 안내</h2>
    
    <form name="drawalForm" id="drawalForm" action="./delete" method="post">
    <input type="hidden" name="userName" id="dw_username" value="<sec:authentication property="principal.username"/>" >
    <fieldset>
    <div class="certify_form">
    	<div class="leave_info">
        <h3>아래 조건에 해당하는 경우 회원탈퇴가 진행되지 않습니다.</h3>
        <ul>
          <li>선불카드의 잔액 및 환불 가능금액이 남아있는 경우</li>
          <li>사용 가능한 선물쿠폰을 보유하고 있는 경우</li>
          <li>환불 가능한 선물쿠폰을 보유하고 있는 경우</li>
        </ul>
        
        <h3><em>정말로 탈퇴하시겠습니까?</em></h3>
        <p>탈퇴를 하시면 회원님의 스탬프 및 쿠폰사용이 불가하며, <span class="block_txt">이미 결제하신 스마트오더 에 대한 결제취소 및 결제수단 변경이 불가능합니다.</span></p>        
        <div class="leave_pw"><input type="password" name="password" id="dw_password" placeholder="비밀번호를 입력하세요" /></div>
        <div class="leave_agree"><input type="checkbox" id="leave_agree" /> <label for="leave_agree">동의하고 탈퇴합니다.</label></div>
      </div>
    </div>
        
    <div class="form_btn">
    	<a href="#c" class="gray_btn">취소</a>
      <input type="button" onClick="deleteId();" value="탈퇴하기" class="submit_btn submit_half_btn" />
    </div>
    </fieldset>
    </form>
  </div>
</div></div>
<!-- //회원탈퇴 안내 Popup -->


<!-- 비밀 번호 변경 절차 Popup -->
<div class="popup_wrap" id="pw_edit" style="display:none">
<div class="popup_blind">
  <div class="login_popup">
    <h1 class="pop_tt">비밀번호 변경</h1>
    <div class="pop_close"><a href="#c" onClick="close_login_pop()"><img src="${pageContext.request.contextPath}/images/member/pop/mypage_pop_close.gif" width="17" height="16" alt="창닫기" /></a></div>
    
    <h2 class="pop_con_tt">새로운 비밀번호를 설정해 주세요.</h2>
    
    <form method="" action="" name="" onSubmit="" target="">
    <fieldset>
    <div class="certify_form">	
					
      <dl>
				<dt><label for="">현재 비밀번호</label></dt>
				<dd>
					<input type="password" id="oldpwd" placeholder="현재 비밀번호를 입력하세요" class="ck_input" />
				</dd>
      </dl>
      <dl>
        <dt><label for="">신규 비밀번호</label></dt>
        <dd>
        	<input type="password" id="newpwd" placeholder="변경할 비밀번호를 입력하세요"  class="ck_input" />
        </dd>
      </dl>
      <dl>
        <dt><label for="">비밀번호 확인</label></dt>
        <dd>
        	<input type="password" id="newpwd_ck" placeholder="변경할 비밀번호를 다시한번 입력하세요"  class="ck_input" />
        </dd>
      </dl>
      
      <p class="info_txt resend_txt">안전한 비밀번호를 위해 숫자, 문자 조합하여 10자 이상으로 입력해주세요 </p>
    </div>
		
    <div class="form_btn">
    	<a href="#c" onClick="close_login_pop();" class="gray_btn">취소</a>
      <input type="button" onClick="" value="변경 하기" class="submit_btn submit_half_btn" />
    </div>
    </fieldset>
    </form>
  </div>
</div></div>
<!--//비밀 번호 변경 절차 Popup -->



<section id="contentWrap" class="visual_big visual_txt_w">

<div class="sub_visual join_edit_visual">
	<h1 class="con_tt"><img src="${pageContext.request.contextPath}/images/member/update/join_edit_tt.png" width="463" height="81"></h1>
	<p class="visual_mt">Membership Information</p>
	<p class="visual_txt">고객님이 가입한 정보를 수정하실 수 있습니다.</p>
</div>


<!-- Contents -->  
  <div class="join_box_bg">
    <div class="join_box">
    	<form method="POST" action="./update" name="info_form" id="info_form" onSubmit="">			
			<input type="hidden" name="mobileNo" id="mobileNo" value="<sec:authentication property="principal.phone"/>"/>
			<input type="hidden" name="name" id="name" value="<sec:authentication property="principal.name"/>"/>
      <div class="join_con">
        <h2 class="join_tt ns">회원정보수정</h2>
        <span class="info_btn"><a href="#c" class="status_btn_g" onClick="open_join_pop('join_email_info');">회원탈퇴</a></span>        
        
        <fieldset>
        <div class="join_form top_form">
        	<dl>
            <dt><label for="id">아이디(이메일)</label></dt>
            <dd><sec:authentication property="principal.username"/><a href="#c" class="edit_btn" onClick="pw_edit_v();">비밀번호 변경</a></dd>
          </dl>
                  	        
                    
          <dl>
            <dt><label for="nickname">닉네임</label></dt>
            <dd><input type="text" name="nickname" id="nickname" value="<sec:authentication property="principal.nickName"/>" placeholder="닉네임"></dd>
          </dl>
          <p class="info_txt">욕설 등 부적절한 단어는 제한을 받습니다.</p>
          
          <dl>
            <dt><label for="phone">휴대폰</label></dt>
            <dd><span id="ph_auth_v"><sec:authentication property="principal.phone"/></span></dd>											
          </dl>          
          
          <dl>
            <dt><label for="birth01">생년월일/성별</label></dt>
            <dd class="birthday">
              <sec:authentication property="principal.birthday"/>       
               </dd>
               <sec:authentication property="principal" var="user"/> 
               <c:if test="${user.sex eq 1}">
               	 <dd class="join_radio"> 남자 </dd>
               </c:if>
                <c:if test="${user.sex eq 2}">
               	 <dd class="join_radio"> 여자 </dd>
               </c:if>
    	
          </dl>
		          </div>
        
        </fieldset>    
      </div>



<div class="box_btn"><input type="submit" value="수정하기" class="submit_btn"></div>
	</form>
	</div>
	</div>
</section>






<!-- footer  -->
<c:import url="../temp_common/footer.jsp"></c:import>
<!-- //footer -->

<script type="text/javascript">


function pw_edit_v(){
	open_join_pop('pw_edit');
}


/* 팝업창 닫기  */
function close_login_pop() {
	$(".popup_wrap").hide();
}

/* 팝업창 열기 */
function open_join_pop(pop_id){
	$(".popup_wrap").hide();
	$("#"+pop_id).css({"top":(($(window).height()-$("#"+pop_id).outerHeight())/2+ $(window).scrollTop())+"px", 	"left":(($(window).width()-$("#"+pop_id).outerWidth())/2+ $(window).scrollLeft())+"px"}); 
	$("#"+pop_id).show();	
}


/* 회원 탈퇴  */
 function deleteId() {
	 const checked = $('#leave_agree').is(':checked');
	 const dw_password = $('#dw_password').val();
	 const dw_username = $('#dw_username').val();
	 

	 if(checked == true){
		 if(dw_password == ""){
			 alert("비밀번호를 입력해주세요");
		 }else{
			 
			 $.ajax({
					type : 'POST',
					url : './passwordCheck',
					data : { userName : dw_username , password : dw_password},
					success: function(data){
						if(data == true){
							if(confirm("삭제하시겠습니까?")){
							 	$("#drawalForm").submit(); 
							}
						}else{
							alert("비밀번호가 틀립니다!");
						}
					} 
					 
					 })
			 
		 }
		 
		 
	 }else{
		 alert("동의를 해주세요");
	 } 
	 
	 
	
	
	
}
 
</script>
</body>
</html>