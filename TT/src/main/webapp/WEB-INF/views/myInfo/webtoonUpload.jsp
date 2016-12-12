<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript">
	$(function() {
		var count = 1;
		$('#thumbnail').on("change", function() {
			readURL(this);
			$('#thumbnail-text').hide();
		});
	});

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('.inner').html(
						"<img id='preview-image' src='"+e.target.result+"'/>");
			}

			reader.readAsDataURL(input.files[0]);
			var fileSize = input.files[0].size / 1024;

			$('#thumbnail-preview').val(fileSize.toFixed(2) + "KB");
		}
	}
</script>
<div class="z-depth-2 center title-box">
		<p class="flow-text title-text">웹툰 업로드</p>
</div>
<hr>
<div class="row">
	<div class="input-field col s6">
		<input id="episode-title" type="text" class="validate"
			name="episodeTitle"> <label for="episode-title">웹툰 제목</label>
	</div>
	<div class="input-field col s6">
		<input id="nickname-word" type="text" class="validate"
			name="nicknameWord"> <label for="nickname-word"></label>
	</div>
</div>

<div class="row">
	<div class="col s6">
		<p class="flow-text">그림 이미지를 등록해주세요.</p>
		<a class="waves-effect waves-light btn" id="add">Image Add</a>

		<div class="row">
			<div class="input-field col s6 image-file">

				<div class="file-field input-field">
					<input type="file" name="index0">
					<div class="file-path-wrapper">
						<input class="file-path validate" type="text"
							placeholder="이미지 파일을 추가해주세요.">
					</div>
				</div>
			</div>
			<div class="input-field col s6 image-file-size">
				<input id="index0" type="text" class="validate" name="image-size0"
					placeholder="이미지 크기" readonly>
			</div>
		</div>
	</div>

	<!-- 썸네일 file 폼 -->
	<div class="input-field col s6">
		<div class="file-field input-field">
			<div class="btn">
				<span>File</span> <input id="thumbnail" type="file" name="thumbnail">
			</div>
			<div class="file-path-wrapper">
				<input class="file-path validate" type="text">
			</div>
		</div>

		<!-- 썸네일 -->
		<div class="row">
			<div class="col s4">
				<div class="preview">
					<div class="inner">
						<p class="flow-text" id="thumbnail-text">썸네일 미리보기</p>
						<img id='preview-image' src='' />
					</div>
				</div>
			</div>
			<div class="col s8">
				<p class="flow-text">썸네일 미리보기 이미지입니다.</p>
				<input id="thumbnail-preview" type="text" class="validate"
					name="thumbnail-preview" readonly> <label
					for="thumbnail-preview"></label>
			</div>
		</div>

		<!-- 버튼 -->
		<div class="row">
			<button class="btn waves-effect waves-light" type="submit"
				name="action">수정하기</button>
			<a class="waves-effect waves-light btn">돌아가기</a>
		</div>
	</div>
</div>
