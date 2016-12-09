<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="StyleSheet" href="<c:url value='/resources/css/modifyWebtoon.css'/>">
<script type="text/javascript">
	$(function() {
		$('#thumbnail').on("change", function(){
			readURL(this);
		});
	});
	
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			
			reader.onload = function(e) {
				$('#preview-image').attr('src', e.target.result);
			}
			
			reader.readAsDataURL(input.files[0]);
		}
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
			<div class="input-field col s6">
				<input id="episode-title" type="text" class="validate" name="episodeTitle"> 
				<label for="episode-title">에피소드 제목</label>
			</div>
			<div class="input-field col s6">
				<input id="nickname-word" type="text" class="validate" name="nicknameWord"> 
				<label for="nickname-word">작가의 말</label>
			</div>
		</div>
		
		<div class="row">
			<div class="input-field col s6">
				<div class="file-field input-field">
					<div class="btn">
						<span>File</span> <input id="thumbnail" type="file" name="thumbnail">
					</div>
					<div class="file-path-wrapper">
						<input class="file-path validate" type="text">
					</div>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col s2">
				<div class="preview">
				<div class="inner">
					<p class="flow-text">썸네일 미리보기 </p>
					<img id="preview-image" src="#"/>
				</div>
				</div>
			</div>
			<div class="col s4">
				<p class="flow-text">썸네일 미리보기 이미지입니다.</p>
				<input id="thumbnail-preview" type="text" class="validate" name="thumbnail-preview" readonly>
				<label for="thumbnail-preview"></label>
			</div>
		</div>
		
		<div class="row">
			<div class="input-field col s6">
				<div class="file-field input-field">
					<div class="btn">
						<span>File</span> <input type="file" multiple>
					</div>
					<div class="file-path-wrapper">
						<input class="file-path validate" type="text" placeholder="Upload one or more files">
					</div>
				</div>
			</div>
		</div>
		
		<div class="row">
			<ul class="collection">
				<li class="collection-item">Alvin</li>
				<li class="collection-item">Alvin</li>
				<li class="collection-item">Alvin</li>
				<li class="collection-item">Alvin</li>
			</ul>
		</div>
	</div>
</body>
</html>