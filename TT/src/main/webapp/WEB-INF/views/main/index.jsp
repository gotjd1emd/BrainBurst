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
			$("#actionA").click(function(){
				alert("dsf");
				$.ajax({
					url : "/controller/webtoon/webtoonLevelR/funding/a",
					type : "get",
					dataType : "json",
					success : function(result) {
						alert("action입니다.")
					},
					error : function() {
						alert("다시 시도해주세요")
					}
				})
			})
			
			$("#sfA").click(function(){
				alert("dsf");
				$.ajax({
					url : "/controller/webtoon/webtoonLevelR/funding/b",
					type : "get",
					dataType : "json",
					success : function(result) {
						alert("action입니다.")
					},
					error : function() {
						alert("다시 시도해주세요")
					}
				})
			})

			
			$("#fantasyA").click(function(){
				alert("dsf");
				$.ajax({
					url : "/controller/webtoon/webtoonLevelR/funding/c",
					type : "get",
					dataType : "json",
					success : function(result) {
						alert("action입니다.")
					},
					error : function() {
						alert("다시 시도해주세요")
					}
				})
			})
			
			$("#drameA").click(function(){
				alert("dsf");
				$.ajax({
					url : "/controller/webtoon/webtoonLevelR/funding/d",
					type : "get",
					dataType : "json",
					success : function(result) {
						alert("action입니다.")
					},
					error : function() {
						alert("다시 시도해주세요")
					}
				})
			})
			
			$("#thrillerA").click(function(){
				alert("dsf");
				$.ajax({
					url : "/controller/webtoon/webtoonLevelR/funding/e",
					type : "get",
					dataType : "json",
					success : function(result) {
						alert("action입니다.")
					},
					error : function() {
						alert("다시 시도해주세요")
					}
				})
			})
			
			$("#dailyLifeA").click(function(){
				alert("dsf");
				$.ajax({
					url : "/controller/webtoon/webtoonLevelR/funding/f",
					type : "get",
					dataType : "json",
					success : function(result) {
						alert("action입니다.")
					},
					error : function() {
						alert("다시 시도해주세요")
					}
				})
			})
			
			$("#gagA").click(function(){
				alert("dsf");
				$.ajax({
					url : "/controller/webtoon/webtoonLevelR/funding/g",
					type : "get",
					dataType : "json",
					success : function(result) {
						alert("action입니다.")
					},
					error : function() {
						alert("다시 시도해주세요")
					}
				})
			})
			
			$("#adultA").click(function(){
				alert("dsf");
				$.ajax({
					url : "/controller/webtoon/webtoonLevelR/funding/h",
					type : "get",
					dataType : "json",
					success : function(result) {
						alert("action입니다.")
					},
					error : function() {
						alert("다시 시도해주세요")
					}
				})
			})
			
			$("#etcA").click(function(){
				alert("dsf");
				$.ajax({
					url : "/controller/webtoon/webtoonLevelR/funding/i",
					type : "get",
					dataType : "json",
					success : function(result) {
						alert("action입니다.")
					},
					error : function() {
						alert("다시 시도해주세요")
					}
				})
			})
			
			
			$("img").click(function() {
				$(location).attr('href',"/controller/webtoon/webtoonPage/"+$(this).attr("name"));
			})
			
			$(document).on("click", "#scription-card-btn", function(){
				$(this).css("color", "#FF4436");
				$.ajax({
					url : "/controller/webtoon/subscription/"+$(this).attr("name"),
					type : "get",
					dataType : "json",
					success : function(result) {
						$("#subScriptionList").empty();
						$.each(result, function(index, item) {
							$("#subScriptionList").append("<a class='waves-effect waves-light scription-btn hoverable'><div>"+
									"<img class='circle responsive-img' style='width: 40px; height: 40px;' alt='썸네일'"+
									"src='<c:url value='/resources${item.webtoonThumbnail}'/>'>"+
									"</div><div>"+
									"<span>${item.webtoonName}</span><br>"+		
									"<span class='author-name'>${item.nickname}</span>"+		
									"</div></a>");
						});
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
				<li class="tab col s1"><a href="#action" id="actionA">액션</a></li>
				<li class="tab col s1"><a href="#sf" id="sfA">SF</a></li>
				<li class="tab col s1"><a href="#fantasy" class="tabcss" id="fantasyA">판타지</a></li>
				<li class="tab col s1"><a href="#drame" class="tabcss" id="drameA">드라마</a></li>
				<li class="tab col s1"><a href="#thriller" class="tabcss" id="thrillerA">스릴러</a></li>
				<li class="tab col s1"><a href="#dailyLife" id="dailyLifeA">일상</a></li>
				<li class="tab col s1"><a href="#gag" id="gagA">개그</a></li>
				<li class="tab col s1"><a href="#adult" id="adultA">성인</a></li>
				<li class="tab col s1"><a href="#etc" id="etcA">기타</a></li>
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
								<p id="ss">
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
						<div class="card col s12 m24 l2 top_card hoverable">
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
		<div id="action" class="col s11">
			<div class="row">
			<c:choose>
				<c:when test="${empty sessionScope.webtoonList}">
					해당 웹툰이 없습니다.
				</c:when>
				<c:otherwise>
					<c:forEach var="item" items="${webtoonList}">
						<div class="card col s12 m24 l2 top_card hoverable">
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
				</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div id="sf" class="col s11">
			<div class="row">
			<c:choose>
				<c:when test="${empty sessionScope.webtoonList}">
					해당 웹툰이 없습니다.
				</c:when>
				<c:otherwise>
					<c:forEach var="item" items="${webtoonList}">
						<div class="card col s12 m24 l2 top_card hoverable">
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
				</c:otherwise>
				</c:choose>
				</div>	
		</div>
		<div id="drame" class="col s11">
			<c:choose>
				<c:when test="${empty sessionScope.webtoonList}">
					해당 웹툰이 없습니다.
				</c:when>
				<c:otherwise>
					<c:forEach var="item" items="${webtoonList}">
						<div class="card col s12 m24 l2 top_card hoverable">
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
				</c:otherwise>
				</c:choose>
		</div>
		<div id="fantasy" class="col s11">
			<c:choose>
				<c:when test="${empty sessionScope.webtoonList}">
					해당 웹툰이 없습니다.
				</c:when>
				<c:otherwise>
					<c:forEach var="item" items="${webtoonList}">
						<div class="card col s12 m24 l2 top_card hoverable">
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
				</c:otherwise>
				</c:choose>
		</div>
		<div id="thriller" class="col s11">
			<c:choose>
				<c:when test="${empty sessionScope.webtoonList}">
					해당 웹툰이 없습니다.
				</c:when>
				<c:otherwise>
					<c:forEach var="item" items="${webtoonList}">
						<div class="card col s12 m24 l2 top_card hoverable">
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
				</c:otherwise>
				</c:choose>
		</div>
		<div id="dailyLife" class="col s11">
			<c:choose>
				<c:when test="${empty sessionScope.webtoonList}">
					해당 웹툰이 없습니다.
				</c:when>
				<c:otherwise>
					<c:forEach var="item" items="${webtoonList}">
						<div class="card col s12 m24 l2 top_card hoverable">
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
				</c:otherwise>
				</c:choose>
		</div>
		<div id="gag" class="col s11">
			<c:choose>
				<c:when test="${empty sessionScope.webtoonList}">
					해당 웹툰이 없습니다.
				</c:when>
				<c:otherwise>
					<c:forEach var="item" items="${webtoonList}">
						<div class="card col s12 m24 l2 top_card hoverable">
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
				</c:otherwise>
				</c:choose>
		</div>
		<div id="adult" class="col s11">
			<c:choose>
				<c:when test="${empty sessionScope.webtoonList}">
					해당 웹툰이 없습니다.
				</c:when>
				<c:otherwise>
					<c:forEach var="item" items="${webtoonList}">
						<div class="card col s12 m24 l2 top_card hoverable">
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
				</c:otherwise>
				</c:choose>
		</div>
		<div id="etc" class="col s11">
			<c:choose>
				<c:when test="${empty sessionScope.webtoonList}">
					해당 웹툰이 없습니다.
				</c:when>
				<c:otherwise>
					<c:forEach var="item" items="${webtoonList}">
						<div class="card col s12 m24 l2 top_card hoverable">
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
				</c:otherwise>
				</c:choose>
		</div>
	</div>
</body>
</html>