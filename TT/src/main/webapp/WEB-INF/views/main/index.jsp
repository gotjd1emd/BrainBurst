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
<!-- SlimScroll 1.3.0 -->
<script src="<c:url value='/resources/js/jquery.slimscroll.min.js'/>"></script>
<!-- jQuery Knob -->
<script src="<c:url value='/resources/js/jquery.knob.js'/>"></script>
<script>

		$(function() {
			$(document).ready(function() {
				$(".scription-a-index").css("color", "#F44336");
				$(".scription-a-index[name$='_0']").css("color", "#424242");
			})
			
			/* 라인차트 */
			$(".knob").knob({
		      draw: function () {
		        // "tron" case
		        if (this.$.data('skin') == 'tron') {
	
		          var a = this.angle(this.cv)  // Angle
		              , sa = this.startAngle          // Previous start angle
		              , sat = this.startAngle         // Start angle
		              , ea                            // Previous end angle
		              , eat = sat + a                 // End angle
		              , r = true;
		        }
		      }
			})
			
			/* 카테고리별 웹툰 이동 */
			$("div div ul li a").click(function(){
				con = "#"+$(this).attr('value');
				$.ajax({
					url : "/controller/webtoon/webtoonLevelR/funding/"+$(this).attr('value'),
					type : "get",
					dataType : "json",
					success : function(result) {
						var htmlcode = "";
						$(con).empty();
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
								if (item.webtoonName.length < 7) {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:16px; font-weight:500;'>"+item.webtoonName+"</span>"	
								} else {
									htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:16px; font-weight:500;'>"+item.webtoonName.substring(0,6)+"...</span>"	
								}
								htmlcode+="<i class='material-icons right' style='margin-top:6%!important;'>more_vert</i>"
								htmlcode+="<span id='ss' style='padding-left: 4%;'>"
								htmlcode+="<i id='scription-card-btn' class='material-icons scription-a-index' name='"+item.webtoonCode+"_"+item.subscriptionSequence+"' style='margin-top:1%!important;'>grade</i>"
								htmlcode+="</span></div>"
								htmlcode+="<div class='card-action' style='height:10px; line-height:0px; padding: 15px; font-size: 10px'>"
								htmlcode+="<span>"+item.nickname+"</span>"
								htmlcode+="<span style='float: right;'>100%</span>"
								htmlcode+="</div></div>"
							}
						});
						htmlcode+="</div>";
						$(con).append(htmlcode); 
						$(".scription-a-index").css("color", "#F44336");
						$(".scription-a-index[name$='_0']").css("color", "#424242");
					},
					error : function() {
						alert("다시 시도해주세요")
					}
				})
			})
			
			/* 구독 추가 and 삭제  */
			$(document).on("click", ".scription-a-index", function(){
            	var name = $(this).attr("name")
				if ($(this).css("color")=="rgb(66, 66, 66)") {
					$.ajax({
						url : "/controller/webtoon/subscription/add/"+name,
						type : "post",
						dataType : "json",
						success : function(result) {
							$(".scription-a-index[name="+name+"]").css("color", "#F44336");
							$("#subScriptionList").empty();
								$.each(result, function(index, item) {
									var level = item.webtoonLevel;
									var webtoonName = item.webtoonName;
									var htmlcode = "";
									htmlcode +="<li name='"+item.webtoonCode+"' id='gowebtoon'>";
									if(item.webtoonLevel == 'funding'){
										htmlcode+="<a class='waves-effect waves-light scription-btn hoverable' style='background-color:blueviolet !important;'>";
									}else if(item.webtoonLevel == 'free'){
										htmlcode+="<a class='waves-effect waves-light scription-btn hoverable' style='background-color:coral !important;'>";
									}else if(item.webtoonLevel == 'paid'){
										htmlcode+="<a class='waves-effect waves-light scription-btn hoverable' style='background-color:cornflowerblue !important;'>";
									}
									htmlcode +="<div><img class='circle responsive-img' style='width: 40px; height: 40px;' alt='썸네일' ";
									htmlcode +="src='<c:url value='/resources"+item.webtoonThumbnail+"'/>'>";
									htmlcode +="</div><div style='margin-left:10px;'>";
									if(item.webtoonName.length<=7){
										htmlcode+="<span style='font-size:16px'>"+webtoonName+"</span>";
									}else{
										htmlcode+="<span style='font-size:16px'>"+webtoonName.substring(0,5)+"...</span>";
									}		
									htmlcode +="<br><span class='author-name' style='font-size:13px'>"+item.nickname+"</span>";		
									htmlcode +="</div></a></li>"
									$("#subScriptionList").append(htmlcode);
								});
						},
						error : function() {
							alert("이미 구독하였습니다.")
						}
					})
				} else if (
					$(this).css("color")=="rgb(244, 67, 54)") {
					$.ajax({
						url : "/controller/webtoon/subscription/del/"+name,
						type : "post",
						dataType : "json",
						success : function(result) {
							$(".scription-a-index[name="+name+"]").css("color", "#424242");
							$("#subScriptionList").empty();
								$.each(result, function(index, item) {
									var level = item.webtoonLevel;
									var webtoonName = item.webtoonName;
									var htmlcode = "";
									htmlcode +="<li name='"+item.webtoonCode+"' id='gowebtoon'>";
									if(level == 'funding'){
										htmlcode+="<a class='waves-effect waves-light scription-btn hoverable' style='background-color:blueviolet !important;'>";
									}else if(level == 'free'){
										htmlcode+="<a class='waves-effect waves-light scription-btn hoverable' style='background-color:coral !important;'>";
									}else{
										htmlcode+="<a class='waves-effect waves-light scription-btn hoverable' style='background-color:cornflowerblue !important;'>";
									}
									htmlcode +="<div><img class='circle responsive-img' style='width: 40px; height: 40px;' alt='썸네일' ";
									htmlcode +="src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' ></div>";
									htmlcode +="<div style='margin-left:10px;'>";
									if(item.webtoonName.length<=7){
										htmlcode+="<span style='font-size:16px'>"+webtoonName+"</span>";
									}else{
										htmlcode+="<span style='font-size:16px'>"+webtoonName.substring(0,5)+"...</span>";
									}
									htmlcode +="<br><span class='author-name' style='font-size:13px'>"+item.nickname+"</span>";		
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
</head>
<body>
	<input id="header-title" type="hidden" value="웹툰">
	 <a id="category-modal-floating" class="btn-floating btn-large waves-effect waves-light red category-btn" href="#category-modal"><i class="material-icons">menu</i></a>
	   <!-- Modal Structure -->
	<div class="row category-row">
		<div class="col s12 category-tab-index z-depth-1 grey darken-3">
			<ul class="tabs grey darken-3">
				<li class="tab col s1 offset-l1"><a href="#top">TOP</a></li>
				<li class="tab col s1"><a href="#a" value="a">액션</a></li>
				<li class="tab col s1"><a href="#b" value="b">SF</a></li>
				<li class="tab col s1"><a href="#c" class="tabcss" value="c">판타지</a></li>
				<li class="tab col s1"><a href="#d" class="tabcss" value="d">드라마</a></li>
				<li class="tab col s1"><a href="#e" class="tabcss" value="e">스릴러</a></li>
				<li class="tab col s1"><a href="#f" value="f">일상</a></li>
				<li class="tab col s1"><a href="#g" value="g">개그</a></li>
				<li class="tab col s1"><a href="#h" value="h">성인</a></li>
				<li class="tab col s1"><a href="#i" value="i">기타</a></li>
			</ul>
		</div>
		<!-- 
			Top 3 웹툰 보여주는 영역
		 -->
		<div id="top" class="col s12">
				<h4 class="animated title-text" style="font-family:fantasy; margin-bottom:30px;">BEST 3 WEBTOON</h4>
				<div class="row">
					<c:forEach var="item" items="${webtoonList}" end="2">
						<c:choose>
							<c:when test="${item.webtoonState=='pause'}">
							<div class="card col s12 m24 l3 top_card hoverable animated" style="width:370px!important;margin:-10px 70px 0px -57px !important;">
								<div class="card-image card-image-box waves-effect waves-block waves-light" style="background-color: black;">
									<span style="color:white; position: absolute; width: 100%; text-align: center; top: 46%; font-size: 25px; background-color: rgba( 0, 0, 0, 0.5 );">휴재중</span>
									<img src="<c:url value='/resources${item.webtoonThumbnail}'/>" name="${item.webtoonCode}" id='gowebtoon' style="opacity: 0.5;">
								</div>
								<div class="card-content" style="margin: 0px;padding: 0px 8px 0px 10px !important;">
									<span style="font-size:22px; font-weight:500;">${item.webtoonName}
									</span>
									<span class="card-title activator grey-text text-darken-4" ><i class="material-icons right" style="margin-top:3%!important;">more_vert</i></span>
									<span id="ss" style="padding-left: 4%;">
										<a href="#"> ${item.nickname}</a>
										<i id="scription-card-btn" class="material-icons scription-a-index" 
											name="${item.webtoonCode}_${item.subscriptionSequence}" style="margin-top:1%!important;">grade
										</i>
									</span>
								</div>
								<div class="card-reveal">
									<span class="card-title grey-text text-darken-4">${item.webtoonName}
									<i class="material-icons right">close</i></span>
									<p>${item.summary}</p>
								</div>   
							</div>
							</c:when>
							<c:otherwise>
							<div class="card col s12 m24 l3 top_card hoverable animated" style="width:370px!important;margin:-10px 70px 0px -57px !important">
								<div class="card-image card-image-box waves-effect waves-block waves-light">
									<img src="<c:url value='/resources${item.webtoonThumbnail}'/>" name="${item.webtoonCode}" id='gowebtoon' class="search-collection-item">
								</div>
								<div class="card-content" style="margin: 0px;padding: 0px 8px 0px 10px !important;">
									<span style="font-size:22px; font-weight:500;">${item.webtoonName}
									</span>
									<span class="card-title activator grey-text text-darken-4" ><i class="material-icons right" style="margin-top:3%!important;">more_vert</i></span>
									<span id="ss" style="padding-left: 4%;">
										<a href="#"> ${item.nickname}</a>
										<i id="scription-card-btn" class="material-icons scription-a-index" 
											name="${item.webtoonCode}_${item.subscriptionSequence}" style="margin-top:1%!important;">grade
										</i>
									</span>
								</div>
								<div class="card-reveal">
									<span class="card-title grey-text text-darken-4" 
									style="color: darksalmon;font-size: 31px;font-weight: 700;margin-left: 33px;">${item.webtoonName}
									<i class="material-icons right">close</i></span>
									<p style="color:grey;">${item.summary} ${item.summary} ${item.summary} ${item.summary} ${item.summary}</p>
									<div style="text-align:center;">
									<input type="text" class="knob" value="60" 
									data-width="200" data-height="200" data-fgColor="#f56954" data-readonly="true">
								</div>
								</div>   
							</div>
							</c:otherwise>
						</c:choose>
						
					</c:forEach>
				</div>
				<hr>
				<!--
					인기 웹툰 보여주는 영역
				  -->
				<h5 class="title-text animated" style="font-family:fantasy; margin-bottom:30px;">POPULAR WEBTOON</h5>
				<div class="row" style="margin-bottom: 0px; padding-bottom: 0px; margin-left:-5%;">
					<c:forEach var="item" items="${webtoonList}" varStatus="status">
						<c:choose>
							<c:when test="${item.webtoonState=='pause'}">
							<div class="card col s12 m24 l2 top_card hoverable animated" style="margin: -5px 7px 20px 0px !important; width:221px!important;">
								<div class="card-image card-image-box waves-effect waves-block waves-light"style="padding-bottom:211px!important; background-color: black">
								<span style="color:white; position: absolute; width: 100%; text-align: center; top: 46%; font-size: 25px; background-color: rgba( 0, 0, 0, 0.5 );">휴재중</span>
								<img src="<c:url value='/resources${item.webtoonThumbnail}'/>" name="${item.webtoonCode}" id='gowebtoon' style="opacity: 0.5;">
								</div>
								<div class="card-content"style="height: 45px!important;margin:0px;padding:0px 4px 0px 10px !important;">
									<c:choose>
										<c:when test="${fn:length(item.webtoonName) <= 8}">
											<span class="card-title activator grey-text text-darken-4" style="font-size:16px; font-weight:500;">
											${item.webtoonName}
											</span>
										</c:when>
										<c:otherwise>
											<span class="card-title activator grey-text text-darken-4" style="font-size:16px; font-weight:500;">
											${fn:substring(item.webtoonName,0,8)}...
											</span>
										</c:otherwise>
									</c:choose>
									<span id="ss" style="padding-left: 4%;">
										<i id="scription-card-btn" class="material-icons scription-a-index" 
											name="${item.webtoonCode}_${item.subscriptionSequence}" style="margin-top:1%!important; margin-right: auto">grade
										</i>
									</span>
								</div>
								<div class="card-action" style="height:10px; line-height:0px; padding: 15px; font-size: 10px">
									<span>${item.nickname}</span>
									<span style="float: right;">100%</span>
								</div> 
							</div>
							</c:when>
							<c:otherwise>
							<div class="card col s12 m24 l2 top_card hoverable animated sticky-action" style="width:221px!important;margin: -5px 7px 20px 0px !important;">
								<div class="card-image card-image-box waves-effect waves-block waves-light"style="padding-bottom:211px!important;">
								<img src="<c:url value='/resources${item.webtoonThumbnail}'/>"
									name="${item.webtoonCode}" id='gowebtoon'>
								</div>
								<div class="card-content"style="height: 45px!important;margin:0px;padding:0px 4px 0px 10px !important;">
									<c:choose>
										<c:when test="${fn:length(item.webtoonName) <= 8}">
											<span class="card-title grey-text text-darken-4" style="font-size:16px; font-weight:500;">
											${item.webtoonName}
											</span>
										</c:when>
										<c:otherwise>
											<span class="card-title grey-text text-darken-4" style="font-size:16px; font-weight:500;">
											${fn:substring(item.webtoonName,0,8)}...
											</span>
										</c:otherwise>
									</c:choose>
									<span id="ss" style="padding-left: 4%;">
										<i id="scription-card-btn" class="material-icons scription-a-index" 
											name="${item.webtoonCode}_${item.subscriptionSequence}" style="margin-top:1%!important; margin-right: auto">grade
										</i>
									</span>
								</div>
								<div class="card-action" style="height:10px; line-height:0px; padding: 15px; font-size: 10px">
									<span>${item.nickname}</span>
									<span style="float: right;">100%</span>
								</div> 
							</div>
							</c:otherwise>
						</c:choose>
					</c:forEach>
			</div>
		</div>
		
		<!-- 
			액션카테고리 웹툰 보여주는 영역
		 -->
		<div id="a" class="col s12">
			
		</div>
		
		<!-- sf -->
		<div id="b" class="col s12">
			
		</div>
		<!-- drame -->
		<div id="c" class="col s12">

		</div>
		
		<!-- fantasy -->
		<div id="d" class="col s12">
			
		</div>
		
		<!-- thriller -->
		<div id="e" class="col s12">
			
		</div>
		
		<!-- dailyLife -->
		<div id="f" class="col s12">
			
		</div>
		
		<!-- gag -->
		<div id="g" class="col s12">
			
		</div>
		
		<!-- adult -->
		<div id="h" class="col s12">
			
		</div>
		
		<!-- etc -->
		<div id="i" class="col s12">
			
		</div>
	</div>
</body>
</html>