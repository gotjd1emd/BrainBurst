<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
	
	<div class="signup_box z-depth-2">
		 <form method="post" name="enterInfomationForm" action="<c:url value='/user/signedUp'/>">
			<div class="info-box">
				<div class="input-field">
		          <input id="email-signup" type="text" class="validate" name="mail">
		          <label for="email-signup">이메일</label>
		        </div>
		        <div class="input-field">
		          <input id="name-signup" type="text" class="validate" name="name">
		          <label for="name-signup"">이름</label>
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
		          <input id="phoneNumber-signup" type="text" class="validate" name="phoneNumber">
		          <label for="phoneNumber-signup">전화번호</label>
		        </div>
		         <p>
			      <input name="gender" type="radio" id="man" checked/>
			      <label for="man">남자</label>
			      <input name="gender" type="radio" id="woman" />
			      <label for="woman">여자</label>
			    </p>
			</div>
		<button class="btn-large waves-effect waves-light" type="submit" name="action">다음</button>
		</form>
	</div>
