<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
/* Style */
</style>
<script>
		$(function() {
			$("img").click(function() {
				$(location).attr('href',"/controller/webtoon/webtoonPage/"+$(this).attr("name"));
			})
			$(document).on("click", ".scription-a-index", function(){
				var webtoonCode = $(this).attr("name")
				$(this).css("color", "#FF4436");  
				$.ajax({
					url : "/controller/webtoon/subscription/"+webtoonCode,
					type : "get",
					dataType : "json",
					success : function(result) {
						$(".scription-box")
					},
					error : function() {
						alert("추천은 한번만 가능합니다.")
					}
				})
			})
		})
	</script>
</head>
<body>
	<div class="row">
		<div class="col s12 category-tab-index z-depth-1 grey darken-3">
			<ul class="tabs grey darken-3">
				<li class="tab col s1 offset-s1"><a href="#top">TOP</a></li>
				<li class="tab col s1"><a href="#action">액션</a></li>
				<li class="tab col s1"><a href="#sf">SF</a></li>
				<li class="tab col s1"><a href="#drame" class="tabcss">드라마</a></li>
				<li class="tab col s1"><a href="#fantasy" class="tabcss">판타지</a></li>
				<li class="tab col s1"><a href="#thriller" class="tabcss">스릴러</a></li>
				<li class="tab col s1"><a href="#dailyLife">일상</a></li>
				<li class="tab col s1"><a href="#gag">개그</a></li>
				<li class="tab col s1"><a href="#adult">성인</a></li>
				<li class="tab col s1"><a href="#etc">기타</a></li>
			</ul>
		</div>
		<div id="top" class="col s12">
				<h3 class="animated zoomIn title-text">웹툰 TOP3</h3>
				<div class="row">
					<c:forEach var="item" items="${webtoonList}" end="2">
						<div class="card col s12 m24 l3 top_card hoverable">
							<div class="card-image card-image-box waves-effect waves-block waves-light">
								<img src="<c:url value='/resources${item.webtoonThumbnail}'/>"
									name="${item.webtoonCode}">
							</div>
							<div class="card-content">
								<span class="card-title activator grey-text text-darken-4">${item.webtoonName}
								<i class="material-icons right">more_vert</i></span>
								<p>
									<a href="#">${item.nickname}</a>
									<i id="scription-card-btn" class="material-icons scription-a-index" name="${item.webtoonCode}">grade</i>
									${item.subscriptionSequence}
								</p>
							</div>
							<div class="card-reveal">
								<span class="card-title grey-text text-darken-4">${item.webtoonName}
								<i class="material-icons right">close</i></span>
								<p>${item.summary}</p>
							</div>
						</div>
					</c:forEach>
				</div>
				<hr>
				<h5 class="animated zoomIn title-text">인기 웹툰</h5>
				<div class="row">
					<c:forEach var="item" items="${webtoonList}" begin="3">
						<div class="card small col l2 webtoon_card hoverable">
							<div class="card-image waves-effect waves-block waves-light">
								<img src="<c:url value='/resources/'/>/${item.webtoonThumbnail}">
							</div>
							<div class="card-content webtoon_card-font">
								<span class="card-title activator grey-text text-darken-4">${item.webtoonName}
								<i class="material-icons right webtoon_card-icon">more_vert</i></span>
							</div>
							<div class="card-reveal">
								<span class="card-title grey-text text-darken-4">${item.webtoonName}
								<i class="material-icons right">close</i></span>
								<p>${item.summary}</p>
							</div>
						</div>
					</c:forEach>
				</div>
		</div>
		<div id="action" class="col s12">
			
		</div>
		<div id="sf" class="col s12">
		
		</div>
		<div id="drame" class="col s12 ">
		
		</div>
		<div id="fantasy" class="col s12 ">
		
		</div>
		<div id="thriller" class="col s12 ">
		
		</div>
		<div id="dailyLife" class="col s12">
		
		</div>
		<div id="gag" class="col s12">

		</div>
		<div id="adult" class="col s12">
		
		</div>
		<div id="etc" class="col s12">
		
		</div>
	</div>
</body>
</html>