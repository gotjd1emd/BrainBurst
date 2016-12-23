<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUTF-8">
	<title>Insert title here</title>
	<link rel="styleSheet" href="<c:url value='/resources/css/payment.css'/>">
	<style>
		/* Style */
	</style>
	<script>
	</script>
</head>
<body>
	<input id="header-title" type="hidden" value="T 충전">
	<form method="post" action='<c:url value="/user/cashCharge"/>'>
	<!-- HTML5 -->
	<div class="card-frame-payment z-depth-1">
		<div class="center"><h5>T 환전</h5></div>
		<hr>
		  <div id="select-payment-content-form" class="center">
		  	<div class="accept-terms-box">
		  		 <input type="checkbox" class="filled-in" id="filled-in-box"/>
     			 <label for="filled-in-box">위 사항을 모두 확인하였으며 구매진행에 동의합니다.</label>
     		 </div>
		  </div>
		  <div class="center">
		  	<button class="btn waves-effect waves-light color-500" type="submit" name="action">환전신청</button>
		  	<a class="waves-effect waves-light btn color-500" href="<c:url value='/user/main/index'/>">취소</a>
		  </div>
      </div>
      </form>
</body>
</html>