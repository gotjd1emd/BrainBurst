<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="StyleSheet" href="<c:url value='/resources/css/webtoon.css'/>">
<script type="text/javascript">
	$(function() {
		var count = 1;
		$('#thumbnail').on("change", function() {
			readURL(this);
			$('#thumbnail-text').hide();
		});
		
		$('.image-file').on("change", "input[type=file]", function() {
			var size = fileSize(this).toFixed(2)+"KB";
			var index = "#"+$(this).attr("name");
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
				
				str = "<input id='image["+count+"]' type='text' class='validate' placeholder='이미지 크기' readonly>"; 
				$('div.image-file-size').append(str);
				count++;
			}else {
				alert("이미지 파일은 10개까지 올릴 수 있습니다.");
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
</head>
<body>
	<div class="z-depth-2">
		<div class="row">
			<div class="col s2">
				<div class="webtoon_title">
					<img src="http://public.slidesharecdn.com/b/images/logo/linkedin-ss/SS_Logo_White_Large.png?6d1f7a78a6">
				</div>
			</div>
			<div class="col s10">
				작가이름 <br>
				줄거리
			</div>
		</div>
		
		<hr>
		<div class="row">
		   	<div class="col s12">
		        <h5>에피소드 업로드</h5>
		    </div>
		</div>
		
		<hr>
		<form method="post" action="<c:url value='/author/episodeUpload'/>" encType="multipart/form-data">
		<div class="row">
			<div class="input-field col s6">
				<input id="episode-title" type="text" class="validate" name="episodeTitle"> 
				<label for="episode-title">에피소드 제목</label>
			</div>
			<div class="input-field col s6">
				<input id="author-word" type="text" class="validate" name="authorWord"> 
				<label for="author-word">작가의 말</label>
			</div>
		</div>
		
		<div class="row">
			<div class="col s6">
				<p class="">그림 이미지를 등록해주세요.</p>
				<a class="waves-effect waves-light btn" id="add">Image Add</a>

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
						<input id="image[0]" type="text" class="validate" name="image-size0"
							placeholder="이미지 크기" readonly>
					</div>
				</div>
			</div>
		
			<div class="input-field col s6">
				<div class="file-field input-field">
					<div class="btn">
						<span>File</span> <input id="thumbnail" type="file" name="thumbnailFile">
					</div>
					<div class="file-path-wrapper">
						<input class="file-path validate" type="text">
					</div>
				</div>

				<div class="row">
					<div class="col s4">
						<div class="preview">
							<div class="inner">
								<p class="" id="thumbnail-text">썸네일 미리보기</p>
								<img id='preview-image' src='' />
							</div>
						</div>
					</div>
					<div class="col s8">
						<p class="">썸네일 미리보기 이미지입니다.</p>
						<input id="thumbnail-preview" type="text" class="validate"
							name="thumbnail-preview" readonly> <label
							for="thumbnail-preview"></label>
					</div>
				</div>
				
				<div class="row">
					<input type="hidden" value="${requestScope.webtoonCode }" name="webtoonCode"/>
					<input type="hidden" value="${requestScope.episodeNumber }" name="episodeNumber"/>
					<button class="btn waves-effect waves-light" type="submit" name="action">업로드하기
					</button>
					<a class="waves-effect waves-light btn">돌아가기</a>
				</div>
			</div>
		</div>
		</form>
	</div>
</body>
</html>