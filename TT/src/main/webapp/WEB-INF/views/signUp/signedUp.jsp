<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
	<!-- 진행 순서도(카테고리)를 위한 hidden태그 -->
	<input id="header-title" type="hidden" value="회원가입 완료">
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
		<div class="center" style="height:456px; padding-top: 180px;">
		<p>축하드립니다.</p>
		<p>Try make your Throng 홈페이지 가입이 완료되었습니다.</p>
		<p>완료 버튼을 눌러 로그인을 해주세요!</p>
		</div>
				
		<a id="btn-next" class="waves-effect waves-light btn-large color-500" href="/controller">완료</a>
	</div>
