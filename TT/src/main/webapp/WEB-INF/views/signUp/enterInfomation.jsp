<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
	<!-- 진행 순서도(카테고리)를 위한 hidden태그 -->
	<input id="header-title" type="hidden" value="정보입력">
	<input type="hidden" name="navCategory" value="2">
	<div class="signup-steper z-depth-1">
		<div class="signup-number-circle"><i class="material-icons signup-checking">done</i></div>
		<span class="signup-text">약관동의</span>
		<div class="signup-line"></div>
		<div class="signup-number-circle">2</div>
		<span class="signup-text">정보입력</span>
		<div class="signup-line" style="background-color: #BDBDBD"></div>
		<div class="signup-number-circle" style="background-color: #BDBDBD">3</div>
		<span class="signup-text" style="color:#BDBDBD">완료</span>
	</div>
	<div class="signup_box z-depth-2">
		 <form method="post" name="enterInfomationForm" action="<c:url value='/user/signedUp'/>">
			<div class="info-box">
				<div class="input-field">
		          <input id="email-signup" type="email" class="validate" name="email" autocomplete=off>
		          <label for="email-signup">이메일</label>
		        </div>
		        <div class="input-field">
		          <input id="name-signup" type="text" class="validate" name="name" autocomplete=off>
		          <label for="name-signup">이름</label>
		        </div>
		        <div class="input-field">
		          <input id="name-signup" type="text" class="validate" name="nickname" autocomplete=off>
		          <label for="name-signup">닉네임</label>
		        </div>
		        
		        <div class="row">
			        <div class="input-field col s6">
  				        <input id="password-signup" type="password" class="validate" name="password" autocomplete=off>
    				    <label for="password-signup">비밀번호</label>
        			</div>
			        <div class="input-field col s6">
   				       <input id="password-checked-signup" type="password" class="validate" name="password-checked" autocomplete=off>
   				       <label for="password-checked-signup">비밀번호 확인</label>
     			    </div>
			    </div>
			    
			    <div class="input-field">
		          <input id="birthDate-signup" type="text" class="validate" name="birthDate" placeholder="주민번호 앞자리만 입력해주세요" maxlength="6" autocomplete=off>
		          <label for="birthDate-signup">생년월일</label>
		        </div>
		        <div class="input-field">
		          <input id="phoneNumber-signup" type="text" class="validate" name="phone" placeholder=" '-'를 제외한 11자리를 입력해주세요 " maxlength="11" autocomplete=off>
		          <label for="phoneNumber-signup">전화번호</label>
		        </div>
		         <p>
			      <input name="gender" type="radio" id="man" value="man" checked/>
			      <label for="man">남자</label>
			      <input name="gender" type="radio" id="woman" value="woman"/>
			      <label for="woman">여자</label>
			    </p>
			</div>
		<button class="btn waves-effect waves-light next-btn color-500" type="submit" name="action">다음</button>
		<a class="btn waves-effect waves-light next-btn color-500" href="/controller/user/signUp/acceptTerms">이전</a>
		</form>
	</div>
