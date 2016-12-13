<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<script>
		$(function () {
			if($("input[name='navCategory']").val()==1){
				$(".signup-done-icon").css("display", "none");
				$(".signup-selector-icon").css("display", "none");
				$("#accept-terms-selector").css("display", "inline-block");
				$("#enter-information-li").css("color", "#EF9A9A");
				$("#signed-up-li").css("color", "#EF9A9A");
				$("#accept-terms-li").css("color", "#F44336");
			}else if($("input[name='navCategory']").val()==2){
				$(".signup-done-icon").css("display", "none");
				$(".signup-selector-icon").css("display", "none");
				$("#accept-terms-done").css("display", "inline-block");
				$("#enter-information-selector").css("display", "inline-block");
				$("#accept-terms-li").css("color", "#EF9A9A");
				$("#signed-up-li").css("color", "#EF9A9A");
				$("#enter-information-li").css("color", "#F44336");
			}else{
				$(".signup-done-icon").css("display", "none");
				$(".signup-selector-icon").css("display", "none");
				$("#accept-terms-done").css("display", "inline-block");
				$("#signed-up-done").css("display", "inline-block");
				$("#signed-up-selector").css("display", "inline-block");
				$("#accept-terms-li").css("color", "#EF9A9A");
				$("#enter-information-li").css("color", "#EF9A9A");
				$("#signed-up-li").css("color", "#F44336");
			}
		})
	</script>
	
    <ul id="slide-out" class="side-nav fixed z-depth-2">
      <div id="box_snb">
      </div><!-- box_snd exit -->
      <ul class="singUp_step">
	      <li id="accept-terms-li" style="margin-top: 320px;">
	      	<i id="accept-terms-selector" class="material-icons signup-selector-icon">keyboard_arrow_right</i>
	      	<i id="accept-terms-done" class="material-icons signup-done-icon">done</i>
	      	<span class="nav_category">약관동의</span></li>
	      <li id="enter-information-li">
	  	    <i id="enter-information-selector" class="material-icons signup-selector-icon">keyboard_arrow_right</i>
	      	<i id="enter-information-done" class="material-icons signup-done-icon">done</i>
	      	<span class="nav_category">정보입력</span>
	      </li>
	      <li id="signed-up-li">
	      	<i id="signed-up-selector" class="material-icons signup-selector-icon">keyboard_arrow_right</i>
	      	<i id="signed-up-done" class="material-icons signup-done-icon">done</i>
	      	<span class="nav_category">가입완료</span>
	      </li>
      </ul>
    </ul>
    
    