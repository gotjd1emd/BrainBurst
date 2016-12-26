<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
	$(document).ready(function(){
		$.ajax({
			url : "/controller/webtoon/selectWebtoonByLevel/funding",
			type : "get",
			dataType : "json",
			success : function(result) {
			},
			error : function() {
				}
			})
		})
		$("#webtoonNameList option:selected").click(function(){
				alert("dd")
				var code=$(this).val();
				alert(code);				
				$.ajax({
					url : "/controller/webtoon/selectAllEpisode",
					type : "get",
				})
			})
	</script>
	<div class="row">
		<div class="row">
			<div class="input-field col s6" id="webtoonNameList">
			    <select id="webtoonNameList">
			      <option value="" disabled selected>웹툰 선택</option>
			      <c:forEach items="${webtoonList}" var="item">
			      	<option value="${item.webtoonCode}" >${item.webtoonName}</option>
			      </c:forEach>
			    </select>
			    <label>웹툰을 선택해 주세요</label>
			  </div>
			<div class="input-field col s6">
			    <select>
			      <option value="" disabled selected>에피소드 선택</option>
			      <option value="1">Option 1</option>
			      <option value="2">Option 2</option>
			      <option value="3">Option 3</option>
			    </select>
			    <label>에피소드를 선택해 주세요</label>
			</div> 
      	</div>
      	<div style="width:90%; height:500px; background-color: gray; margin-left: 5%; margin-top: 20px">
			차트
		</div>
      
	</div>