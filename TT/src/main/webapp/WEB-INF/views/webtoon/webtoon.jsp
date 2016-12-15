<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<script>
		$(function() {
			$(".episode-list").find(".row").on("click", (function() {
				$(location).attr('href',"/controller/webtoon/episodePage/"+$(this).find('img').attr("name"));
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
	<div class="z-depth-2">
		<div class="row">
			<div class="col s2">
				<div class="webtoon_title">
					<img src="<c:url value='/resources/'/>${webtoonDTO.webtoonThumbnail}">
				</div>
			</div>
			<div class="col s10">
				${webtoonDTO.nickname} <br>
				${webtoonDTO.summary}
			</div>
		<i id="scription-btn" class=" small material-icons scription-a-webtoon">grade</i>
		</div>
	</div>
	
	<c:forEach var="episode" items="${episodeList}">
	<div class="z-depth-2 episode-list">
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