<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="center" style="margin-top: 20px; margin-bottom: 10px;">
<a class="waves-effect waves-light btn color-500" id="print-all">모든 웹툰</a>
<a class="waves-effect waves-light btn color-500" id="print-serial">연재 웹툰</a>
<a class="waves-effect waves-light btn color-500" id="print-complete">완결 웹툰</a>
<a class="waves-effect waves-light btn color-500" id="print-pause">휴재 웹툰</a>
<a class="waves-effect waves-light btn color-500" id="print-blind">블라인드 웹툰</a>
<a class="waves-effect waves-light btn color-500" id="print-free">일반 웹툰</a>
<a class="waves-effect waves-light btn color-500" id="print-funding">펀딩 웹툰</a>
</div>
<table class="striped" id="webtoonManageList">
	<thead>
		<tr>
			<th data-field="webtoonCode">웹툰코드</th>
			<th data-field="webtoonName">웹툰이름</th>
			<th data-field="webtoonLevel">작품등급</th>
			<th data-field="webtoonState">연재상태</th>
			<th data-field="categoryName">장르</th>
			<th data-field="penalty">경고상태</th>
			<th data-field="author">작가명</th>
			<th data-field="content">줄거리</th>
			<th>웹툰 처리</th>
		</tr>
	</thead>
	<tbody>

	</tbody>
</table>

<div class="input-field" style="margin-top: 20px;">
          <input placeholder="웹툰 코드를 적어주세요." id="webtoon-code-field" type="text" class="validate" >
          <label for="webtoon-code-field">웹툰 코드</label>
</div>

<a class="waves-effect waves-light btn color-500" id="webtoon-blind">블라인드</a>
<a class="waves-effect waves-light btn color-500" id="webtoon-serial">블라인드 해제</a>
<a class="waves-effect waves-light btn color-500" id="webtoon-fund">펀딩으로</a>
<a class="waves-effect waves-light btn color-500" id="webtoon-free">일반으로</a>
