<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript">
	$(function() {
		var count = $("input[type=file]").length - 1;
		$('#thumbnail').on("change", function() {
			readURL(this);
			$('#thumbnail-text').hide();
		});
		
		$('.image-file').on("change", "input[type=file]", function() {
			var size = fileSize(this).toFixed(2)+"KB";
			var index = "#image\\["+$(this).attr("name").substr(6,1)+"\\]";
			$(index).val(size);
		});
	});
	
	
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			
			reader.onload = function(e) {
				$('.inner').html("<img id='preview-image' src='"+e.target.result+"'/>");
			}
			
			reader.readAsDataURL(input.files[0]);
			var fileSize = input.files[0].size/1024;
			
			$('#thumbnail-preview').val(fileSize.toFixed(2)+"KB");
		}
	}
	
	function fileSize(input) {
		var fileSize = input.files[0].size/1024;
		
		return fileSize;
	}
</script>

<input id="header-title" type="hidden" value="웹툰 업로드">
<div class="row" style="margin-top: 20px;">
	<div class="col s6">
		<div class="input-field">
			<input id="episode-title" type="text" class="validate"
				name="episodeTitle"> <label for="episode-title">웹툰
				제목</label>
		</div>
		<div class="input-field">
			<textarea id="textarea1" class="materialize-textarea"></textarea>
			<label for="textarea1">줄거리</label>
		</div>
	</div>
	<!-- 썸네일 file 폼 -->
	<div class="input-field col s6">
		<div class="file-field input-field">
			<div class="btn color-500">
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
						<p id="thumbnail-text">썸네일 미리보기</p>
						<img id='preview-image' src='' />
					</div>
				</div>
			</div>
			<div class="col s8">
				<p>썸네일 미리보기 이미지입니다.</p>
				<input id="thumbnail-preview" type="text" class="validate"
					name="thumbnail-preview" readonly> <label
					for="thumbnail-preview"></label>
			</div>
		</div>
	</div>
</div>
<div class="webtoon-upload-btn-div" style="margin-bottom: 50px;">
	<button class="btn waves-effect waves-light color-500" type="submit" name="action">웹툰 업로드
	</button>
	<a class="waves-effect waves-light btn color-500">뒤로가기</a>
</div>
