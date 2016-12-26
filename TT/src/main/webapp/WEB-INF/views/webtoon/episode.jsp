<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<script>
		$(function() {
			
			$("#report-modal-btn").click(function () {
				
				var webtoonCode = ${webtoonDTO.webtoonCode};
				var episodeSequence = ${episodeDTO.episodeSequence};
				var content = $("#report-content").val();
				
				var data = {"webtoonCode" : webtoonCode, "content" : content, "episodeSequence" : episodeSequence};
				
				$.ajax({
					url : "/controller/user/report",
					type : "post",
					dataType : "text",
					data : data,
					success : function(result){
						Materialize.toast('신고 접수가 완료되었습니다.', 2000, 'rounded');
				        var width = $("#toast-container").width();
				        $("#toast-container").css("margin-left", (width*-1)+209);
					},
					error : function(err) {
						Materialize.toast('다시 시도해 주세요.', 2000, 'rounded');
				        var width = $("#toast-container").width();
				        $("#toast-container").css("margin-left", (width*-1)+209);
					}
				})
			})
			
			$(".first-see").on("click", (function () {
				alert($("#episode-thumbnail1").attr("name"))
				$(location).attr('href','/controller/webtoon/episodePage/'+$("#episode-thumbnail1").attr("name"))
			})
			)
			
			$("#rmd").click(function() {
				var episodeSequence = $("#episodeSequence").val();
				if(${userDTO.email==null}){
					Materialize.toast('로그인을 해주세요.', 2000, 'rounded');
			        var width = $("#toast-container").width();
			        $("#toast-container").css("margin-left", (width*-1)+209);
				}else{
				$.ajax({
					url : "/controller/webtoon/recommandation/"+episodeSequence,
					type : "get",
					dataType : "text",
					success : function(result) {
						if(result<0){
							Materialize.toast('추천은 한번만 가능합니다.', 2000, 'rounded');
					        var width = $("#toast-container").width();
					        $("#toast-container").css("margin-left", (width*-1)+209);
						}else{
							$("#val01").html("추 천<br>:"+result)
							$("#val02").html("추천수 : "+result)
							Materialize.toast('추천 해주셔서 감사합니다.', 2000, 'rounded');
					        var width = $("#toast-container").width();
					        $("#toast-container").css("margin-left", (width*-1)+209);
						}
					},
					error : function() {
						Materialize.toast('추천은 한번만 가능합니다.', 2000, 'rounded');
				        var width = $("#toast-container").width();
				        $("#toast-container").css("margin-left", (width*-1)+209);
					}
				})
			}
			})
		})
	</script>
	<input id="header-title" type="hidden" value="${episodeDTO.episodeTitle}">
	<input id="episodeSequence" type="hidden" value="${episodeDTO.episodeSequence}">
	<div class="row title-box">
	<div class="col s3 webtoon-sumbnail-box">
		<img src="<c:url value='/resources/'/>${webtoonDTO.webtoonThumbnail}">
	</div>
	<div class="title-content-box col s8" style="height: 296px;">
		<div class="row" style="margin: 0">
			<div class="col s9">
			<c:choose>
				<c:when test="${webtoonDTO.webtoonLevel == 'funding'}">
					<c:if test="${webtoonDTO.webtoonState == 'serial'}">
						<div style="color: aquamarine;margin-bottom:-41px;margin-top:25px;">펀딩 웹툰  /  연재중</div>
					</c:if>
					<c:if test="${webtoonDTO.webtoonState == 'complete'}">
						<div style="color: aquamarine;margin-bottom:-41px;margin-top:25px;">펀딩 웹툰  /  완결</div>
					</c:if>
					<c:if test="${webtoonDTO.webtoonState == 'pause'}">
						<div style="color: aquamarine;margin-bottom:-41px;margin-top:25px;">일반 웹툰  /  휴재</div>
					</c:if>
				</c:when>
				<c:when test="${webtoonDTO.webtoonLevel == 'free'}">
					<c:if test="${webtoonDTO.webtoonState == 'serial'}">
						<div style="color: aquamarine;margin-bottom:-41px;margin-top:25px;">일반 웹툰  /  연재중</div>
						<hr style="margin-top: -45px;border: dashed 1px;color: orangered;width: 569px;">
					</c:if>
					<c:if test="${webtoonDTO.webtoonState == 'complete'}">
						<div style="color: aquamarine;margin-bottom:-41px;margin-top:25px;">일반 웹툰  /  완결</div>
					</c:if>
					<c:if test="${webtoonDTO.webtoonState == 'pause'}">
						<div style="color: aquamarine;margin-bottom:-41px;margin-top:25px;">일반 웹툰  /  휴재</div>
					</c:if>
				</c:when>
				<c:when test="${webtoonDTO.webtoonLevel == 'paid'}">
					<div style="color: aquamarine;margin-bottom:-41px;margin-top:25px;">유료 웹툰</div>
					<hr style="margin-top: -45px;border: dashed 1px;color: orangered;width: 569px;">
				</c:when>
			</c:choose>
				<p style="font-weight: 600;font-size: 35px;">${webtoonDTO.webtoonName}  
				<i id="scription-card-btn" class="material-icons" 
					name="${item.webtoonCode}" style="margin-left:7px;margin-top:7px;position:absolute;font-size:27px;">grade</i></p>
				<div style="color: coral;font-size: 20px;margin-top:-28px;margin-bottom:45px;">${webtoonDTO.nickname}</div>
				<div><hr style="margin-top: -45px;border: dashed 1px;color: orangered;width: 569px;"></div>
				<div style="color:snow;margin-left:4px">${webtoonDTO.summary}</div>
			</div>
		</div>
	</div>
	<a id='report-btn' class="waves-effect waves-light btn color-500" style="float:right; margin-top: -3%;" href="#report-modal">신고하기</a>
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

<div class="z-depth-3 remote-box" style="background-color: #424242">
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