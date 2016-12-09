<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <ul id="slide-out" class="side-nav fixed z-depth-2">
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
		
		<hr>
		<div class="row tPoint-printing-snb">
			<h6 class="col s6">보유중인 T : ${sessionScope.userDTO.cashPoint}T</h6>
			<a class="waves-effect waves-light btn charge-btn col s6">충전</a>
		</div>
	  </div>
	  
	  <li><a href="<c:url value='/user/myInfo/mypage'/>">마이페이지</a></li>
	  <li><a href="<c:url value='/user/myInfo/authorpage'/>">작가페이지</a></li>
	  
    </ul>
    
    