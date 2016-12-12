<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Modal Structure -->
<div id="funding-webtoon-modal" class="modal">
	<div class="modal-content modal-content-funding">
		<div style="text-align: center;">
			<h5>펀딩 신청 관리</h5>
		</div>

		<div class="input-field col s12">
			<select>
				<option value="" disabled selected>웹툰 선택</option>
				<option value="1">졸라맨의 모험</option>
				<option value="2">마음의 소리</option>
				<option value="3">썸툰</option>
			</select> <label>펀딩 신청할 웹툰 선택</label>
		</div>
		<div class="input-field col s12">
			<select>
				<option value="" disabled selected>기간 선택</option>
				<option value="1">1주</option>
				<option value="2">2주</option>
			</select> <label>펀딩중 연재할 기간 선택</label>
		</div>
		<div class="webtoon-score">"웹툰 이름"작품의 점수 : 99점</div>
		<div class="webtoon-score-description">
			- 80점 이상만 신청 가능합니다<br> - 작가의 추가정보를 입력해주세요.(펀딩을 위한 계좌번호 등등..)
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

<!-- Modal Structure -->
<div id="webtoon-state-modal" class="modal">
	<div class="modal-content modal-content-funding">
		<div style="text-align: center;">
			<h5>웹툰 상태 처리</h5>
		</div>

		<div class="input-field col s12">
			<select>
				<option value="" disabled selected>웹툰 선택</option>
				<option value="1">졸라맨의 모험</option>
				<option value="2">마음의 소리</option>
				<option value="3">썸툰</option>
			</select> <label>펀딩 신청할 웹툰 선택</label>
		</div>
		<div class="input-field col s12">
			<select>
				<option value="" disabled selected>상태 선택</option>
				<option value="1">연재</option>
				<option value="1">휴재</option>
				<option value="2">완결</option>
				<option value="2">블라인드</option>
			</select> <label>펀딩중 연재할 기간 선택</label>
		</div>
		<div class="state-description">
			<p>연재 : 웹툰을 계속 연재할때 또는 다른 상태에 있다가 다시 연재하고 싶을때</p>
			<p>휴재 : 잠깐 웹툰 연재를 중단할 때</p>
			<p>완결 : 스토리상 웹툰이 끝났을 때</p>
			<p>블라인드 : 웹툰 연재를 완전히 중단할 때</p>
		</div>

	</div>
	<div class="modal-footer">
		<a href="#!"
			class=" modal-action modal-close waves-effect waves-green btn-flat">취소</a>
		<button
			class="modal-action modal-close waves-effect waves-green btn-flat"
			type="submit" name="action">적용</button>
	</div>
</div>