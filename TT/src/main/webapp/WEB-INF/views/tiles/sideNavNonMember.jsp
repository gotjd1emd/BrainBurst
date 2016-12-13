
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul id="slide-out" class="side-nav fixed z-depth-3">
	<c:choose>

		<c:when test="${sessionScope.userDTO.email eq 'admin@naver.com'}">
			<a class="col s5" href="<c:url value='/user/admin/adminPage'/>">관리자페이지</a>
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
					<a class="waves-effect waves-light btn charge-btn col s4"
						href="<c:url value='/user/util/payment'/>">충전</a>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<div id="box_snb-nonlogin">
				<h5 class="title center white-text color-400">WELCOME BACK</h5>
				<form id="loginForm" action="<c:url value='/user/login'/>"
					method="post">
					<div class="login_form">
						<div class="input-field login-field col email-field">
							<input id="email" type="text" class="validate" name="email">
							<label for="email">Email</label>
						</div>
						<div class="input-field login-field col">
							<input id="password" type="password"
								name="password"> <label for="password">Password</label>
						</div>
						<div class="center">
							<button
								class="snbtn waves-effect waves-light col s6 color-400 z-depth-1"
								type="submit" name="action">로그인</button>
						</div>
					</div>
					<!-- login_form exit -->
				</form>
			</div>
			<li class="center login-category"><a href="#id-pwd-quarter-modal">EMAIL / PASSWORD 찾기</a></li>
			<li class="center login-category"><a href="<c:url value='/user/signUp/acceptTerms'/>">회원가입</a></li>
		</c:otherwise>
	</c:choose>
	</div>
	<!-- box_snd exit -->
</ul>

<!-- modal -->
<script>
	$(function () {
		$("#email-find-btn").click(function () {
			 $('#id-pwd-quarter-modal').modal('close');
		})
		$("#pwd-find-btn").click(function () {
			 $('#id-pwd-quarter-modal').modal('close');
		})
	})
</script>
<!-- id / password 찾기 -->
<div id="id-pwd-quarter-modal" class="modal modal-fixed-footer">
	<form method="post" action="/user/findEmail">
		<div class="modal-title color-500 white-text z-depth-1">
			<h5>항목 선택</h5>
		</div>
		<div class="modal-content">
			<p>이메일 / 비밀번호중 하나를 선택해 주세요.</p>
			
			<div class="row id-pwd-find-form">
				<div class="col s6 center">
					<a id="email-find-btn" class="waves-effect waves-light btn color-400" href="#idfind-modal">이메일 찾기</a>
				</div>	
				<div class="col s6 center">
					<a id="pwd-find-btn" class="waves-effect waves-light btn color-400" href="#pwdfind-modal">비밀번호 찾기</a>				
				</div> 
			</div>
		</div>
		<div class="modal-footer">
			<a class="modal-action modal-close waves-effect waves-green btn-flat">취소</a>
		</div>
	</form>
</div>

<!-- 아이디 찾기 Modal Structure -->
<div id="idfind-modal" class="modal modal-fixed-footer modal-top">
	<form method="post" action="/user/findEmail">
		<div class="modal-title color-500 white-text z-depth-1">
			<h5>이메일 찾기</h5>
		</div>
		<div class="modal-content">
			<p>이름과 전화번호를 입력해 주세요</p>
			<div class="row">
				<div class="input-field col s8">
					<input id="name-myinfo" type="text" class="validate" name="name">
					<label for="name-myinfo">이름</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s8">
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
<div id="pwdfind-modal" class="modal modal-fixed-footer modal-top">
	<div class="modal-title color-500 white-text z-depth-1">
		<h5>이메일 찾기</h5>
	</div>
	<div class="modal-content">
		<p></p>
		<div class="row">
			<div class="input-field col s12">
				<input id="name-myinfo" type="email" class="validate"> <label
					for="name-myinfo">이메일</label>
			</div>
		</div>
		<div class="row">
			<div class="input-field col s12">
				<input id="name-myinfo" type="text" class="validate"> <label
					for="name-myinfo">이름</label>
			</div>
		</div>
		<div class="row">
			<div class="input-field col s12">
				<input id="name-myinfo" type="text" class="validate"> <label
					for="name-myinfo">전화번호</label>
			</div>
		</div>
	</div>
	<div class="modal-footer">
		<a href="#!"
			class="modal-action modal-close waves-effect waves-green btn-flat ">Agree</a>
	</div>
</div>
