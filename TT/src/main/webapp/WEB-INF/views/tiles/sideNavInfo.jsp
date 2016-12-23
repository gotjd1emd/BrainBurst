<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<ul id="slide-out" class="side-nav fixed z-depth-2">
	<script>
			$(function () {
				var nickname = "${sessionScope.userDTO.nickname}";
				nickname = nickname.substring(0, 1);
				$("#nickname").html(nickname);
			})
	</script>
	<div id="box_snb-login" class="z-depth-1">
	
				<h6 class="title center white-text color-400 z-depth-1">Try make your
					Throng</h6>
				<div class="center profile-icon color-A200">
					<h5 id="nickname"></h5>
				</div>
				<h6 class="center-align white-text">${sessionScope.userDTO.email}</h6>

				<div class="row a-button-nav">
					<a class="col s5 white-text"
						href="<c:url value='/user/myInfo/mypage'/>">마이페이지</a>
					<div class="col s1">
						<div class="line white"></div>
					</div>
					<a class="logout-snb col s5 white-text"
						href="<c:url value='/user/logout'/>">로그아웃</a>
				</div>

				<hr class="line-nav">

				<div class="row tPoint-printing-snb">
					<h6 class="col s8 white-text">보유 T :
						${sessionScope.userDTO.cashPoint}T</h6>
					<a class="waves-effect waves-light btn charge-btn col s4 color-500"
						href="<c:url value='/user/util/payment'/>">충전</a>
				</div>
	</div>

	<li class="center"><a href="<c:url value='/user/myInfo/mypage'/>" class="white-text">마이페이지</a></li>
	<li class="center"><a href="<c:url value='/author/authorPage'/>" class="white-text">작가페이지</a></li>
	<li class="center"><a href="<c:url value='/user/util/exchangeApply'/>" class="white-text">환전신청</a></li>
</ul>

