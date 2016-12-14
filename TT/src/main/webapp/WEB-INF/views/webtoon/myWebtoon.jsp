<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<script>
		$(function() {
			$("img").click(function() {
				$(location).attr('href',"/controller/webtoon/episodePage/"+$(this).attr("name"));
			})
		})
	</script>
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
		<div class="row">
			<div class="col s12">
				<ul class="tabs">
					<li class="tab col s6 m12 l3 offset-l3"><a class="active"
						href="#episode-list">목록</a></li>
					<li class="tab col s6 m12 l3"><a href="#webtoon-info">웹툰 정보</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div id="episode-list">
	<c:forEach var="episode" items="${episodeList }">
		<div class="z-depth-2">
			<div class="row">
				<div class="col s2 episode_thumbnail">
					<img class="thumbnail" name="${episode.episodeSequence}" src="<c:url value='/resources/'/>/${item.webtoonThumbnail}">
				</div>
				<div class="col s6">
					${episode.episodeTitle} <br><br>
					추천 : ${episode.recommendation}
					
				</div>
				<div class="col s4 episode_chart">
					<img class="chart" src="https://ykyuen.files.wordpress.com/2013/05/chart-js.png">
				</div>
			</div>
		</div>
	</c:forEach>
	</div>

<div id="webtoon-info">
	<c:forEach var="episode" items="${episodeList }">
		<div class="z-depth-2">
			<div class="row">
				<div class="col s2 episode_thumbnail">
					<img class="thumbnail" name="${episode.episodeSequence}" src="<c:url value='/resources/'/>/${item.webtoonThumbnail}">
				</div>
				<div class="col s6">
					${episode.episodeTitle} <br><br>
					추천 : ${episode.recommendation}
					
				</div>
				<div class="col s4 episode_chart">
					<img class="chart" src="https://ykyuen.files.wordpress.com/2013/05/chart-js.png">
				</div>
			</div>
		</div>
	</c:forEach>
	<div class="z-depth-1 episode-box">
		<a href="<c:url value='/test/modifyEpisode/1234'/>">
			<div class="row">
				<div class="episode_thumbnail">
					<img class="thumbnail"
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfiwDUBe5J0bSSnY_tkixhchUM539CKhd6-WGD1WpCrL37WxEY">
				</div>
				<div class="episode_text">
					<p>2화-고수</p>
					<p>추천 : 187</p>
				</div>
				<div class="episode_chart">
					<img class="chart"
						src="https://ykyuen.files.wordpress.com/2013/05/chart-js.png">
				</div>
			</div>
		</a>
	</div>
</div>