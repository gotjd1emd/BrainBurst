<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
$(function () {
	$("#additional-info-form").submit(function() {
		if ($("#bank-selector div .select-dropdown").val() == "은행 선택") { // 은행 미선택  검사
			Materialize.toast('은행을 선택해 주세요.', 2000, 'rounded');
	        var width = $("#toast-container").width();
	        $("#toast-container").css("margin-left", (width*-1)+209);
			return false;
			
		} else if ($("#account-number").val() == "") { // 계좌번호 미입력  검사
			Materialize.toast('계좌번호를 입력해 주세요.', 2000, 'rounded');
	        var width = $("#toast-container").width();
	        $("#toast-container").css("margin-left", (width*-1)+209);
	        $("#account-number").focus();
			return false;
			
		} else if ($("#accound-password").val() == "") { // 환전 비밀번호 미입력  검사
			Materialize.toast('환전 비밀번호를 입력해 주세요.', 2000, 'rounded');
	        var width = $("#toast-container").width();
	        $("#toast-container").css("margin-left", (width*-1)+209);
	        $("#accound-password").focus();
			return false;
			
		} else if ($("#accound-password-check").val() == "") { // 비밀번호 확인 미입력  검사
			Materialize.toast('환전 비밀번호 확인을 입력해 주세요.', 2000, 'rounded');
	        var width = $("#toast-container").width();
	        $("#toast-container").css("margin-left", (width*-1)+209);
	        $("#accound-password-check").focus();
			return false;
			
		}else if ($("#accound-password").val() != $("#accound-password-check").val()) { // 비밀번호, 비밀번호 확인 일치 검사
			Materialize.toast('환전 비밀번호 확인이 일치하지 않습니다. 다시입력해 주세요.', 2000, 'rounded');
	        var width = $("#toast-container").width();
	        $("#toast-container").css("margin-left", (width*-1)+209);
	        $("#accound-password-check").focus();
			return false;
		}
	});
	
		$.ajax({
			url : "/controller/author/selectAdditionalInfo",
			type : "get",
			dataType : "json",
			success : function(result) {
				var bankName = result.bankName;
				$("#account-number").val(result.accountNumber);
				$("#account-password").val(result.accountPassword);
				$(".card-file .file-path-wrapper input").val(result.identificationCard);
				for(var i=0; i<=3; i++) {
					if($("#bank-selector div ul li:eq("+i+") span").html()==bankName) {
						$(".bank:eq(0)").removeAttr("selected");
						$(".bank:eq("+i+")").attr("selected", "true");
						$("#bank-selector div input").val(bankName);
						$("#bank-selector div ul li:eq("+i+")").attr("class", "active selected")
					}
				}
				
			},
			error : function(error) {
				$("#account-number").val("");
			}
		})
})
</script>

<div class="title-div">
	<h5>작가 추가 정보 입력</h5>
</div>
<form id="additional-info-form" method="post" action="<c:url value='/author/additionalInfo'/>" encType="multipart/form-data">
	<div class="row">
		<div class="input-infomation-inline col s6">
			<div class="input-field col s3" id="bank-selector">
				    <select name="bankName">
		    			<option class="bank" value="" disabled selected>은행 선택</option>
		     			<option class="bank" value="우리은행">우리은행</option>
		      			<option class="bank" value="신한은행">신한은행</option>
		      			<option class="bank" value="농협은행">농협은행</option>
		    		</select>
		    	<label>은행을 선택해 주세요</label>
		    </div>
			<div class="input-field account-number-field col s8">
				<input id="account-number" type="text" class="validate" name="accountNumber" value="text">
				<label for="account-number" class="active">계좌번호</label>
			</div>
			<div class="row">
				<div class="input-field col s6">
					<input id="accound-password" type="password" class="validate" name="accountPassword">
					<label for="accound-password">환전 비밀번호</label>
				</div>
				<div class="input-field col s6">
					<input id="accound-password-check" type="password" class="validate">
					<label for="accound-password-check">환전 비밀번호 확인</label>
				</div>
			</div>
		</div>
		<div class="input-infomation-inline col s6">
			<h6>신분증 사진 첨부</h6>
			<div class="file-field input-field card-file">
				<div class="btn color-500">
					<span>File</span> <input type="file" name="file">
				</div>
				<div class="file-path-wrapper">
					<input class="file-path validate" type="text">
				</div>
			</div>
		</div>
	</div>
	
	<div class="author-management-context">
		<p>펀딩 작가가 되기 위해선 꼭 작성을 해야합니다.</p>
		<p>위 개인정보는 T 환전 시 사용되는 정보이며 환전시스템 외에 사용되지 않습니다.</p>
	</div>
	
	<div class="title-div">
		<button class="btn waves-effect waves-light author-management-uploadbtn color-500" type="submit" name="action">입력 및 수정 완료</button>
	</div>

</form>