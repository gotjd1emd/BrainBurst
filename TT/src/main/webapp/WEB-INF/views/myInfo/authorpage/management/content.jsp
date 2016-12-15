<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="title-div">
	<h5>작가 추가 정보 입력</h5>
</div>
<form>
	<div class="row">
		<div class="input-infomation-inline col s6">
			<div class="input-field account-number-field">
				<input id="last_name" type="text" class="validate"> <label
					for="last_name">계좌번호</label>
			</div>
			<div class="row">
				<div class="input-field col s6">
					<input id="last_name" type="text" class="validate"> <label
						for="last_name">환전 비밀번호</label>
				</div>
				<div class="input-field col s6">
					<input id="last_name" type="text" class="validate"> <label
						for="last_name">환전 비밀번호 확인</label>
				</div>
			</div>
		</div>
		<div class="input-infomation-inline col s6">
			<div class="file-field input-field">
				<div class="btn color-500">
					<span>File</span> <input type="file">
				</div>
				<div class="file-path-wrapper">
					<input class="file-path validate" type="text">
				</div>
			</div>
		</div>
	</div>
	
	<div class="author-management-context">
		<p>펀딩 작가가 되기 위해선 꼭 작성을 해야합니다.</p>
		<p>위 개인정보는 T 환전 시 사용되는 정보이며 환전 의외에 사용되지 않습니다.</p>
	</div>
	
	<div class="title-div">
		<button class="btn waves-effect waves-light author-management-uploadbtn color-500" type="submit" name="action">입력 및 수정 완료</button>
	</div>

</form>