<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
	<!-- 진행 순서도(카테고리)를 위한 hidden태그 -->
	<input type="hidden" name="navCategory" value="3">
	<div class="signup-steper z-depth-1">
		<div class="signup-number-circle"><i class="material-icons signup-checking">done</i></div>
		<span class="signup-text">약관동의</span>
		<div class="signup-line"></div>
		<div class="signup-number-circle"><i class="material-icons signup-checking">done</i></div>
		<span class="signup-text">정보입력</span>
		<div class="signup-line""></div>
		<div class="signup-number-circle">3</div>
		<span class="signup-text">완료</span>
	</div>
	<div class="signup_box z-depth-2">
		
		완료됨 로그인 하세요.
		
		<a id="btn-next" class="waves-effect waves-light btn-large color-500" href="/controller">완료</a>
	</div>
