<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="card-frame-myInfo z-depth-1">
	<div class="row">
		<form class="col s6" method="post" action="<c:url value='/user/userUpdate'/>" style="margin-left:146px;font-weight:800;text-align:center;">
			<div class="row modify-row">
				<div class="input-field col s12">
					<input id="name-myinfo" type="text" class="validate" name="email"
						value="${sessionScope.userDTO.email}" style="text-align:center" disabled> <label
						for="name-myinfo">이메일</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s12">
					<input id="name-myinfo" type="text" class="validate"
						value="${sessionScope.userDTO.nickname}" style="text-align:center" disabled> <label
						for="name-myinfo">닉네임</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s12">
					<input id="name-myinfo" type="text" class="validate"
						value="${sessionScope.userDTO.name}" style="text-align:center" disabled> <label
						for="name-myinfo">이름</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s12">
					<input id="name-myinfo" type="text" class="validate" name=password
						placeholder="현재 비밀번호 : ${sessionScope.userDTO.password}" style="text-align:center">
					<label for="name-myinfo">비밀번호</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s12">
					<input id="birthDate-myinfo" type="text" class="validate"
						value="${sessionScope.userDTO.birthDate}" style="text-align:center" disabled> <label
						for="birthDate-myinfo">생년월일</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s12">
					<input id="telno-myinfo" type="text" class="validate" name="phone"
						placeholder="현재 전화번호 : ${sessionScope.userDTO.phone}" style="text-align:center"> <label
						for="telno-myinfo">전화번호</label>
				</div>
			</div>

			<div class="row">
				<div class="input-field col s12">
					<input id="telno-myinfo" type="text" class="validate"
						value="${sessionScope.userDTO.gender}" style="text-align:center" disabled> <label
						for="telno-myinfo">성별</label>
				</div>
			</div>

			<div class="center">
				<button class="btn waves-effect waves-light color-400" type="submit"
					name="action">수정하기</button>
			</div>
		</form>
	</div>
</div>