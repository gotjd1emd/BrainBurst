<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	$(function() {
		
		$(window).resize(function name() {
			var height = $( window ).height() - 400;
			$(".scription-box").css("height", height);
		})
		
		$("#searchEmail").click(function() {
			$.ajax({
				url : "/controller/user/findEmail",
				type : "post",
				data : ({
					name : $("#name-myinfo").val(),
					phone : $("#phone-myinfo").val()
				}),
				dataType : "text",
				success : function(result) {
					var email = result;
					if (email != null) {
						alert(email);
					}
				},
				error : function(err) {
					alert("없는 계정 정보");
				}
			})
		})

		$("#searchPassword").click(function() {
			$.ajax({
				url : "/controller/user/findPassword",
				type : "post",
				data : ({
					email : $("#email-myinfo").val(),
					name : $("#name-myinfo").val(),
					phone : $("#phone-myinfo").val()
				}),
				dataType : "text",
				success : function(result) {
					var password = result;
					if (password != null) {
						alert(password);
					}
				},
				error : function(err) {
					alert("없는 계정 정보");
				}
			})
		})
		
	})
</script>

<ul id="slide-out" class="side-nav fixed z-depth-2">
	<c:choose>

		<c:when test="${sessionScope.userDTO.email eq 'admin@naver.com'}">
			<li class="farst-li center"><a href="<c:url value='/user/admin/adminPage'/>">관리자페이지</a></li>
			<li class="center"><a href="<c:url value='/user/logout'/>">로그아웃</a></li>
		</c:when>
		<c:when test="${sessionScope.userDTO!=null}">
			<script>
				$(function() {
					var nickname = "${sessionScope.userDTO.nickname}";
					nickname = nickname.substring(0, 1);
					$("#nickname").html(nickname);
				})
			</script>
			<div id="box_snb-login" class="z-depth-1">
				<h6 class="title center white-text color-400">Try make your Throng</h6>
				<div class="center profile-icon color-A200">
					<h5 id="nickname"></h5>
				</div>
				<h6 class="center-align white-text">${sessionScope.userDTO.email}</h6>

				<div class="row a-button-nav">
					<a class="col s5 white-text" href="<c:url value='/user/myInfo/mypage'/>">마이페이지</a>
					<div class="col s1">
						<div class="line white"></div>
					</div>
					<a class="logout-snb col s5 white-text" href="<c:url value='/user/logout'/>">로그아웃</a>
				</div>

				<hr class="line-nav">

				<div class="row tPoint-printing-snb">
					<h6 class="col s8 white-text">보유 T : ${sessionScope.userDTO.cashPoint}T</h6>
					<a class="waves-effect waves-light btn charge-btn col s4 color-500" href="<c:url value='/user/util/payment'/>">충전</a>
				</div>
			</div>
			<div class="scription-box">
				<ul>
				<c:choose>
					<c:when test="${sessionScope.subScriptionList eq ''}">
						<li>구독해주세요</li>
					</c:when>
					<c:otherwise>
						<c:forEach var="item" items="${sessionScope.subScriptionList.webtoonDTO}">
							<li><a class="waves-effect waves-light scription-btn hoverable">
								<div>
									<img class="circle responsive-img" style="width: 40px; height: 40px;" alt="썸네일" 
										src="<c:url value='/resources/webtoon/webtoonThumbnail/${item.webtoonThumbnail}'/>">
								</div>
								<div>
									<span>${item.webtoonName}</span><br>
									<span class="author-name">${item.nickname}</span>
								</div>
							</a></li>
						</c:forEach>
					</c:otherwise>
				</c:choose>		
				</ul>
			</div>
		</c:when>
		<c:otherwise>
			<div id="box_snb-nonlogin">
				<h6 class="title center white-text color-400">Try make your Throng</h6>
				<form id="loginForm" action="<c:url value='/user/login'/>" method="post">
					<div class="login_form">
						<div class="input-field login-field col email-field">
							<i class="material-icons prefix login-form-icon">perm_identity</i>
							<input id="email" type="text" class="validate snb-login-form" name="email" autocomplete=off> 
							<label for="email">Email</label>
						</div>
						<div class="input-field login-field col">
							<i class="material-icons prefix login-form-icon">lock_open</i> 
							<input id="password" type="password" class="snb-login-form" name="password"> 
							<label for="password">Password</label>
						</div>
						<div class="center">
							<button class="snbtn waves-effect waves-light col s6 color-400 z-depth-1" type="submit" name="action">로그인</button>
						</div>
					</div>
					<!-- login_form exit -->
				</form>
			</div>
			<li class="center login-category">
			<a href="#id-pwd-quarter-modal">EMAIL / PASSWORD 찾기</a></li>
			<li class="center login-category">
			<a href="<c:url value='/user/signUp/acceptTerms'/>">회원가입</a></li>
		</c:otherwise>
	</c:choose>
	</div>
	<!-- box_snd exit -->
</ul>

<!-- modal -->
<script>
	$(function() {
		$("#email-find-btn").click(function() {
			$('#id-pwd-quarter-modal').modal('close');
		})
		$("#pwd-find-btn").click(function() {
			$('#id-pwd-quarter-modal').modal('close');
		})
	})
</script>
<!-- id / password 찾기 -->
<div id="id-pwd-quarter-modal" class="modal modal-fixed-footer">
	<form method="post" id="findEmail">
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
	<form method="post">
		<div id="inputDiv">
			<div class="modal-title color-500 white-text z-depth-1">
				<h5>이메일 찾기</h5>
			</div>
			<div class="modal-content">
				<p>이름과 전화번호를 입력해 주세요</p>
				<div class="row">
					<div class="input-field col s8">
						<input id="name-myinfo" type="text" class="validate" name="name" autocomplete=off> 
						<label for="name-myinfo">이름</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s8">
						<input id="phone-myinfo" type="text" class="validate" name="phone" maxlength="11" autocomplete=off> 
						<label for="name-myinfo">전화번호</label>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button
					class="modal-action modal-close waves-effect waves-green btn-flat" id="searchEmail">찾기</button>
			</div>
		</div>
	</form>
</div>

<!-- 비밀번호 찾기 Modal Structure -->
<div id="pwdfind-modal" class="modal modal-fixed-footer modal-top">
	<form method="post">
		<div class="modal-title color-500 white-text z-depth-1">
			<h5>비밀번호 찾기</h5>
		</div>
		<div class="modal-content">
			<p></p>
			<div class="row">
				<div class="input-field col s12">
					<input id="email-myinfo" type="email" class="validate" name="email" autocomplete=off>
					<label for="email-myinfo">이메일</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s12">
					<input id="name-myinfo" type="text" class="validate" name="name" autocomplete=off> 
					<label for="name-myinfo">이름</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s12">
					<input id="phone-myinfo" type="text" class="validate" name="phone" maxlength="11 " autocomplete=off> 
					<label for="phone-myinfo">전화번호</label>
				</div>
			</div>
		</div>
		<div class="modal-footer">
			<button
				class="modal-action modal-close waves-effect waves-green btn-flat" id="searchPassword">찾기</button>
		</div>
	</form>
</div>
