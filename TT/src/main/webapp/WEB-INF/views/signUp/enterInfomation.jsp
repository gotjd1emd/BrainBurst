<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
	<script>
	$(function () {
		
		$("#enterInfomation-form").submit(function() {
			if ($("#email-signup").val() == "") { // 이메일 미입력  검사
				Materialize.toast('이메일을 입력해 주세요.', 2000, 'rounded');
		        var width = $("#toast-container").width();
		        $("#toast-container").css("margin-left", (width*-1)+209);
		        $("#email-signup").focus();
				return false;
				
			}else if($("#label-email-check-disabled").text() != "중복된 이메일이 없습니다.") { // 이메일 중복 검사
				Materialize.toast('중복되지 않은 이메일로 입력해주세요.', 2000, 'rounded');
		        var width = $("#toast-container").width();
		        $("#toast-container").css("margin-left", (width*-1)+209);
		        $("#email-signup").focus();
				return false;
				
			} else if ($("#name-signup").val() == "") { // 이름 미입력  검사
				Materialize.toast('이름(본명)을 입력해 주세요.', 2000, 'rounded');
		        var width = $("#toast-container").width();
		        $("#toast-container").css("margin-left", (width*-1)+209);
		        $("#name-signup").focus();
				return false;
				
			} else if ($("#nickname-signup").val() == "") { // 닉네임 미입력  검사
				Materialize.toast('닉네임을 입력해 주세요.', 2000, 'rounded');
		        var width = $("#toast-container").width();
		        $("#toast-container").css("margin-left", (width*-1)+209);
		        $("#nickname-signup").focus();
				return false;
				
			} else if ($("#label-nickname-check-eisabled").text() != "중복된 닉네임이 없습니다.") { // 닉네임 중복  검사
				Materialize.toast('중복되지 않은 닉네임으로 입력해주세요.', 2000, 'rounded');
		        var width = $("#toast-container").width();
		        $("#toast-container").css("margin-left", (width*-1)+209);
		        $("#nickname-signup").focus();
				return false;
				
			} else if ($("#password-signup").val() == "") { // 비밀번호 미입력  검사
				Materialize.toast('비밀번호를 입력해 주세요.', 2000, 'rounded');
		        var width = $("#toast-container").width();
		        $("#toast-container").css("margin-left", (width*-1)+209);
		        $("#password-signup").focus();
				return false;
				
			} else if ($("#password-checked-signup").val() == "") { // 비밀번호 확인 미입력  검사
				Materialize.toast('비밀번호 확인을 입력해 주세요.', 2000, 'rounded');
		        var width = $("#toast-container").width();
		        $("#toast-container").css("margin-left", (width*-1)+209);
		        $("#password-checked-signup").focus();
				return false;
				
			}else if ($("#password-signup").val() != $("#password-checked-signup").val()) { // 비밀번호, 비밀번호 확인 일치 검사
				Materialize.toast('비밀번호 확인이 일치하지 않습니다. 다시입력해 주세요.', 2000, 'rounded');
		        var width = $("#toast-container").width();
		        $("#toast-container").css("margin-left", (width*-1)+209);
		        $("#password-checked-signup").focus();
				return false;
				
			} else if ($("#birthDate-signup").val() == "") { // 생년월일 미입력  검사
				Materialize.toast('생년월일을 입력해 주세요.', 2000, 'rounded');
		        var width = $("#toast-container").width();
		        $("#toast-container").css("margin-left", (width*-1)+209);
		        $("#birthDate-signup").focus();
				return false;
			}else if ($("#birthDate-signup").val().length < 6) { // 생년월일 미입력  검사
				Materialize.toast('생년월일은 6자리만 입력해 주세요.', 2000, 'rounded');
		        var width = $("#toast-container").width();
		        $("#toast-container").css("margin-left", (width*-1)+209);
		        $("#birthDate-signup").focus();
				return false;
			}else if ($("#phoneNumber-signup").val() == "") { // 전화번호 미입력  검사
				Materialize.toast('전화번호를 입력해 주세요.', 2000, 'rounded');
		        var width = $("#toast-container").width();
		        $("#toast-container").css("margin-left", (width*-1)+209);
		        $("#phoneNumber-signup").focus();
				return false;
			} else if ($("#phoneNumber-signup").val().length < 11){
				Materialize.toast('전화번호는 11자리만 입력해 주세요.', 2000, 'rounded');
		        var width = $("#toast-container").width();
		        $("#toast-container").css("margin-left", (width*-1)+209);
		        $("#phoneNumber-signup").focus();
				return false;
				
			}else if (!$("input[type='radio']").is(':checked')) { // 성별 미입력  검사
				Materialize.toast('성별을 선택해 주세요.', 2000, 'rounded');
		        var width = $("#toast-container").width();
		        $("#toast-container").css("margin-left", (width*-1)+209);
		        $("input[type='radio']").focus();
				return false;
			} 
			
		});
		
		$("#email-signup").keyup(function () {
			$.ajax({
				url : "/controller/user/emailCheck/"+$(this).val(),
				type : "get",
				dataType : "text",
				success : function(result) {
					//result 1일 떄 중복 O, 0일 때 중복 X
					if(result==1){
						$("#label-email-check-disabled").text("중복된 이메일이 있습니다.")
						$("#label-email-check-disabled").css("color", "#F44336");
					}else{
						$("#label-email-check-disabled").text("중복된 이메일이 없습니다.")
						$("#label-email-check-disabled").css("color", "#4CAF50");
					}
				},
				error : function() {
				}
			})
		})
		
		$("#nickname-signup").keyup(function () {
			$.ajax({
				url : "/controller/user/nickNameCheck/"+$(this).val(),
				type : "get",
				dataType : "text",
				success : function(result) {
					console.log(result)
					//result 1일 떄 중복 O, 0일 때 중복 X
					if(result==1){
						$("#label-nickname-check-eisabled").text("중복된 닉네임이 있습니다.")
						$("#label-nickname-check-eisabled").css("color", "#F44336");
					}else{
						$("#label-nickname-check-eisabled").text("중복된 닉네임이 없습니다.")
						$("#label-nickname-check-eisabled").css("color", "#4CAF50");
					}
				},
				error : function() {
				}
			})
		})
		$("#birthDate-signup").keyup(function(){$(this).val( $(this).val().replace(/[^0-9]/g,"") );} );
		$("#phoneNumber-signup").keyup(function(){$(this).val( $(this).val().replace(/[^0-9]/g,"") );} );
	})
	
	</script>
	<!-- 진행 순서도(카테고리)를 위한 hidden태그 -->
	<input id="header-title" type="hidden" value="정보입력">
	<input type="hidden" name="navCategory" value="2">
	<div class="signup-steper z-depth-1">
		<div class="signup-number-circle"><i class="material-icons signup-checking">done</i></div>
		<span class="signup-text">약관동의</span>
		<div class="signup-line"></div>
		<div class="signup-number-circle">2</div>
		<span class="signup-text">정보입력</span>
		<div class="signup-line" style="background-color: #BDBDBD"></div>
		<div class="signup-number-circle" style="background-color: #BDBDBD">3</div>
		<span class="signup-text" style="color:#BDBDBD">완료</span>
	</div>
	<div class="signup_box z-depth-2">
		 <form id="enterInfomation-form"  method="post" name="enterInfomationForm" action="<c:url value='/user/signedUp'/>">
			<div class="info-box">
				<div class="row">
					<div class="input-field col s9">
			          <input id="email-signup" type="email" class="validate" name="email" autocomplete=off>
			          <label for="email-signup">이메일</label>
			        </div>
			        <div class="input-field col s3">
			          <input disabled id="email-check-disabled" type="email" class="validate" name="email" autocomplete=off>
			          <label id="label-email-check-disabled" for="email-check-disabled">이메일을 입력해 주세요</label>
			        </div>
				</div>
		        <div class="input-field">
		          <input id="name-signup" type="text" class="validate" name="name" autocomplete=off>
		          <label for="name-signup">이름</label>
		        </div>
		        <div class="row">
			        <div class="input-field col s9">
			          <input id="nickname-signup" type="text" class="validate" name="nickname" autocomplete=off>
			          <label for="nickname-signup">닉네임</label>
			        </div>
			        <div class="input-field col s3">
			          <input disabled id="nickname-check-eisabled" type="text" class="validate" name="nickname" autocomplete=off>
			          <label id="label-nickname-check-eisabled" for="nickname-check-eisabled">닉네임을 입력해 주세요</label>
			        </div>
		        </div>
		        <div class="row">
			        <div class="input-field col s6">
  				        <input id="password-signup" type="password" class="validate" name="password" autocomplete=off>
    				    <label for="password-signup">비밀번호</label>
        			</div>
			        <div class="input-field col s6">
   				       <input id="password-checked-signup" type="password" class="validate" name="password-checked" autocomplete=off>
   				       <label for="password-checked-signup">비밀번호 확인</label>
     			    </div>
			    </div>
			    
			    <div class="input-field">
		          <input id="birthDate-signup" type="text" class="validate" name="birthDate" placeholder="주민번호 앞자리만 입력해주세요 ex)880808" maxlength="6" autocomplete=off>
		          <label for="birthDate-signup">생년월일</label>
		        </div>
		        <div class="input-field">
		          <input id="phoneNumber-signup" type="text" class="validate" name="phone" placeholder=" '-'를 제외한 11자리를 입력해주세요 ex)01099999999 " maxlength="11" autocomplete=off>
		          <label for="phoneNumber-signup">전화번호</label>
		        </div>
		         <p>
			      <input name="gender" type="radio" id="man" value="man"/>
			      <label for="man">남자</label>
			      <input name="gender" type="radio" id="woman" value="woman"/>
			      <label for="woman">여자</label>
			    </p>
			</div>
		<button id="enterinfomation-nextbtn" class="btn waves-effect waves-light next-btn color-500" type="submit" name="action">다음</button>
		<a class="btn waves-effect waves-light next-btn color-500" href="/controller/user/signUp/acceptTerms">이전</a>
		</form>
	</div>
