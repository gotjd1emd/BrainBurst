<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
	<!-- 진행 순서도(카테고리)를 위한 hidden태그 -->
	<input type="hidden" name="navCategory" value="2">
	<div class="signup_box z-depth-2">
		 <form method="post" name="enterInfomationForm" action="<c:url value='/user/signedUp'/>">
			<div class="info-box">
				<div class="input-field">
		          <input id="email-signup" type="email" class="validate" name="email">
		          <label for="email-signup">이메일</label>
		        </div>
		        <div class="input-field">
		          <input id="name-signup" type="text" class="validate" name="name">
		          <label for="name-signup">이름</label>
		        </div>
		        <div class="input-field">
		          <input id="name-signup" type="text" class="validate" name="nickname">
		          <label for="name-signup">닉네임</label>
		        </div>
		        
		        <div class="row">
			        <div class="input-field col s6">
  				        <input id="password-signup" type="password" class="validate" name="password">
    				    <label for="password-signup">비밀번호</label>
        			</div>
			        <div class="input-field col s6">
   				       <input id="password-checked-signup" type="password" class="validate" name="password-checked">
   				       <label for="password-checked-signup">비밀번호 확인</label>
     			    </div>
			    </div>
			    
			    <div class="input-field">
		          <input id="birthDate-signup" type="text" class="validate" name="birthDate">
		          <label for="birthDate-signup">생년월일 - 주민번호 앞자리 입력</label>
		        </div>
		        <div class="input-field">
		          <input id="phoneNumber-signup" type="text" class="validate" name="phone" placeholder=" '-'를 제외한 11자리를 입력해주세요 " size="11">
		          <label for="phoneNumber-signup">전화번호</label>
		        </div>
		         <p>
			      <input name="gender" type="radio" id="man" value="man" checked/>
			      <label for="man">남자</label>
			      <input name="gender" type="radio" id="woman" value="woman"/>
			      <label for="woman">여자</label>
			    </p>
			</div>
		<button class="btn-large waves-effect waves-light next-btn" type="submit" name="action">다음</button>
		</form>
	</div>
