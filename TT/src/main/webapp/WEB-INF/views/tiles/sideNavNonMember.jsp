<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<script>
	$(function() {
		
		if(${requestScope.login!=null}){
	         Materialize.toast('로그인을 실패하셨습니다. 아이디, 비밀번호를 확인해 주세요', 3000, 'rounded');
	         var width = $("#toast-container").width();
	          console.log(width);
	          $("#toast-container").css("margin-left", (width*-1)+209);
	      }
		
		var height = $( window ).height() - 370;
		$(".scription-box").css("height", height);
		
		$(".scription-box").mCustomScrollbar({
		    axis:"y" // horizontal scrollbar
		});
		
		$(window).resize(function name() {
			var height = $( window ).height() - 370;
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
					if (email != "") {
						$("#idfind-modal").modal('close');
						$("#idfinded-modal").modal('open');
						$("#find-email-h5").html(email);
					}else{
						$('#idfind-modal').modal('close');
						$('#id-not-find-modal').modal('open');
					}
				},
				error : function(err) {
					//이메일을 찾지 못했을 경우 이메일을 찾지 못한 모달 페이지로 이동
					$('#idfind-modal').modal('close');
					$('#id-not-find-modal').modal('open');
				}
			})
		})
		
		/*이메일 다시 찾기*/
		$("#researchEmail").click(function () {
			$('#id-not-find-modal').modal('close');
			$('#idfind-modal').modal('open');
		})
		
		/*비밀번호 찾기*/
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
					if (password != "") {
						$("#pwdfind-modal").modal('close');
						$("#pwdfinded-modal").modal('open');
						$("#find-pwd-h5").html(password);
					}else{
						$('#pwdfind-modal').modal('close');
						$('#pwd-not-find-modal').modal('open');
					}
				},
				error : function(err) {
					//이메일을 찾지 못했을 경우 이메일을 찾지 못한 모달 페이지로 이동
					$('#pwdfind-modal').modal('close');
					$('#pwd-not-find-modal').modal('open');
				}
			})
		})
		
		/*이메일 다시 찾기*/
		$("#researchPwd").click(function () {
			$('#pwd-not-find-modal').modal('close');
			$('#pwdfind-modal').modal('open');
		})
		
		/* 구독목록 클릭시 웹툰이동 */
		$(document).on("click", "#whoru", function(){
			alert("?!")
		})
	})
</script>

<ul id="slide-out" class="side-nav fixed z-depth-2">
	<c:choose>

		<c:when test="${sessionScope.userDTO.email eq 'admin@naver.com'}">
			<li class="farst-li center "><a href="<c:url value='/user/admin/adminPage'/>" class="white-text">관리자페이지</a></li>
			<li class="center"><a href="<c:url value='/user/logout'/>" class="white-text">로그아웃</a></li>
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
			<div class="scription-box mCustomScrollbar" data-mcs-theme="dark-thin" id="scriptionList" >
				<ul class="scription-ul" id="subScriptionList">
				<c:choose>
					<c:when test="${empty sessionScope.subScriptionList}">
						<li>
							<div id="nullscription" class="row a-button-nav">
								<i class="material-icons none-scription-icon">book</i>
								<p class="none-scription-text">구독된 웹툰이 없습니다.</p>
							</div>
						</li>
					</c:when>
					<c:otherwise>
						<c:forEach var="item" items="${sessionScope.subScriptionList}">
							<li id="gowebtoon" name="${item.webtoonCode}">
							<c:choose>
								<c:when test="${item.webtoonLevel eq 'funding'}">
								<a class="waves-effect waves-light scription-btn hoverable" style="background-color:#d0425c !important;">
								</c:when>
								<c:when test="${item.webtoonLevel eq 'free'}">
								<a class="waves-effect waves-light scription-btn hoverable" style="background-color:coral !important;">
								</c:when>
								<c:otherwise>
								<a class="waves-effect waves-light scription-btn hoverable" style="background-color:cornflowerblue !important;">
								</c:otherwise>
							</c:choose>
								<div>
									<img class="circle responsive-img" style="width: 40px; height: 40px;" alt="썸네일" 
										src="<c:url value='/resources${item.webtoonThumbnail}'/>">
								</div>
								<div style='margin-left:10px;'>
								<c:choose>
									<c:when test="${fn:length(item.webtoonName) <= 7}">
										<span style='font-size:16px'>
										${item.webtoonName}
										</span>
									</c:when>
									<c:otherwise>
										<span style='font-size:16px'>
										${fn:substring(item.webtoonName,0,5)}...
										</span>
									</c:otherwise>
								</c:choose>
								<br><span class="author-name" style='font-size:13px'>${item.nickname}</span>
								</div>
							</a>
							</li>
						</c:forEach>
					</c:otherwise>
				</c:choose>		
				</ul>
			</div>
		</c:when>
		<c:otherwise>
			<div id="box_snb-nonlogin">
				<h6 class="title center white-text color-400 z-depth-1">Try make your Throng</h6>
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
							<button class="snbtn waves-effect waves-light col s6 color-400 z-depth-1 hoverable" type="submit" name="action">로그인</button>
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
				<button class="modal-action waves-effect waves-green btn-flat" id="searchEmail">찾기</button>
				<a class="modal-action modal-close waves-effect waves-green btn-flat">취소</a>
			</div>
		</div>
</div>

<!-- 못찾았다. Modal Structure -->
<div id="id-not-find-modal" class="modal modal-fixed-footer modal-top">
		<div id="inputDiv">
			<div class="modal-title color-500 white-text z-depth-1">
				<h5>이메일 찾기</h5>
			</div>
			<div class="modal-content">
				<p>해당 정보에 대한 이메일을 찾지 못했습니다.</p>
				<p>오타가 났는지 확인을 해주시고, 다시 이메일을 찾으시려면 하단 이메일 찾기 버튼을 클릭해 주세요</p>
			</div>
			<div class="modal-footer">
				<a class="modal-action modal-close waves-effect waves-green btn-flat">취소</a>
				<button class="modal-action waves-effect waves-green btn-flat" id="researchEmail">이메일 찾기</button>
			</div>
		</div>
</div>

<!-- 찾았다. Modal Structure -->
<div id="idfinded-modal" class="modal modal-fixed-footer modal-top">
		<div id="inputDiv">
			<div class="modal-title color-500 white-text z-depth-1">
				<h5>이메일 찾기</h5>
			</div>
			<div class="modal-content">
				<h5 id="find-email-h5"></h5>
				<p>입력하신 정보와 일치하는 이메일을 찾았습니다!</p>
			</div>
			<div class="modal-footer">
				<a class="modal-action modal-close waves-effect waves-green btn-flat">완료</a>
			</div>
		</div>
</div>

<!-- 비밀번호 찾기 Modal Structure -->
<div id="pwdfind-modal" class="modal modal-fixed-footer modal-top">
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
</div>

<!-- 못찾았다. Modal Structure -->
<div id="pwd-not-find-modal" class="modal modal-fixed-footer modal-top">
		<div id="inputDiv">
			<div class="modal-title color-500 white-text z-depth-1">
				<h5>비밀번호 찾기</h5>
			</div>
			<div class="modal-content">
				<p>해당 정보에 대한 비밀번호를 찾지 못했습니다.</p>
				<p>오타가 났는지 확인을 해주시고, 다시 비밀번호를 찾으시려면 하단 비밀번호 찾기 버튼을 클릭해 주세요</p>
			</div>
			<div class="modal-footer">
				<a class="modal-action modal-close waves-effect waves-green btn-flat">취소</a>
				<button class="modal-action waves-effect waves-green btn-flat" id="researchPwd">비밀번호 찾기</button>
			</div>
		</div>
</div>

<!-- 찾았다. Modal Structure -->
<div id="pwdfinded-modal" class="modal modal-fixed-footer modal-top">
		<div id="inputDiv">
			<div class="modal-title color-500 white-text z-depth-1">
				<h5>비밀번호 찾기</h5>
			</div>
			<div class="modal-content">
				<h5 id="find-pwd-h5"></h5>
				<p>입력하신 정보와 일치하는 비밀번호를 찾았습니다!</p>
			</div>
			<div class="modal-footer">
				<a class="modal-action modal-close waves-effect waves-green btn-flat">완료</a>
			</div>
		</div>
</div>
