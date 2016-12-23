<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<table class="striped" id="userManageList">
	<thead>
		<tr>
			<th data-field="email">이메일</th>
			<th data-field="nickName">닉네임</th>
			<th data-field="phone">전화번호</th>
			<th data-field="phone">비밀번호</th>
			<th data-field="cashPoint">T 잔액</th>
			<th data-field="level">레벨</th>
			<th data-field="name">이름</th>
			<th data-field="gender">성별</th>
			<th data-field="birthDate">생년월일</th>
			<th data-field="userState">계정처리</th>
		</tr>
	</thead>
	<tbody>

	</tbody>
</table>

<div class="input-field" style="margin-top: 30px">
          <input id="userEmail" type="text" class="validate">
          <label for="userEmail">유저 이메일</label>
</div>
<a class="btn waves-effect waves-light color-A200" id="select-snow">얼리기</a>
<a class="waves-effect waves-light btn color-A200" id="select-melt">녹이기</a>
