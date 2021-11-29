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
</head>
<body>
<!-- nav -->
<c:import url="../temp_common/header.jsp"></c:import>
<!-- //nav  -->

<section id="contentWrap" class="visual_big visual_txt_w">

<div class="sub_visual join_edit_visual">
	<h1 class="con_tt"><img src="${pageContext.request.contextPath}/images/member/update/join_edit_tt.png" width="463" height="81"></h1>
	<p class="visual_mt">Membership Information</p>
	<p class="visual_txt">고객님이 가입한 정보를 수정하실 수 있습니다.</p>
</div>


<!-- Contents -->  
  <div class="join_box_bg">
    <div class="join_box">
    	<form method="POST" action="" name="info_form" id="info_form" onSubmit="">			
			<input type="hidden" name="mobileNo" id="mobileNo" value=""/>
			<input type="hidden" name="name" id="name" value=""/>
			<input type="hidden" name="smsYn" id="smsYn" value=""/>
			<input type="hidden" name="pushYn" id="pushYn" value=""/>
			<input type="hidden" name="emailYn" id="emailYn" value=""/>
      <div class="join_con">
        <h2 class="join_tt ns">회원정보수정</h2>
        <span class="info_btn"><a href="#c" class="status_btn_g" onClick="">회원탈퇴</a></span>        
        
        <fieldset>
        <div class="join_form top_form">
        	<dl>
            <dt><label for="id">아이디(이메일)</label></dt>
            <dd><sec:authentication property="principal.username"/><a href="#c" class="edit_btn" onClick="">비밀번호 변경</a></dd>
          </dl>
                  	        
                    
          <dl>
            <dt><label for="nickname">닉네임</label></dt>
            <dd><input type="text" name="nickname" id="nickname" value="" placeholder="닉네임"></dd>
          </dl>
          <p class="info_txt">욕설 등 부적절한 단어는 제한을 받습니다.</p>
          
          <dl>
            <dt><label for="phone">휴대폰</label></dt>
            <dd><span id="ph_auth_v"><sec:authentication property="principal.phone"/></span><a href="#c" class="edit_btn" onClick="">휴대폰 변경</a></dd>											
          </dl>          
          
          <dl>
            <dt><label for="birth01">생년월일/성별</label></dt>
            <dd class="birthday">
              <sec:authentication property="principal.birthday"/>       
               </dd> 
            
            <dd class="join_radio"> 성별값 </dd>
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
</body>
</html>