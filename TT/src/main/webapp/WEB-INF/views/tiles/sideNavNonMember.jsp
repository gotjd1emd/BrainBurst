  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <ul id="slide-out" class="side-nav fixed z-depth-2">
      <c:choose>
      
      <c:when test="${sessionScope.userDTO.email eq 'admin@naver.com'}">
      	<a class="col s5" href="<c:url value='/controller/user/admin/adminPage'/>">관리자페이지</a>
      </c:when>
      <c:when test="${sessionScope.userDTO!=null}">
      <div id="box_snb-login">
		<h5 class="center-align">- ${sessionScope.userDTO.nickname} -</h5>
		<h6 class="center-align">${sessionScope.userDTO.email}</h6>
		
		<div class="row a-button-nav">
			<a class="col s5" href="<c:url value='/user/myInfo/mypage'/>">마이페이지</a>
			<div class="col s1">
				<div class="line"></div>
			</div>
			<a class="logout-snb col s5" href="<c:url value='/user/logout'/>">로그아웃</a>
		</div>
		
		<hr class="line-nav">
		
		<div class="row tPoint-printing-snb">
			<h6 class="col s8">보유중인 T : ${sessionScope.userDTO.cashPoint}T</h6>
			<a class="waves-effect waves-light btn charge-btn col s4" href="<c:url value='/user/util/payment'/>">충전</a>
		</div>
	  </div>
      </c:when>
      <c:otherwise>
      <div id="box_snb-nonlogin">
      	<h5 class="title center">로그인</h5>
      	<form id="loginForm" action="<c:url value='/user/login'/>" method="post">
        <div class="login_form">
	        <div class="input-field login-field col">
	          <input id="email" type="text" class="validate" name="email">
	          <label for="email">Email</label>
	        </div>
	        <div class="input-field login-field col">
	          <input id="password" type="password" class="validate" name="password">
	          <label for="password">Password</label>
	        </div>
	        
	        <div class="row">
	        	<a class="col s6 link" href="#idfind-modal">아이디 찾기</a>
	        	<a class="col s6 link" href="#pwdfind-modal">비밀번호 찾기</a>
	        </div>
	        
	      </div><!-- login_form exit -->
	      <div class="row">
	       		<button class="snbtn waves-effect waves-light col s6" type="submit" name="action">로그인</button>
	       		<a class=" waves-effect waves-light col s6 snbtn"
	       		style="height: 30px;color: #fff;vertical-align: middle;line-height: 32px;text-align: center;"
	       		href="<c:url value='/user/signUp/acceptTerms'/>">회원가입</a>
	      </div>
	    </form>
	  </div>
      </c:otherwise>
      </c:choose>
      </div> <!-- box_snd exit -->
    </ul>
    
    <!-- modal -->
    
  <!-- 아이디 찾기 Modal Structure -->
  <div id="idfind-modal" class="modal modal-fixed-footer">
    <form method="post" action="/user/findEmail">
    <div class="modal-content">
		<h4>이메일(아이디) 찾기</h4>
		<p></p>
		
		<div class="row">
			<div class="input-field col s8">
				<input id="name-myinfo" type="text" class="validate" name="name">
				<label for="name-myinfo">이름</label>
			</div>
		</div>
		<div class="row">
			<div class="input-field col s4">
				<input id="name-myinfo" type="text" class="validate" name="phone">
				<label for="name-myinfo">전화번호</label>
			</div>
		</div>
	</div>
    <div class="modal-footer">
      <button type="submit" class="modal-action modal-close waves-effect waves-green btn-flat">찾기</button>
    </div>
    </form>
  </div>  
  <!-- 비밀번호 찾기 Modal Structure -->
  <div id="pwdfind-modal" class="modal modal-fixed-footer">
    <div class="modal-content">
      <h4>비밀번호 찾기</h4>
      <p></p>
      <div class="row">
			<div class="input-field col s12">
				<input id="name-myinfo" type="email" class="validate">
				<label for="name-myinfo">이메일</label>
			</div>
		</div>
		<div class="row">
			<div class="input-field col s12">
				<input id="name-myinfo" type="text" class="validate">
				<label for="name-myinfo">이름</label>
			</div>
		</div>
		<div class="row">
			<div class="input-field col s12">
				<input id="name-myinfo" type="text" class="validate">
				<label for="name-myinfo">전화번호</label>
			</div>
		</div>
    </div>
    <div class="modal-footer">
      <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat ">Agree</a>
    </div>
  </div>  