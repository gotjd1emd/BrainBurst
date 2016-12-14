
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Modal Structure -->
<div id="paid-webtoon-modal" class="modal modal-fixed-footer modal-top">
	<form method="post">
		<div id="inputDiv">
		<div class="modal-title color-500 white-text z-depth-1">
				<h5>유료화 신청</h5>
			</div>
			<div class="modal-content modal-content-funding">
		<div class="input-field col s12">
			<select>
				<option value="" disabled selected>웹툰 선택</option>
				<option value="1">졸라맨의 모험</option>
				<option value="2">마음의 소리</option>
				<option value="3">썸툰</option>
			</select> <label>유료화 신청할 펀딩웹툰 선택</label>
		</div>
		<div class="paid-webtoon-description">
			<p>펀딩으로 완결된 웹툰만 가능합니다.</p>
			<p>유료화 신청이 완료되면 사이트 내 관리자가 몇일 내로 전화드립니다.</p>
			<p>오전 10시 ~ 오후 6시</p>
		</div>

	</div>
	<div class="modal-footer">
		<a href="#!"
			class=" modal-action modal-close waves-effect waves-green btn-flat">취소</a>
		<button
			class="modal-action modal-close waves-effect waves-green btn-flat"
			type="submit" name="action">신청</button>
	</div>
	</div>
	</form>
</div>