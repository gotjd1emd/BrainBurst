<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
	<!-- 진행 순서도(카테고리)를 위한 hidden태그 -->
	<input type="hidden" name="navCategory" value="1">
	<div class="signup-steper z-depth-1">
		<div class="signup-number-circle">1</div>
		<span class="signup-text">약관동의</span>
		<div class="signup-line" style="background-color: #BDBDBD"></div>
		<div class="signup-number-circle" style="background-color: #BDBDBD">2</div>
		<span class="signup-text" style="color:#BDBDBD">정보입력</span>
		<div class="signup-line" style="background-color: #BDBDBD"></div>
		<div class="signup-number-circle" style="background-color: #BDBDBD">3</div>
		<span class="signup-text" style="color:#BDBDBD">완료</span>
	</div>
	<div class="signup_box z-depth-1">
		<div class="row accept-terms-box">
			<div class="accept-terms-1 col right-align">
				<div class="accept-terms-content-1 left-align">
					약관동의 내용1
				</div>
				<div class="accept-terms-check">
					<input type="checkbox" class="filled-in" id="filled-in-box-1" checked="checked" />
     				<label for="filled-in-box-1">약관동의</label>
				</div>
			</div>
			<div class="accept-terms-2 col right-align">
				<div class="accept-terms-content-2 left-align">
					약관동의 내용2
				</div>
				<div class="accept-terms-check">
					<input type="checkbox" class="filled-in" id="filled-in-box-2" checked="checked" />
     				<label for="filled-in-box-2">약관동의</label>
				</div>
			</div>
		</div>
		<div class="accept-terms-3 right-align">
			<div class="accept-terms-content-3 left-align">
				약관동의 내용3
			</div>
			<div class="accept-terms-check">
					<input type="checkbox" class="filled-in" id="filled-in-box-3" checked="checked" />
     				<label for="filled-in-box-3">약관동의</label>
			</div>
		</div>
		
		<a id="btn-next" class="waves-effect waves-light btn-large color-500" href="<c:url value='/user/signUp/enterInfomation'/>">다음</a>
	</div>
