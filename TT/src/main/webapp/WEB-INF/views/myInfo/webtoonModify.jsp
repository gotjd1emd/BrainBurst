<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript">
	$(function() {
		
		
		
		//웹툰 제목
		$("#webtoon-name").keyup(function (e) {
			if($(this).val().length >= 20){
				  $(this).val($(this).val().substring(0, 20));
			  }
		})
		
		//줄거리 글자수 제한
		$('#textarea1').keyup(function (e){
			  if($(this).val().length >= 100){
				  $(this).val($(this).val().substring(0, 100));
			  }
	          var content = $(this).val();
	          $(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
	          $('#counter').html(content.length + '/100');
	    });
		
		$("form").submit(function() {
			if ($("#webtoon-name").val() == "") { // 웹툰 제목 미입력  검사
				Materialize.toast('웹툰 제목을 입력해 주세요.', 2000, 'rounded');
		        var width = $("#toast-container").width();
		        $("#toast-container").css("margin-left", (width*-1)+209);
		        $("#webtoon-name").focus();
				return false;
			}else if ($("#textarea1").val() == "") { // 줄거리 미입력  검사
				Materialize.toast('줄거리를 입력해 주세요.', 2000, 'rounded');
		        var width = $("#toast-container").width();
		        $("#toast-container").css("margin-left", (width*-1)+209);
		        $("#textarea1").focus();
				return false;
			}else if ($("#thumbnail").val() == "") { // 그림 이미지가 비어있을 때  검사
				Materialize.toast('웹툰 썸네일 이미지를 추가해 주세요.', 2000, 'rounded');
		        var width = $("#toast-container").width();
		        $("#toast-container").css("margin-left", (width*-1)+209);
				return false;
			}else if ($(".select-dropdown").val() == "카테고리 선택") { // 카테고리 검사
				Materialize.toast('카테고리를 선택해 주세요.', 2000, 'rounded');
		        var width = $("#toast-container").width();
		        $("#toast-container").css("margin-left", (width*-1)+209);
		        $("#episode-title").focus();
				return false;
			}
		});
		
		$('select').material_select();
		
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
<form method="post" action="<c:url value="/author/modifyWebtoon"/>" enctype="multipart/form-data">
<input id="header-title" type="hidden" value="웹툰 수정">
<div class="z-depth-1" style="margin:20px; padding: 20px; border-radius: 20px; background-color: white">
	<div class="row" style="margin-top: 20px;">
		<div class="col s6">
			<div class="input-field">
				<input id="webtoon-name" type="text" class="validate" name="webtoonName" value="${webtoonDTO.webtoonName }"> 
				<label for="webtoon-name">웹툰 제목</label>

			</div>
			<div class="input-field">
				<textarea id="textarea1" class="materialize-textarea" name="summary">${webtoonDTO.summary }</textarea>
				<label for="textarea1">줄거리</label>
				<span id="counter">0/100</span>
			</div>
		</div>
		<!-- 썸네일 file 폼 -->
		<div class="input-field col s6">
			<div class="file-field input-field">
				<div class="btn color-500">
					<span>File</span> <input id="thumbnail" type="file" name="webtoonThumbnail">
				</div>
				<div class="file-path-wrapper">
					<input class="file-path validate" type="text" value="${webtoonDTO.webtoonThumbnail }">
				</div>
			</div>
	
			<!-- 썸네일 -->
			<div class="row">
				<div class="col s4">
					<div class="preview">
						<div class="inner">
							<p id="thumbnail-text">썸네일 미리보기</p>
							<img id='preview-image' src='<c:url value="/resources"/>${webtoonThumbnailFile }' />
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

			<div class="input-field" id="category-input">
				<select name="categoryCode">
			      <option value="" disabled selected>카테고리 선택</option>
			      <option value="A">액션</option>
			      <option value="B">SF</option>
			      <option value="C">판타지</option>
			      <option value="D">드라마</option>
			      <option value="E">스릴러</option>
			      <option value="F">일상</option>
			      <option value="G">개그</option>
			      <option value="H">성인</option>
			      <option value="I">기타</option>
			    </select>
			    <label>카테고리를 선택해 주세요.</label>
			</div>
		</div>
	</div>
	<div class="webtoon-upload-btn-div" style="margin-bottom: 50px;">
		<input type="hidden" name="webtoonCode" value="${webtoonDTO.webtoonCode }"/>
		<button class="btn waves-effect waves-light color-500" type="submit" name="action">웹툰 수정</button>
		<a class="waves-effect waves-light btn color-500" href="/controller/author/authorPage">뒤로가기</a>
	</div>
</div>
</form>