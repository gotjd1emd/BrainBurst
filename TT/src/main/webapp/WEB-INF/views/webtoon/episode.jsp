<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<script>
		$(function() {
			$("#rmd").click(function() {
				var episodeSequence = $("input[type=hidden]").val();
				$.ajax({
					url : "/controller/webtoon/recommandation/"+episodeSequence,
					type : "get",
					dataType : "text",
					success : function(result) {
						$("#val01").html("추 천<br>:"+result)
						$("#val02").html("추천수 : "+result)
					},
					error : function() {
						alert("추천은 한번만 가능합니다.")
					}
				})
			})
		})
	</script>
	<input id="header-title" type="hidden" value="${episodeDTO.episodeTitle}">
	<div class="row title-box z-depth-1">
	<div class="col s3 webtoon-sumbnail-box">
		<img src="<c:url value='/resources/'/>${webtoonDTO.webtoonThumbnail}">
	</div>
	<div class="title-content-box">
		<div class="row" style="margin: 0">
			<div class="col s4 webtoon-title-row">
				
			</div>
			<div class="col s8">
				<p class="">${webtoonDTO.nickname}<p>
				<p>${webtoonDTO.summary}</p>
			</div>
			<i id="scription-btn" class=" small material-icons scription-a-webtoon">grade</i>
		</div>
	</div>
	</div>
		<div class="row tab-row  z-depth-1">
			<div class="col s12">
				<ul class="tabs mywebtoon-tab">
					<li class="tab col s6 m12 l4 offset-l4"><a class="active" href="#episode-list">${episodeDTO.episodeNumber}화</a></li>
				</ul>
			</div>
		</div>

<c:forEach var="item" items="${imageList}">
<div class="center">
	<img alt="webtoon" src="<c:url value='/resources/'/>${item}">
</div>
</c:forEach>

<div class="z-depth-2">
	<div>작가의말 : ${episodeDTO.authorWord}</div>
	<div class="center">
		<p class="flow-text" id="val02">추천수 : ${episodeDTO.recommendation}</p>
	</div>
	<div class="center">
		<button class="btn waves-effect waves-light" type="submit"
			name="action" id="rmd">추천 하기</button>
		<input type="hidden" value="${episodeDTO.episodeSequence}">
	</div>
</div>

<div class="z-depth-3 remote-box grey lighten-1">
	<div class="row remote-row">
		<a href="/controller/webtoon/episodePage/${prevEpisodeSequence}" class="col s4 offset-s4 waves-effect waves-light btn remote-btn color-500"><i class="material-icons">keyboard_arrow_up</i></a>
	</div>
	<div class="row remote-row">
	<c:choose>
		<c:when test="${prevEpisodeSequence != 0}">
			<a href="/controller/webtoon/episodePage/${prevEpisodeSequence}" class="col s4 waves-effect waves-light btn remote-btn color-500"><i class="material-icons">keyboard_arrow_left</i></a>
		</c:when>
		<c:otherwise>
			<a href="/controller/webtoon/episodePage/${prevEpisodeSequence}" class="col s4 waves-effect waves-light btn remote-btn color-500 disabled"><i class="material-icons">keyboard_arrow_left</i></a>
		</c:otherwise>
	</c:choose>
	<a href="/controller/webtoon/webtoonPage/${webtoonDTO.webtoonCode}" class="col s4 waves-effect waves-light btn remote-btn color-500"><i class="material-icons">toc</i></a>
	<c:choose>
		<c:when test="${nextepisodeSequence != 0}">
			<a href="/controller/webtoon/episodePage/${nextepisodeSequence}" class="col s4 waves-effect waves-light btn remote-btn color-500"><i class="material-icons">keyboard_arrow_right</i></a>
		</c:when>
		<c:otherwise>
			<a href="/controller/webtoon/episodePage/${nextepisodeSequence}" class="col s4 waves-effect waves-light btn remote-btn color-500 disabled"><i class="material-icons">keyboard_arrow_right</i></a>
		</c:otherwise>
	</c:choose>
	</div>
	<div class="row">
		<a href="/controller/webtoon/episodePage/${prevEpisodeSequence}" class="col s4 offset-s4 waves-effect waves-light btn remote-btn color-500"><i class="material-icons">keyboard_arrow_down</i></a>
	</div>
	
</div>
