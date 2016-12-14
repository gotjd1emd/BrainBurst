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

<div class="z-depth-2">
	<div class="row">
		<div class="col s2">
			<div class="webtoon_title">
				<img src="<c:url value='/resources/'/>${webtoonDTO.webtoonThumbnail}">
			</div>
		</div>

		<div class="col s8">
			${webtoonDTO.webtoonName}<br>${webtoonDTO.nickname}
		</div>
		<div class="col s1">
			<br>
			<br>
			<br>
			<br>
			<div class="right">
				<a href="#report-modal">
					<div class="report">
						<i class="material-icons">priority_high</i>
					</div>
				</a>
			</div>
		</div>
		<div class="col s1">
			<blockquote>
				<p class="flow-text" id="val01">
					추 천<br>:${episodeDTO.recommendation}
				</p>
			</blockquote>
		</div>
	</div>
</div>
<c:forEach var="item" items="${imageList}">
<div class="center">
	<img alt="webtoon" src="<c:url value='/resources/'/>${item}">
</div>
</c:forEach>
<c:if test="${prevEpisodeSequence != 0}">
<a href="/controller/webtoon/episodePage/${prevEpisodeSequence}">이전화</a><br>
</c:if>
<a href="/controller/webtoon/webtoonPage/${webtoonDTO.webtoonCode}">목록으로</a><br>
<c:if test="${nextepisodeSequence != 0}">
<a href="/controller/webtoon/episodePage/${nextepisodeSequence}">다음화</a>
</c:if>

<div class="z-depth-2">
	<div>작가의말 : ${episodeDTO.authorword}</div>
	<div class="center">
		<p class="flow-text" id="val02">추천수 : ${episodeDTO.recommendation}</p>
	</div>
	<div class="center">
		<button class="btn waves-effect waves-light" type="submit"
			name="action" id="rmd">추천 하기</button>
		<input type="hidden" value="${episodeDTO.episodeSequence}">
	</div>
</div>
