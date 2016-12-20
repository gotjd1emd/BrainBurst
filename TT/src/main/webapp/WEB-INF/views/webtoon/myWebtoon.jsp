<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<script>
		$(function() {
			$(document).ready(function() {
				$("#scription-card-btn").css("color", "#F44336");
				$("#scription-card-btn[name$='_0']").css("color", "#424242");
			})
			var width = $(".title-box").width()-$(".webtoon-sumbnail-box").width()-50;
			$(".title-content-box").width(width);
			var height = $(".title-box").height();
			$(".title-content-box").height(height);
			
			$(window).resize(function() {
				var width = $(".title-box").width()-$(".webtoon-sumbnail-box").width()-50;
				$(".title-content-box").width(width);
				var height = $(".title-box").height();
				$(".title-content-box").height(height);
			})
			/*에피소드 보기*/
			$("#episode-list").find(".row").on("click", (function() {
				$(location).attr('href',"/controller/webtoon/episodePage/"+$(this).find('img').attr("name"));
			}));
			/*에피소드 수정*/
			$("#webtoon-info").find(".row").on("click", (function() {
				$(location).attr('href',"/controller/webtoon/modifyEpisode/"+$(this).find('img').attr("name"));
			}));
			/*에피소드 업로드*/
			$("#episode-upload").on("click", (function() {
				var episodeNumber = $("#episode-list").find(".row:eq(0)").find("span").text()*1+1;
				$(location).attr('href',"/controller/webtoon/episodeUploadPage/"+$("input[name=webtoonCode]").val()+"/"+episodeNumber);
			}));
			
			$(".first-see").on("click", (function () {
				$(location).attr('href','/controller/webtoon/episodePage/'+$("#episode-thumbnail1").attr("name"))
			})
			)
			
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
				if ($(this).css("color")=="rgb(66, 66, 66)") {
					alert("추가")
					$(this).css("color", "#F44336");
					$.ajax({
						url : "/controller/webtoon/subscription/add/"+$(this).attr("name"),
						type : "post",
						dataType : "json",
						success : function(result) {
							$(this).css("color", "#FF4436");
							$("#subScriptionList").empty();
								$.each(result, function(index, item) {
									var htmlcode = "";
									htmlcode +="<li><a class='waves-effect waves-light scription-btn hoverable'><div>";
									htmlcode +="<img class='circle responsive-img' style='width: 40px; height: 40px;' alt='썸네일' ";
									htmlcode +="src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"' id='gowebtoon'>";
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
				} else if ($(this).css("color")=="rgb(244, 67, 54)") {
					alert("삭제")
					$(this).css("color", "#424242");
					$.ajax({
						url : "/controller/webtoon/subscription/del/"+$(this).attr("name"),
						type : "post",
						dataType : "json",
						success : function(result) {
							$(this).css("color", "#FF4436");
							$("#subScriptionList").empty();
								$.each(result, function(index, item) {
									var htmlcode = "";
									htmlcode +="<li><a class='waves-effect waves-light scription-btn hoverable'><div>";
									htmlcode +="<img class='circle responsive-img' style='width: 40px; height: 40px;' alt='썸네일' ";
									htmlcode +="src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"' id='gowebtoon'>";
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
				}
			})
			
		})
	</script>
	<input id="header-title" type="hidden" value="${webtoonDTO.webtoonName}">
	<input type="hidden" name="webtoonCode" value="${webtoonDTO.webtoonCode}">
	<div class="row title-box">
	<div class="col s3 webtoon-sumbnail-box">
		<img src="<c:url value='/resources/'/>${webtoonDTO.webtoonThumbnail}">
	</div>
	<div class="title-content-box">
		<div class="row" style="margin: 0">
			<div class="col s4 webtoon-title-row">
				
			</div>
			<div class="col s9">
				<div style="color: aquamarine;margin-bottom:-41px;margin-top:25px;">MY WEBTOON</div>
				<p style="font-weight: 600;font-size: 35px;">${webtoonDTO.webtoonName}  
				<i id="scription-card-btn" class="material-icons" 
					name="${webtoonDTO.webtoonCode}_${webtoonDTO.subscriptionSequence}" style="margin-left:7px;margin-top:7px;position:absolute;font-size:27px;">grade</i></p>
				<div style="color: coral;font-size: 20px;margin-top:-28px;margin-bottom:45px;">${webtoonDTO.nickname}</div>
				<div style="color:snow;">${webtoonDTO.summary}</div>
			</div>
		</div>
	</div>
	<a class="waves-effect waves-light btn color-500 first-see" style="float:right; margin-top: -3%;">첫회보기</a>
	</div>
		<div class="row tab-row  z-depth-1">
			<div class="col s12">
				<ul class="tabs mywebtoon-tab">
					<li class="tab col s6 m12 l3 offset-l3"><a class="active" href="#episode-list">목록</a></li>
					<li class="tab col s6 m12 l3"><a href="#webtoon-info">웹툰 정보</a></li>
				</ul>
			</div>
		</div>
	<div id="episode-list" class="episode-list">
	<c:forEach var="episode" items="${episodeList }">
		<div class="z-depth-1 hoverable radius white">
			<div class="row radius">
				<div class="episode_thumbnail">
					<img class="thumbnail" name="${episode.episodeSequence}" src="<c:url value='/resources/'/>${episode.thumbnail}">
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

<div id="webtoon-info" class="episode-list">
	 <a id="episode-upload" class="btn-floating btn-large waves-effect waves-light red"><i id="episode-upload-icon" class="material-icons">create</i></a>
		<c:forEach var="episode" items="${episodeList }" varStatus="status">
		<div class="z-depth-1 hoverable radius white">
			<div class="row radius">
				<div class="episode_thumbnail">
					<img id="episode-thumbnail${status.count}" class="thumbnail" name="${episode.episodeSequence}" src="<c:url value='/resources/'/>${episode.thumbnail}">
				</div>
				<div class="col s5 episode-content">
					No.<span name='episodeNumber'>${episode.episodeNumber}</span> ${episode.episodeTitle} <br><br>
					추천 : ${episode.recommendation}
				</div>
				<div class="col s4 episode_chart">
					<img class="chart" src="https://ykyuen.files.wordpress.com/2013/05/chart-js.png">
				</div>
			</div>
		</div>
	</c:forEach>
</div>