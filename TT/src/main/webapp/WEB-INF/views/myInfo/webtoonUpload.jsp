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
		
		$('#add').on("click", function() {
			if(count < 10) {
				var str = "<div class='file-field input-field'>";
				str += "<input type='file' name='image["+count+"]'>";
				str += "<div class='file-path-wrapper'>";
				str += "<input class='file-path validate' type='text' placeholder='이미지 파일을 추가해주세요.'>";
				str += "</div></div>";
				$('div.image-file').append(str);
				
				str = "<input id='image["+count+"]' name='imageSize' type='text' class='validate' placeholder='이미지 크기' readonly>"; 
				$('div.image-file-size').append(str);
				count++;
			}else {
				alert("이미지 파일은 10개까지 올릴 수 있습니다.");
			}
		});
		
		$("#delete").on("click", function() {
			if(count > 0) {
				$(".image-file").children(":last").remove();
				$(".image-file-size").children(":last").remove();
				count--;
			}
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

<form method="post" action="" encType="multipart/form-data">
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
<hr>
<div class="row">
	<div class="col s6">
		<div class="input-field">
			<input id="episode-title" type="text" class="validate"
				name="episodeTitle"> <label for="episode-title">에피소드 제목</label>
		</div>
				<div class="input-field">
			<input id="author-word" type="text" class="validate"
				name="author-word"> <label for="author-word">작가의 말</label>
		</div>
	</div>
	<div class="col s6">
		<p>그림 이미지를 등록해주세요.</p>
		<a class="waves-effect waves-light btn color-500" id="add">이미지 추가</a>
		<a class="waves-effect waves-light btn color-500" id="delete">이미지 삭제</a>
		<div class="row">
			<div class="input-field col s6 image-file">

				<div class="file-field input-field">
					<input type="file" name="image[0]">
					<div class="file-path-wrapper">
						<input class="file-path validate" type="text"
							placeholder="이미지 파일을 추가해주세요.">
					</div>
				</div>
			</div>
			<div class="input-field col s6 image-file-size">
				<input id="image[0]" name="imageSize" type="text" class="validate"
					placeholder="이미지 크기" readonly>
			</div>
		</div>
	</div>

</div>
<div class="webtoon-upload-btn-div" style="margin-bottom: 50px;">
	<button class="btn waves-effect waves-light color-500" type="submit" name="action">웹툰 업로드
	</button>
	<a class="waves-effect waves-light btn color-500">뒤로가기</a>
</div>
</form>
