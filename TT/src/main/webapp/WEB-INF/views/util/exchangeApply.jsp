<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUTF-8">
	<title>Insert title here</title>
	<link rel="styleSheet" href="<c:url value='/resources/css/payment.css'/>">
	<script>
		$(function () {
			$("#exchangeT").keyup(function(){$(this).val( $(this).val().replace(/[^0-9]/g,"") );} );
			$("#exchangeT").keyup(function () {
				var afterT =$("#possesionT").html() - $("#exchangeT").val();
				$("#afterT").html(afterT)
				$("input[name='afterT']").val(afterT)
				
				var afterMoney = ($("#exchangeT").val() * 250)*0.9;
				$("#afterMoney").html(afterMoney)
			})
		})
	</script>
</head>
<body>
	<input id="header-title" type="hidden" value="T 충전">
	<form method="post" action='<c:url value="/user/cashUpdate"/>'>
	<!-- HTML5 -->
	<div class="card-frame-payment z-depth-1">
		<div class="center"><h5>T 환전</h5></div>
		<hr>
		<div class="center">
			<h5>보유 T :<span id="possesionT">${sessionScope.userDTO.cashPoint}</span>T</h5>
			<div class="input-field" style="margin-left:400px; margin-right:400px; text-align: center; margin-top: 50px">
	          <input id="exchangeT" type="text" class="validate" style="text-align: center" name="exchangeT">
	          <label for="exchangeT">환전할 T</label>
	        </div>
	        <div class="row" style="margin-top: 30px">
	        	<h6 class="col s5" style="margin-left: 5%">환전 후 남는 T :<span id="afterT"">${sessionScope.userDTO.cashPoint}</span>T</h6>
	        	<input type="hidden" name="afterT" value="${sessionScope.userDTO.cashPoint}">
	     	   <h6 class="col s5 offset-s1">환전 되는 금액 :<span id="afterMoney">0</span>원</h6>
	        </div>
		</div>
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