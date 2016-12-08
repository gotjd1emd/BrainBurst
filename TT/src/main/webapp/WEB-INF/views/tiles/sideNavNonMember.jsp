<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <ul id="slide-out" class="side-nav fixed z-depth-2">
      
      <c:choose>
      <c:when test="${sessionScope.userDTO==null}">
      <div id="box_snb-login">
		<h5 class="center-align">-닉네임-</h5>
		<h6 class="center-align">email@gmail.com</h6>
		
		<div class="row a-button-nav">
			<a class="col s5" href="<c:url value='/user/myInfo/mypage'/>">마이페이지</a>
			<div class="col s1">
				<div class="line"></div>
			</div>
			<a class="logout-snb col s5">로그아웃</a>
		</div>
		
		<hr>
		<div class="row tPoint-printing-snb">
			<h6 class="col s6">보유중인 T : 50T</h6>
			<a class="waves-effect waves-light btn charge-btn col s6">충전</a>
		</div>
	  </div>
      </c:when>
      <c:otherwise>
      <div id="box_snb-nonlogin">
      	<h5 class="title center">로그인</h5>
      	<form id="loginForm">
        <div class="login_form">
	        <div class="input-field login-field col">
	          <input id="email" type="text" class="validate">
	          <label for="email">Email</label>
	        </div>
	        <div class="input-field login-field col">
	          <input id="password" type="password" class="validate">
	          <label for="password">Password</label>
	        </div>
	        
	        <div class="row">
	        	<a class="col s6 link" href="<c:url value='/test/myWebtoon'/>">아이디 찾기</a>
	        	<a class="col s6 link" href="<c:url value='/signUpForm'/>">비밀번호 찾기</a>
	        </div>
	        
	      </div><!-- login_form exit -->
	      <div class="row">
	       		<button class="snbtn waves-effect waves-light col s6" type="submit" name="action">로그인</button>
	       		<a class=" waves-effect waves-light col s6 snbtn"
	       		style="height: 30px;color: #fff;vertical-align: middle;line-height: 32px;text-align: center;"
	       		href="<c:url value='user/signUp/acceptTerms'/>">회원가입</a>
	      </div>
	    </form>
	  </div>
      </c:otherwise>
      </c:choose>
      </div><!-- box_snd exit -->
    </ul>
    
    