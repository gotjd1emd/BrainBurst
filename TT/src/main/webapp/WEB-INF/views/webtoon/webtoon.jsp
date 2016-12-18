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
			
			
			$(document).on("click", "#scription-card-btn", function(){
				$(this).css("color", "#FF4436");
				$.ajax({
					url : "/controller/webtoon/subscription/"+$(this).attr("name"),
					type : "post",
					dataType : "json",
					success : function(result) {
						$("#subScriptionList").empty();
							$.each(result, function(index, item) {
								var htmlcode = "";
								htmlcode +="<li><a class='waves-effect waves-light scription-btn hoverable'><div>";
								htmlcode +="<img class='circle responsive-img' style='width: 40px; height: 40px;' alt='썸네일' ";
								htmlcode +="src='/resources"+item.webtoonThumbnail+"'>";
								htmlcode +="</div><div>";
								htmlcode +="<span>"+item.webtoonName+"</span><br>";		
								htmlcode +="<span class='author-name'>"+item.nickname+"</span>";		
								htmlcode +="</div></a></li>"
								$("#subScriptionList").append(htmlcode);
							});
					},
					error : function() {
						alert("이미 구독하였습니다.")
					}
				})
			})
		})
	</script>
	<input id="header-title" type="hidden" value="${webtoonDTO.webtoonName}">
	<div class="row title-box">
	<div class="col s3 webtoon-sumbnail-box">
		<img src="<c:url value='/resources/'/>${webtoonDTO.webtoonThumbnail}">
	</div>
	<div class="title-content-box col s8" style="height: 296px;">
		<div class="row" style="margin: 0">
			<div class="col s4 webtoon-title-row">
				
			</div>
			<div class="col s9">
			<c:choose>
				<c:when test="${webtoonDTO.webtoonLevel == 'funding'}">
					<c:if test="${webtoonDTO.webtoonState == 'serial'}">
						<div style="color: aquamarine;margin-bottom:-41px;margin-top:25px;">펀딩 웹툰  /  연재중</div>
					</c:if>
					<c:if test="${webtoonDTO.webtoonState == 'complete'}">
						<div style="color: aquamarine;margin-bottom:-41px;margin-top:25px;">펀딩 웹툰  /  완결</div>
					</c:if>
				</c:when>
				<c:when test="${webtoonDTO.webtoonLevel == 'free'}">
					<c:if test="${webtoonDTO.webtoonState == 'serial'}">
						<div style="color: aquamarine;margin-bottom:-41px;margin-top:25px;">일반 웹툰  /  연재중</div>
					</c:if>
					<c:if test="${webtoonDTO.webtoonState == 'complete'}">
						<div style="color: aquamarine;margin-bottom:-41px;margin-top:25px;">일반 웹툰  /  완결</div>
					</c:if>
				</c:when>
				<c:when test="${webtoonDTO.webtoonLevel == 'paid'}">
					<div style="color: aquamarine;margin-bottom:-41px;margin-top:25px;">유료 웹툰</div>
				</c:when>
			</c:choose>
				<p style="font-weight: 600;font-size: 35px;">${webtoonDTO.webtoonName}  
				<i id="scription-card-btn" class="material-icons" 
					name="${item.webtoonCode}" style="margin-left:7px;margin-top:7px;position:absolute;font-size:27px;">grade</i></p>
				<div style="color: coral;font-size: 20px;margin-top:-28px;margin-bottom:45px;">${webtoonDTO.nickname}</div>
				<div style="color:snow;">${webtoonDTO.summary}</div>
			</div>
		</div>
	</div>
	</div>
		<div class="row tab-row  z-depth-1">
			<div class="col s12">
				<ul class="tabs mywebtoon-tab">
					<li class="tab col s6 m12 l4 offset-l4"><a class="active" href="#episode-list">웹툰 목록</a></li>
				</ul>
			</div>
		</div>
		<div id="episode-list" class="episode-list">
	<c:forEach var="episode" items="${episodeList }">
		<div class="z-depth-1 hoverable radius white">
			<div class="row radius">
				<div class="episode_thumbnail">
					<img class="thumbnail" name="${episode.episodeSequence}" src="<c:url value='/resources/'/>${webtoonDTO.webtoonThumbnail}">
				</div>
				<div class="col s5 episode-content">
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