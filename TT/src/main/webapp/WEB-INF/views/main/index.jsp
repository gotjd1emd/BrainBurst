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
						var htmlcode = "";
						$.each(result, function(index, item) {
							if(index==0){
								htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%; margin-top:20px;'>";
							}else if(index%6==0){
								htmlcode+="</div>";
								htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%;'>";
							}else{
								htmlcode+="<div class='card col s12 m24 l2 top_card hoverable animated' style='width:200px!important;margin: -5px 7px 20px 0px !important;'>"
								htmlcode+="<div class='card-image card-image-box waves-effect waves-block waves-light' style='padding-bottom:211px!important;'>"
								htmlcode+="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"' id='gowebtoon'></div>"
								htmlcode+="<div class='card-content' style='height: 45px!important;margin:0px;padding:0px 4px 0px 10px !important;'>"
								if (item.webtoonName.length <= 7) {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName+"</span>"	
								} else {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName.substring(0,5)+"...</span>"	
								}
								htmlcode+="<i class='material-icons right' style='margin-top:6%!important;'>more_vert</i>"
								htmlcode+="<span id='ss' style='padding-left: 4%;'>"
								htmlcode+="<i id='scription-card-btn' class='material-icons scription-a-index' name='"+item.webtoonCode+"' style='margin-top:1%!important;'>grade</i>"
								htmlcode+="</span></div><div class='card-reveal'><span class='card-title grey-text text-darken-4'>"+item.webtoonName
								htmlcode+="<i class='material-icons right'>close</i></span><p>"+item.summary+"</p></div></div>"
							}
						});
						htmlcode+="</div>";
						$("#action").append(htmlcode); 
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
						var htmlcode = "";
						$.each(result, function(index, item) {
							if(index==0){
								htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%; margin-top:20px;'>";
							}else if(index%6==0){
								htmlcode+="</div>";
								htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%;'>";
							}else{
								htmlcode+="<div class='card col s12 m24 l2 top_card hoverable animated' style='width:200px!important;margin: -5px 7px 20px 0px !important;'>"
								htmlcode+="<div class='card-image card-image-box waves-effect waves-block waves-light' style='padding-bottom:211px!important;'>"
								htmlcode+="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"' id='gowebtoon'></div>"
								htmlcode+="<div class='card-content' style='height: 45px!important;margin:0px;padding:0px 4px 0px 10px !important;'>"
								if (item.webtoonName.length <= 7) {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName+"</span>"	
								} else {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName.substring(0,5)+"...</span>"	
								}
								htmlcode+="<i class='material-icons right' style='margin-top:6%!important;'>more_vert</i>"
								htmlcode+="<span id='ss' style='padding-left: 4%;'>"
								htmlcode+="<i id='scription-card-btn' class='material-icons scription-a-index' name='"+item.webtoonCode+"' style='margin-top:1%!important;'>grade</i>"
								htmlcode+="</span></div><div class='card-reveal'><span class='card-title grey-text text-darken-4'>"+item.webtoonName
								htmlcode+="<i class='material-icons right'>close</i></span><p>"+item.summary+"</p></div></div>"
							}
						});
						htmlcode+="</div>";
						$("#sf").append(htmlcode); 
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
						var htmlcode = "";
						$.each(result, function(index, item) {
							if(index==0){
								htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%; margin-top:20px;'>";
							}else if(index%6==0){
								htmlcode+="</div>";
								htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%;'>";
							}else{
								htmlcode+="<div class='card col s12 m24 l2 top_card hoverable animated' style='width:200px!important;margin: -5px 7px 20px 0px !important;'>"
								htmlcode+="<div class='card-image card-image-box waves-effect waves-block waves-light' style='padding-bottom:211px!important;'>"
								htmlcode+="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"' id='gowebtoon'></div>"
								htmlcode+="<div class='card-content' style='height: 45px!important;margin:0px;padding:0px 4px 0px 10px !important;'>"
								if (item.webtoonName.length <= 7) {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName+"</span>"	
								} else {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName.substring(0,5)+"...</span>"	
								}
								htmlcode+="<i class='material-icons right' style='margin-top:6%!important;'>more_vert</i>"
								htmlcode+="<span id='ss' style='padding-left: 4%;'>"
								htmlcode+="<i id='scription-card-btn' class='material-icons scription-a-index' name='"+item.webtoonCode+"' style='margin-top:1%!important;'>grade</i>"
								htmlcode+="</span></div><div class='card-reveal'><span class='card-title grey-text text-darken-4'>"+item.webtoonName
								htmlcode+="<i class='material-icons right'>close</i></span><p>"+item.summary+"</p></div></div>"
							}
						});
						htmlcode+="</div>";
						$("#fantasy").append(htmlcode); 
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
						var htmlcode = "";
						$.each(result, function(index, item) {
							if(index==0){
								htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%; margin-top:20px;'>";
							}else if(index%6==0){
								htmlcode+="</div>";
								htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%;'>";
							}else{
								htmlcode+="<div class='card col s12 m24 l2 top_card hoverable animated' style='width:200px!important;margin: -5px 7px 20px 0px !important;'>"
								htmlcode+="<div class='card-image card-image-box waves-effect waves-block waves-light' style='padding-bottom:211px!important;'>"
								htmlcode+="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"' id='gowebtoon'></div>"
								htmlcode+="<div class='card-content' style='height: 45px!important;margin:0px;padding:0px 4px 0px 10px !important;'>"
								if (item.webtoonName.length <= 7) {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName+"</span>"	
								} else {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName.substring(0,5)+"...</span>"	
								}
								htmlcode+="<i class='material-icons right' style='margin-top:6%!important;'>more_vert</i>"
								htmlcode+="<span id='ss' style='padding-left: 4%;'>"
								htmlcode+="<i id='scription-card-btn' class='material-icons scription-a-index' name='"+item.webtoonCode+"' style='margin-top:1%!important;'>grade</i>"
								htmlcode+="</span></div><div class='card-reveal'><span class='card-title grey-text text-darken-4'>"+item.webtoonName
								htmlcode+="<i class='material-icons right'>close</i></span><p>"+item.summary+"</p></div></div>"
							}
						});
						htmlcode+="</div>";
						$("#drame").append(htmlcode); 
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
						var htmlcode = "";
						$.each(result, function(index, item) {
							if(index==0){
								htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%; margin-top:20px;'>";
							}else if(index%6==0){
								htmlcode+="</div>";
								htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%;'>";
							}else{
								htmlcode+="<div class='card col s12 m24 l2 top_card hoverable animated' style='width:200px!important;margin: -5px 7px 20px 0px !important;'>"
								htmlcode+="<div class='card-image card-image-box waves-effect waves-block waves-light' style='padding-bottom:211px!important;'>"
								htmlcode+="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"' id='gowebtoon'></div>"
								htmlcode+="<div class='card-content' style='height: 45px!important;margin:0px;padding:0px 4px 0px 10px !important;'>"
								if (item.webtoonName.length <= 7) {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName+"</span>"	
								} else {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName.substring(0,5)+"...</span>"	
								}
								htmlcode+="<i class='material-icons right' style='margin-top:6%!important;'>more_vert</i>"
								htmlcode+="<span id='ss' style='padding-left: 4%;'>"
								htmlcode+="<i id='scription-card-btn' class='material-icons scription-a-index' name='"+item.webtoonCode+"' style='margin-top:1%!important;'>grade</i>"
								htmlcode+="</span></div><div class='card-reveal'><span class='card-title grey-text text-darken-4'>"+item.webtoonName
								htmlcode+="<i class='material-icons right'>close</i></span><p>"+item.summary+"</p></div></div>"
							}
						});
						htmlcode+="</div>";
						$("#thriller").append(htmlcode); 
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
						var htmlcode = "";
						$.each(result, function(index, item) {
							if(index==0){
								htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%; margin-top:20px;'>";
							}else if(index%6==0){
								htmlcode+="</div>";
								htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%;'>";
							}else{
								htmlcode+="<div class='card col s12 m24 l2 top_card hoverable animated' style='width:200px!important;margin: -5px 7px 20px 0px !important;'>"
								htmlcode+="<div class='card-image card-image-box waves-effect waves-block waves-light' style='padding-bottom:211px!important;'>"
								htmlcode+="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"' id='gowebtoon'></div>"
								htmlcode+="<div class='card-content' style='height: 45px!important;margin:0px;padding:0px 4px 0px 10px !important;'>"
								if (item.webtoonName.length <= 7) {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName+"</span>"	
								} else {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName.substring(0,5)+"...</span>"	
								}
								htmlcode+="<i class='material-icons right' style='margin-top:6%!important;'>more_vert</i>"
								htmlcode+="<span id='ss' style='padding-left: 4%;'>"
								htmlcode+="<i id='scription-card-btn' class='material-icons scription-a-index' name='"+item.webtoonCode+"' style='margin-top:1%!important;'>grade</i>"
								htmlcode+="</span></div><div class='card-reveal'><span class='card-title grey-text text-darken-4'>"+item.webtoonName
								htmlcode+="<i class='material-icons right'>close</i></span><p>"+item.summary+"</p></div></div>"
							}
						});
						htmlcode+="</div>";
						$("#dailyLife").append(htmlcode); 
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
						$("#gag").empty();
						var htmlcode = "";
						$.each(result, function(index, item) {
							if(index==0){
								htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%; margin-top:20px;'>";
							}else if(index%6==0){
								htmlcode+="</div>";
								htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%;'>";
							}else{
								htmlcode+="<div class='card col s12 m24 l2 top_card hoverable animated' style='width:200px!important;margin: -5px 7px 20px 0px !important;'>"
								htmlcode+="<div class='card-image card-image-box waves-effect waves-block waves-light' style='padding-bottom:211px!important;'>"
								htmlcode+="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"' id='gowebtoon'></div>"
								htmlcode+="<div class='card-content' style='height: 45px!important;margin:0px;padding:0px 4px 0px 10px !important;'>"
								if (item.webtoonName.length <= 7) {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName+"</span>"	
								} else {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName.substring(0,5)+"...</span>"	
								}
								htmlcode+="<i class='material-icons right' style='margin-top:6%!important;'>more_vert</i>"
								htmlcode+="<span id='ss' style='padding-left: 4%;'>"
								htmlcode+="<i id='scription-card-btn' class='material-icons scription-a-index' name='"+item.webtoonCode+"' style='margin-top:1%!important;'>grade</i>"
								htmlcode+="</span></div><div class='card-reveal'><span class='card-title grey-text text-darken-4'>"+item.webtoonName
								htmlcode+="<i class='material-icons right'>close</i></span><p>"+item.summary+"</p></div></div>"
							}
						});
						htmlcode+="</div>";
						$("#gag").append(htmlcode); 
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
						var htmlcode = "";
						$.each(result, function(index, item) {
							if(index==0){
								htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%; margin-top:20px;'>";
							}else if(index%6==0){
								htmlcode+="</div>";
								htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%;'>";
							}else{
								htmlcode+="<div class='card col s12 m24 l2 top_card hoverable animated' style='width:200px!important;margin: -5px 7px 20px 0px !important;'>"
								htmlcode+="<div class='card-image card-image-box waves-effect waves-block waves-light' style='padding-bottom:211px!important;'>"
								htmlcode+="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"' id='gowebtoon'></div>"
								htmlcode+="<div class='card-content' style='height: 45px!important;margin:0px;padding:0px 4px 0px 10px !important;'>"
								if (item.webtoonName.length <= 7) {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName+"</span>"	
								} else {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName.substring(0,5)+"...</span>"	
								}
								htmlcode+="<i class='material-icons right' style='margin-top:6%!important;'>more_vert</i>"
								htmlcode+="<span id='ss' style='padding-left: 4%;'>"
								htmlcode+="<i id='scription-card-btn' class='material-icons scription-a-index' name='"+item.webtoonCode+"' style='margin-top:1%!important;'>grade</i>"
								htmlcode+="</span></div><div class='card-reveal'><span class='card-title grey-text text-darken-4'>"+item.webtoonName
								htmlcode+="<i class='material-icons right'>close</i></span><p>"+item.summary+"</p></div></div>"
							}
						});
						htmlcode+="</div>";
						$("#adult").append(htmlcode); 
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
						var htmlcode = "";
						$.each(result, function(index, item) {
							if(index==0){
								htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%; margin-top:20px;'>";
							}else if(index%6==0){
								htmlcode+="</div>";
								htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%;'>";
							}else{
								htmlcode+="<div class='card col s12 m24 l2 top_card hoverable animated' style='width:200px!important;margin: -5px 7px 20px 0px !important;'>"
								htmlcode+="<div class='card-image card-image-box waves-effect waves-block waves-light' style='padding-bottom:211px!important;'>"
								htmlcode+="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"' id='gowebtoon'></div>"
								htmlcode+="<div class='card-content' style='height: 45px!important;margin:0px;padding:0px 4px 0px 10px !important;'>"
								if (item.webtoonName.length <= 7) {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName+"</span>"	
								} else {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName.substring(0,5)+"...</span>"	
								}
								htmlcode+="<i class='material-icons right' style='margin-top:6%!important;'>more_vert</i>"
								htmlcode+="<span id='ss' style='padding-left: 4%;'>"
								htmlcode+="<i id='scription-card-btn' class='material-icons scription-a-index' name='"+item.webtoonCode+"' style='margin-top:1%!important;'>grade</i>"
								htmlcode+="</span></div><div class='card-reveal'><span class='card-title grey-text text-darken-4'>"+item.webtoonName
								htmlcode+="<i class='material-icons right'>close</i></span><p>"+item.summary+"</p></div></div>"
							}
						});
						htmlcode+="</div>";
						$("#etc").append(htmlcode); 
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
			})
		})
	</script>
</head>
<body>
	<input id="header-title" type="hidden" value="웹툰">
	 <a id="category-modal-floating" class="btn-floating btn-large waves-effect waves-light red category-btn" href="#category-modal"><i class="material-icons">menu</i></a>
	   <!-- Modal Structure -->
	<div class="row category-row">
		<div class="col s12 category-tab-index z-depth-1 grey darken-3">
			<ul class="tabs grey darken-3">
				<li class="tab col s1 offset-l1"><a href="#top">TOP</a></li>
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
				<h4 class="animated title-text" style="font-family:fantasy; margin-bottom:30px;">BEST 3 WEBTOON</h4>
				<div class="row">
					<c:forEach var="item" items="${webtoonList}" end="2">
						<div class="card col s12 m24 l3 top_card hoverable animated" style="width:370px!important;margin:-10px 70px 0px -57px !important">
							<div class="card-image card-image-box waves-effect waves-block waves-light">
								<img src="<c:url value='/resources${item.webtoonThumbnail}'/>" name="${item.webtoonCode}" id='gowebtoon'>
							</div>
							<div class="card-content" style="margin: 0px;padding: 0px 8px 0px 10px !important;">
								<span style="font-size:22px; font-weight:500;">${item.webtoonName}
								</span>
								<span class="card-title activator grey-text text-darken-4" ><i class="material-icons right" style="margin-top:3%!important;">more_vert</i></span>
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
				<h5 class="title-text animated" style="font-family:fantasy; margin-bottom:30px;">POPULAR WEBTOON</h5>
				<div class="row" style="margin-bottom: 0px; padding-bottom: 0px; padding-right:15%;">
					<c:forEach var="item" items="${webtoonList}" varStatus="status">
							<div class="card col s12 m24 l2 top_card hoverable animated" style="width:200px!important;margin: -5px 7px 20px 0px !important;">
								<div class="card-image card-image-box waves-effect waves-block waves-light"style="padding-bottom:211px!important;">
								<img src="<c:url value='/resources${item.webtoonThumbnail}'/>"
									name="${item.webtoonCode}" id='gowebtoon'>
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
					</c:forEach>
			</div>
		</div>
		
		<!-- 
			액션카테고리 웹툰 보여주는 영역
		 -->
		<div id="action" class="col s12">
			
		</div>
		
		<!-- sf -->
		<div id="sf" class="col s12">
			
		</div>
		<!-- drame -->
		<div id="drame" class="col s12">

		</div>
		
		<!-- fantasy -->
		<div id="fantasy" class="col s12">
			
		</div>
		
		<!-- thriller -->
		<div id="thriller" class="col s12">
			
		</div>
		
		<!-- dailyLife -->
		<div id="dailyLife" class="col s12">
			
		</div>
		
		<!-- gag -->
		<div id="gag" class="col s12">
			
		</div>
		
		<!-- adult -->
		<div id="adult" class="col s12">
			
		</div>
		
		<!-- etc -->
		<div id="etc" class="col s12">
			
		</div>
	</div>
</body>
</html>