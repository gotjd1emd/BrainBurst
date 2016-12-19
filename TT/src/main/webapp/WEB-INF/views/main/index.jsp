<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

</style>
<script>
		$(function() {
			
			$("#actionA").click(function(){
				$.ajax({
					url : "/controller/webtoon/webtoonLevelR/funding/a",
					type : "get",
					dataType : "json",
					success : function(result) {
						$("#action").empty();
						$.each(result, function(index, item) {
							var htmlcode = "";
							htmlcode +="<div class='card col s12 m24 l2 top_card hoverable animated fadeInDown'>"
							htmlcode +="<div class='card-image waves-effect waves-block waves-light'>"
							htmlcode +="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"'></div>"
							htmlcode +="<div class='card-content webtoon_card-font'>"
							htmlcode +="<span class='card-title activator grey-text text-darken-4'>"+item.webtoonName
							htmlcode +="<i class='material-icons right webtoon_card-icon'>more_vert</i></span></div>"
							htmlcode +="<div class='card-reveal'>"
							htmlcode +="<span class='card-title grey-text text-darken-4'>"+item.webtoonName
							htmlcode +="<i class='material-icons right'>close</i></span>"
							htmlcode +="<p>"+item.summary+"</p></div></div>"
							$("#action").append(htmlcode); 
						});
					},
					error : function() {
						alert("다시 시도해주세요")
					}
				})
			})
			
			$("#sfA").click(function(){
				$.ajax({
					url : "/controller/webtoon/webtoonLevelR/funding/b",
					type : "get",
					dataType : "json",
					success : function(result) {
						$("#sf").empty();
						$.each(result, function(index, item) {
							var htmlcode = "";
							htmlcode +="<div class='card col s12 m24 l2 top_card hoverable animated fadeInDown'>"
							htmlcode +="<div class='card-image waves-effect waves-block waves-light'>"
							htmlcode +="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"'></div>"
							htmlcode +="<div class='card-content webtoon_card-font'>"
							htmlcode +="<span class='card-title activator grey-text text-darken-4'>"+item.webtoonName
							htmlcode +="<i class='material-icons right webtoon_card-icon'>more_vert</i></span></div>"
							htmlcode +="<div class='card-reveal'>"
							htmlcode +="<span class='card-title grey-text text-darken-4'>"+item.webtoonName
							htmlcode +="<i class='material-icons right'>close</i></span>"
							htmlcode +="<p>"+item.summary+"</p></div></div>"
							$("#sf").append(htmlcode); 
						});
					},
					error : function() {
						alert("다시 시도해주세요")
					}
				})
			})

			
			$("#fantasyA").click(function(){
				$.ajax({
					url : "/controller/webtoon/webtoonLevelR/funding/c",
					type : "get",
					dataType : "json",
					success : function(result) {
						$("#fantasy").empty();
						$.each(result, function(index, item) {
							var htmlcode = "";
							htmlcode +="<div class='card col s12 m24 l2 top_card hoverable animated fadeInDown'>"
							htmlcode +="<div class='card-image waves-effect waves-block waves-light'>"
							htmlcode +="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"'></div>"
							htmlcode +="<div class='card-content webtoon_card-font'>"
							htmlcode +="<span class='card-title activator grey-text text-darken-4'>"+item.webtoonName
							htmlcode +="<i class='material-icons right webtoon_card-icon'>more_vert</i></span></div>"
							htmlcode +="<div class='card-reveal'>"
							htmlcode +="<span class='card-title grey-text text-darken-4'>"+item.webtoonName
							htmlcode +="<i class='material-icons right'>close</i></span>"
							htmlcode +="<p>"+item.summary+"</p></div></div>"
							$("#fantasy").append(htmlcode); 
						});
					},
					error : function() {
						alert("다시 시도해주세요")
					}
				})
			})
			
			$("#drameA").click(function(){
				$.ajax({
					url : "/controller/webtoon/webtoonLevelR/funding/d",
					type : "get",
					dataType : "json",
					success : function(result) {
						$("#drame").empty();
						$.each(result, function(index, item) {
							var htmlcode = "";
							htmlcode +="<div class='card col s12 m24 l2 top_card hoverable animated fadeInDown'>"
							htmlcode +="<div class='card-image waves-effect waves-block waves-light'>"
							htmlcode +="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"'></div>"
							htmlcode +="<div class='card-content webtoon_card-font'>"
							htmlcode +="<span class='card-title activator grey-text text-darken-4'>"+item.webtoonName
							htmlcode +="<i class='material-icons right webtoon_card-icon'>more_vert</i></span></div>"
							htmlcode +="<div class='card-reveal'>"
							htmlcode +="<span class='card-title grey-text text-darken-4'>"+item.webtoonName
							htmlcode +="<i class='material-icons right'>close</i></span>"
							htmlcode +="<p>"+item.summary+"</p></div></div>"
							$("#drame").append(htmlcode); 
						});
					},
					error : function() {
						alert("다시 시도해주세요")
					}
				})
			})
			
			$("#thrillerA").click(function(){
				$.ajax({
					url : "/controller/webtoon/webtoonLevelR/funding/e",
					type : "get",
					dataType : "json",
					success : function(result) {
						$("#thriller").empty();
						$.each(result, function(index, item) {
							var htmlcode = "";
							htmlcode +="<div class='card col s12 m24 l2 top_card hoverable animated fadeInDown'>"
							htmlcode +="<div class='card-image waves-effect waves-block waves-light'>"
							htmlcode +="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"'></div>"
							htmlcode +="<div class='card-content webtoon_card-font'>"
							htmlcode +="<span class='card-title activator grey-text text-darken-4'>"+item.webtoonName
							htmlcode +="<i class='material-icons right webtoon_card-icon'>more_vert</i></span></div>"
							htmlcode +="<div class='card-reveal'>"
							htmlcode +="<span class='card-title grey-text text-darken-4'>"+item.webtoonName
							htmlcode +="<i class='material-icons right'>close</i></span>"
							htmlcode +="<p>"+item.summary+"</p></div></div>"
							$("#thriller").append(htmlcode); 
						});
					},
					error : function() {
						alert("다시 시도해주세요")
					}
				})
			})
			
			$("#dailyLifeA").click(function(){
				$.ajax({
					url : "/controller/webtoon/webtoonLevelR/funding/f",
					type : "get",
					dataType : "json",
					success : function(result) {
						$("#dailyLife").empty();
						$.each(result, function(index, item) {
							var htmlcode = "";
							htmlcode +="<div class='card col s12 m24 l2 top_card hoverable animated fadeInDown'>"
							htmlcode +="<div class='card-image waves-effect waves-block waves-light'>"
							htmlcode +="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"'></div>"
							htmlcode +="<div class='card-content webtoon_card-font'>"
							htmlcode +="<span class='card-title activator grey-text text-darken-4'>"+item.webtoonName
							htmlcode +="<i class='material-icons right webtoon_card-icon'>more_vert</i></span></div>"
							htmlcode +="<div class='card-reveal'>"
							htmlcode +="<span class='card-title grey-text text-darken-4'>"+item.webtoonName
							htmlcode +="<i class='material-icons right'>close</i></span>"
							htmlcode +="<p>"+item.summary+"</p></div></div>"
							$("#dailyLife").append(htmlcode); 
						});
					},
					error : function() {
						alert("다시 시도해주세요")
					}
				})
			})
			
			$("#gagA").click(function(){
				$.ajax({
					url : "/controller/webtoon/webtoonLevelR/funding/g",
					type : "get",
					dataType : "json",
					success : function(result) {
						$("##gag").empty();
						$.each(result, function(index, item) {
							var htmlcode = "";
							htmlcode +="<div class='card col s12 m24 l2 top_card hoverable animated fadeInDown'>"
							htmlcode +="<div class='card-image waves-effect waves-block waves-light'>"
							htmlcode +="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"'></div>"
							htmlcode +="<div class='card-content webtoon_card-font'>"
							htmlcode +="<span class='card-title activator grey-text text-darken-4'>"+item.webtoonName
							htmlcode +="<i class='material-icons right webtoon_card-icon'>more_vert</i></span></div>"
							htmlcode +="<div class='card-reveal'>"
							htmlcode +="<span class='card-title grey-text text-darken-4'>"+item.webtoonName
							htmlcode +="<i class='material-icons right'>close</i></span>"
							htmlcode +="<p>"+item.summary+"</p></div></div>"
							$("##gag").append(htmlcode); 
						});
					},
					error : function() {
						alert("다시 시도해주세요")
					}
				})
			})
			
			$("#adultA").click(function(){
				$.ajax({
					url : "/controller/webtoon/webtoonLevelR/funding/h",
					type : "get",
					dataType : "json",
					success : function(result) {
						$("#adult").empty();
						$.each(result, function(index, item) {
							var htmlcode = "";
							htmlcode +="<div class='card col s12 m24 l2 top_card hoverable animated fadeInDown'>"
							htmlcode +="<div class='card-image waves-effect waves-block waves-light'>"
							htmlcode +="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"'></div>"
							htmlcode +="<div class='card-content webtoon_card-font'>"
							htmlcode +="<span class='card-title activator grey-text text-darken-4'>"+item.webtoonName
							htmlcode +="<i class='material-icons right webtoon_card-icon'>more_vert</i></span></div>"
							htmlcode +="<div class='card-reveal'>"
							htmlcode +="<span class='card-title grey-text text-darken-4'>"+item.webtoonName
							htmlcode +="<i class='material-icons right'>close</i></span>"
							htmlcode +="<p>"+item.summary+"</p></div></div>"
							$("#adult").append(htmlcode); 
						});
					},
					error : function() {
						alert("다시 시도해주세요")
					}
				})
			})
			
			$("#etcA").click(function(){
				$.ajax({
					url : "/controller/webtoon/webtoonLevelR/funding/i",
					type : "get",
					dataType : "json",
					success : function(result) {
						$("#etc").empty();
						$.each(result, function(index, item) {
							var htmlcode = "";
							htmlcode +="<div class='card col s12 m24 l2 top_card hoverable animated fadeInDown'>"
							htmlcode +="<div class='card-image waves-effect waves-block waves-light'>"
							htmlcode +="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"'></div>"
							htmlcode +="<div class='card-content webtoon_card-font'>"
							htmlcode +="<span class='card-title activator grey-text text-darken-4'>"+item.webtoonName
							htmlcode +="<i class='material-icons right webtoon_card-icon'>more_vert</i></span></div>"
							htmlcode +="<div class='card-reveal'>"
							htmlcode +="<span class='card-title grey-text text-darken-4'>"+item.webtoonName
							htmlcode +="<i class='material-icons right'>close</i></span>"
							htmlcode +="<p>"+item.summary+"</p></div></div>"
							$("#etc").append(htmlcode); 
						});
					},
					error : function() {
						alert("다시 시도해주세요")
					}
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
</head>
<body>
	<input id="header-title" type="hidden" value="웹툰">
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
		<!-- 
			Top 3 웹툰 보여주는 영역
		 -->
		<div id="top" class="col s12">
				<h4 class="animated fadeInDown title-text" style="font-family:fantasy; margin-bottom:30px;">BEST 3 WEBTOON</h4>
				<div class="row">
					<c:forEach var="item" items="${webtoonList}" end="2">
						<div class="card col s12 m24 l3 top_card hoverable animated fadeInDown" style="width:370px!important;margin:-10px 70px 0px -57px !important">
							<div class="card-image card-image-box waves-effect waves-block waves-light">
								<img src="<c:url value='/resources${item.webtoonThumbnail}'/>" name="${item.webtoonCode}">
							</div>
							<div class="card-content" style="margin: 0px;padding: 0px 8px 0px 10px !important;">
								<span class="card-title activator grey-text text-darken-4" style="font-size:22px; font-weight:500;">${item.webtoonName}
								</span>
								<i class="material-icons right" style="margin-top:3%!important;">more_vert</i>
								<span id="ss" style="padding-left: 4%;">
									<a href="#"> ${item.nickname}</a>
									<i id="scription-card-btn" class="material-icons scription-a-index" 
										name="${item.webtoonCode}" style="margin-top:1%!important;">grade
									</i>
								</span>
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
				<!--
					인기 웹툰 보여주는 영역
				  -->
				<h5 class="title-text animated fadeInDown" style="font-family:fantasy; margin-bottom:30px;">POPULAR WEBTOON</h5>
				<div>
							<div class="row" style="margin-bottom: 0px; padding-bottom: 0px; padding-right: 128px;">
					<c:forEach var="item" items="${webtoonList}" varStatus="status">
						<%-- <c:choose>
							<c:when test="${status.index==0}">
								<div class="row" style="margin-bottom: 0px; padding-bottom: 0px; padding-right: 128px;">
							</c:when>
							<c:when test="${status.index mod 6==0}">
								</div>
								<div class="row" style="margin-bottom: 0px; padding-bottom: 0px; padding-right: 128px;">
							</c:when>
							<c:otherwise> --%>
							<div class="card col s12 m24 l2 top_card hoverable animated fadeInDown" style="width:200px!important;margin: -5px 7px 20px 0px !important;">
								<div class="card-image card-image-box waves-effect waves-block waves-light"style="padding-bottom:211px!important;">
								<img src="<c:url value='/resources${item.webtoonThumbnail}'/>"
									name="${item.webtoonCode}">
							</div>
							<div class="card-content"style="height: 45px!important;margin:0px;padding:0px 4px 0px 10px !important;">
								<c:choose>
									<c:when test="${fn:length(item.webtoonName) <= 7}">
										<span class="card-title activator grey-text text-darken-4" style="font-size:12.7px; font-weight:500;">
										${item.webtoonName}
										</span>
									</c:when>
									<c:otherwise>
										<span class="card-title activator grey-text text-darken-4" style="font-size:12.7px; font-weight:500;">
										${fn:substring(item.webtoonName,0,5)}...
										</span>
									</c:otherwise>
								</c:choose>
								<i class="material-icons right" style="margin-top:6%!important;">more_vert</i>
								<span id="ss" style="padding-left: 4%;">
									<i id="scription-card-btn" class="material-icons scription-a-index" 
										name="${item.webtoonCode}" style="margin-top:1%!important;">grade
									</i>
								</span>
							</div>
							<div class="card-reveal">
								<span class="card-title grey-text text-darken-4">${item.webtoonName}
								<i class="material-icons right">close</i></span>
								<p>${item.summary}</p>
							</div>   
							</div>
<%-- 							</c:otherwise>
						</c:choose> --%>
					</c:forEach>
				</div>
			</div>
		</div>
		
		<!-- 
			액션카테고리 웹툰 보여주는 영역
		 -->
		<div id="action" class="col s11">
			<div class="row">
			<c:choose>
				<c:when test="${empty sessionScope.webtoonList}">
					해당 웹툰이 없습니다.
				</c:when>
				<c:otherwise>
					<c:forEach var="item" items="${webtoonList}">
						<div class="card col s12 m24 l2 top_card hoverable animated fadeInDown">
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
						<div class="card col s12 m24 l2 top_card hoverable animated fadeInDown">
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
						<div class="card col s12 m24 l2 top_card hoverable animated fadeInDown">
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
						<div class="card col s12 m24 l2 top_card hoverable animated fadeInDown">
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
						<div class="card col s12 m24 l2 top_card hoverable animated fadeInDown">
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
						<div class="card col s12 m24 l2 top_card hoverable animated fadeInDown">
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
						<div class="card col s12 m24 l2 top_card hoverable animated fadeInDown">
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
						<div class="card col s12 m24 l2 top_card hoverable animated fadeInDown">
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
						<div class="card col s12 m24 l2 top_card hoverable animated fadeInDown">
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