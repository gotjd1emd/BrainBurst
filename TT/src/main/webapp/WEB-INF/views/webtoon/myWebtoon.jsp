<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<script>
		$(function() {	
			$("#episode-list").find(".row").on("click", (function() {
				$(location).attr('href',"/controller/webtoon/episodePage/"+$(this).find('img').attr("name"));
			}));
			
			/* $("#webtoon-info").find(".row").on("click", (function() {
				$(location).attr('href',"/controller/author/modifyEpisode/"+$(this).find('img').attr("name"));
			})); */
			
			$("#webtoon-info").find(".row").on("click", (function() {
				var episodeNumber = $("#episode-list").find(".row:eq(0)").find("span").text()*1+1;
				$(location).attr('href',"/controller/author/episodeUploadPage/"+$(".webtoon_title").attr("name")+"/"+episodeNumber);
			}));
			
			$("#scription-btn").click(function () {
				//컬러 바꾸기
				/*
				구독 안되어 있을 때 색상 코드 : #424242
				구독 되어 있을 때 색상 코드 : #F44336
				*/
				$("#scription-btn").css("color", "#F44336");
				
				$.ajax({
					
				})	
			})
		})
	</script>
	<div class="z-depth-2 title-box">
		<div class="row" style="margin: 0">
			<div class="col s4 webtoon-title-row">
				<div class="webtoon-title" name="${webtoonDTO.webtoonCode}">
					<img src="<c:url value='/resources/'/>${webtoonDTO.webtoonThumbnail}">
				</div>
			</div>
			<div class="col s8">
				<p class="">${webtoonDTO.nickname}<p>
				<p>${webtoonDTO.summary}</p>
			</div>
			<i id="scription-btn" class=" small material-icons scription-a-webtoon">grade</i>
		</div>
	</div>
		<div class="row tab-row">
			<div class="col s12">
				<ul class="tabs mywebtoon-tab">
					<li class="tab col s6 m12 l3 offset-l3"><a class="active" href="#episode-list">목록</a></li>
					<li class="tab col s6 m12 l3"><a href="#webtoon-info">웹툰 정보</a></li>
				</ul>
			</div>
		</div>
	<div id="episode-list" class="z-depth-1">
	<c:forEach var="episode" items="${episodeList }">
		<div class="z-depth-1 hoverable">
			<div class="row">
				<div class="col s2 episode_thumbnail">
					<img class="thumbnail" name="${episode.episodeSequence}" src="<c:url value='/resources/'/>/${item.webtoonThumbnail}">
				</div>
				<div class="col s6">
					No.<span name='episodeNumber'>${episode.episodeNumber }</span> ${episode.episodeTitle} <br><br>
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
	 <a id="episode-upload" class="btn-floating btn-large waves-effect waves-light red"><i id="episode-upload-icon" class="material-icons">create</i></a>
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