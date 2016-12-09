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
		$(function () {
			$("input[name='selectPayment']").click(function () {
				if($(':radio[name="selectPayment"]:checked').val()=="신용카드"){
					var htmlcode = "<p>비활성화된 결제 수단은 윈도우 인터넷 익스플로러에서 모두 이용할 수 있습니다.</p>";
					htmlcode += "<p>신용카드는 윈도우/모바일에서 가능하며 플러그인 설치가 필요합니다.</p>";
					htmlcode += "<p>모바일에서 카드사 별로 추가앱(ISP 또는 앱카드) 설치가 필요합니다.</p>"
					$('#select-payment-content').html(htmlcode);
				}else if($(':radio[name="selectPayment"]:checked').val()=="휴대폰결제"){
					var htmlcode = "<p>비활성화된 결제 수단은 윈도우 인터넷 익스플로러에서 모두 이용할 수 있습니다.</p>";
					htmlcode += "<p>휴대폰 결제 관련문의는 각 통신사 고객센터로 연락하시기 바랍니다.</p>";
					$('#select-payment-content').html(htmlcode);
				}else if($(':radio[name="selectPayment"]:checked').val()=="문화상품권"){
					var htmlcode = "<p>비활성화된 결제 수단은 윈도우 인터넷 익스플로러에서 모두 이용할 수 있습니다.</p>";
					htmlcode += "<p>문화상품권은 (주)한국문화진흥원에서 발행하는 상품권으로 앞면의 호랑이 그림으로 한국문화진흥원의 문화상품권인지 확인 바랍니다.</p>";
					htmlcode += "<p>문화상품권을 온라인에서 사용하시려면 컬쳐랜드 에 회원가입을 하셔야 합니다.</p>"
					htmlcode += "<p>컬쳐랜드 회원은 컬쳐캐쉬라는 전자화폐 계정을 가지게 되며, 컬쳐랜드 아이디에 충전한 컬쳐캐쉬로 결제할 수 있습니다.</p>"
					htmlcode += "<p>크롬, 파이어폭스, 사파리 브라우저에서도 컬쳐캐쉬를 사용할 수 있습니다.</p>"
					htmlcode += "<p>하지만 인터넷 익스플로러 이외의 브라우저에서는 컬쳐캐쉬를 충전할 수 없으니 유의하시기 바랍니다.</p>"
					htmlcode += "<p>문화상품권 관련 문의는 컬쳐랜드 고객센터 1577-2111로 연락하시기 바랍니다.</p>"
					$('#select-payment-content').html(htmlcode);
				}else if($(':radio[name="selectPayment"]:checked').val()=="도서문화상품권"){
					var htmlcode = "<p>비활성화된 결제 수단은 윈도우 인터넷 익스플로러에서 모두 이용할 수 있습니다.</p>";
					htmlcode += "<p>도서문화상품권을 온라인에서 사용하시려면 북앤라이프에 회원가입을 하셔야 합니다.</p>";
					htmlcode += "<p>도서문화상품권 관련 문의는 북앤라이프 고객센터 1544-5111로 연락하시기 바랍니다.</p>"
					$('#select-payment-content').html(htmlcode);
				}else if($(':radio[name="selectPayment"]:checked').val()=="해피머니"){
					var htmlcode = "<p>비활성화된 결제 수단은 윈도우 인터넷 익스플로러에서 모두 이용할 수 있습니다.</p>";
					htmlcode += "<p>해피머니를 온라인에서 사용하시려면 해피머니 서비스에 회원가입을 하셔야 합니다.</p>";
					htmlcode += "<p>해피머니 관련 문의는 해피머니아이엔씨 고객센터 1588-5245로 연락하시기 바랍니다.</p>"
					$('#select-payment-content').html(htmlcode);
				}
			})
		})
	</script>
</head>
<body>
	<form method="post" action="">
	<!-- HTML5 -->
	<div class="card-frame-payment z-depth-1">
		<div class="center"><h5>T 충전</h5></div>
		<hr>
		<table class="bordered centered">
			<thead>
				<th>T</th>
				<th>가격</th>
			</thead>
	        <tbody>
	          <tr>
	            <td>
				<input name="tPayment" type="radio" id="t20" />
				<label for="t20">20T</label>
				</td>
	            <td>5,000원</td>
	          </tr>
	          <tr>
	            <td>
	            <input name="tPayment" type="radio" id="t40" />
				<label for="t40">40T</label>
				</td>
	            <td>10,000원</td>
	          </tr>
	          <tr>
	            <td>
	            <input name="tPayment" type="radio" id="t80" />
				<label for="t80">80T</label>
				</td>
	            <td>20,000원</td>
	          </tr>
	          <tr>
	            <td>
	            <input name="tPayment" type="radio" id="t160" />
				<label for="t160">160T</label>
				</td>
	            <td>40,000원</td>
	          </tr>
	          <tr>
	            <td>
	            <input name="tPayment" type="radio" id="t280" />
				<label for="t280">280T</label>
				</td>
	            <td>70,000원</td>
	          </tr>
	          <tr>
	            <td>
	            <input name="tPayment" type="radio" id="t400" />
				<label for="t400">400T</label>
				</td>
	            <td>100,000원</td>
	          </tr>
	        </tbody>
	      </table>
	      
	      <div class="center"><h5>결재 수단 선택</h5></div>
	      <table class="bordered centered">
	      	<tbody>
	      		<tr>
	      			<td>
	      			<input name="selectPayment" type="radio" id="credit-card" value="신용카드" checked="checked"/>
					<label for="credit-card">신용카드</label>
					</td>
	      			<td>
	      			<input name="selectPayment" type="radio" id="mobile-payment"  value="휴대폰결제"/>
					<label for="mobile-payment">휴대폰결제</label>
					</td>
	      			<td>
	      			<input name="selectPayment" type="radio" id="cultural" value="문화상품권" />
					<label for="cultural">문화상품권</label>
					</td>
	      			<td>
	      			<input name="selectPayment" type="radio" id="book-cultural"  value="도서문화상품권"/>
					<label for="book-cultural">도서문화상품권</label>
					</td>
	      			<td>
	      			<input name="selectPayment" type="radio" id="happyMoney"  value="해피머니"/>
					<label for="happyMoney">해피머니</label>
					</td>
	      		</tr>
	        </tbody>
	      </table>
	      <div id="select-payment-content">
	      	<p>비활성화된 결제 수단은 윈도우 인터넷 익스플로러에서 모두 이용할 수 있습니다.</p>
			<p>신용카드는 윈도우/모바일에서 가능하며 플러그인 설치가 필요합니다.</p>
			<p>모바일에서 카드사 별로 추가앱(ISP 또는 앱카드) 설치가 필요합니다.</p>
		  </div>
		  <div id="select-payment-content-form" class="center">
		  	<div class="accept-terms-box">
		  		 <input type="checkbox" class="filled-in" id="filled-in-box"/>
     			 <label for="filled-in-box">위 사항을 모두 확인하였으며 구매진행에 동의합니다.</label>
     		 </div>
		  </div>
		  <div class="center">
		  	<button class="btn waves-effect waves-light" type="submit" name="action">결제요청</button>
		  	<a class="waves-effect waves-light btn" href="<c:url value='/user/main/index'/>">취소</a>
		  </div>
      </div>
      </form>
</body>
</html>