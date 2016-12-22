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
$(document).ready(function() {
	$(".scription-a-index").css("color", "#F44336");
	$(".scription-a-index[name$='_0']").css("color", "#424242");
	
	/* 라인차트 */
	$(".knob").knob({
		draw: function () {
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
			url : "/controller/webtoon/webtoonLevelR/"+$(this).attr('name')+"/"+$(this).attr('value'),
			type : "get",
			dataType : "json",
			success : function(result) {
				var htmlcode = "";
				$(con).empty();
				htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; margin-left:-5%; margin-top:30px;'>"
				$.each(result, function(index, item) {
					htmlcode+="<div class='card col s12 m24 l2 top_card hoverable animated' style='margin: -5px 7px 20px 0px !important; width:221px!important;'>"
					if(item.webtoonState == 'pause'){
						htmlcode+="<div class='card-image card-image-box waves-effect waves-block waves-light' style='background-color: black'>"
						htmlcode+="<span style='color:white; position: absolute; width: 100%; text-align: center; top: 46%; font-size: 25px; background-color: rgba( 0, 0, 0, 0.5 );'>휴재중</span>"
						htmlcode+="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"' id='gowebtoon' style='opacity: 0.5;'>"
					}else{
						htmlcode+="<div class='card-image card-image-box waves-effect waves-block waves-light'>"
						htmlcode+="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"' id='gowebtoon' class='search-collection-item'>"
					}
					htmlcode+="</div>"
					htmlcode+="<div class='card-content' style='height: 45px!important;margin:0px;padding:0px 4px 0px 10px !important;'>"
					if (item.webtoonName.length < 7) {
						htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:16px; font-weight:500;'>"+item.webtoonName+"</span>"	
					} else {
						htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:16px; font-weight:500;'>"+item.webtoonName.substring(0,6)+"...</span>"	
					}
					htmlcode+="<i class='material-icons right' style='margin-top:6%!important;'>more_vert</i>"
					htmlcode+="<span id='ss' style='padding-left: 4%;'>"
					htmlcode+="<a style='font-size:13px'>${item.nickname}</a>"
					htmlcode+="</span></div>"
					htmlcode+="<div class='card-action' style='height:10px; line-height:0px; padding: 15px; font-size: 10px'>"
					if(item.webtoonLevel=='funding'){
						htmlcode+="<div>참여자:"+item.webtoonCode+"명</div>";
						htmlcode+="<div style='float:right;width:103px;margin-right:7px;'>"
						htmlcode+="<hr style='border:solid 8px gray;margin-top:-9.2px;margin-right:-9px;width:100%;'>"
						if(item.webtoonCode>='100'){
							htmlcode+="<hr style='border:solid 10px black;margin-top:-22px;margin-right:-16px;width:100%;'>"
						}else{
							htmlcode+="<hr width='"+item.webtoonCode+"' style='border:solid 10px black;margin-top:-22px;margin-right:-16px;'>"											
						}
					htmlcode+="	<span style='float:right;margin-right:-12px;color:#d8d8d8;margin-top:-13.4px;'>"+item.webtoonCode+"%</span>"
					htmlcode+="</div>"
					}else{
						htmlcode+="<div>조회수:"+item.webtoonCode+"회</div>";
						htmlcode+="<div style='float:right;width:103px;margin-right:7px;'>"
						htmlcode+="<hr style='border:solid 8px gray;margin-top:-9.2px;margin-right:-9px;width:100%;'>"
						if(item.webtoonCode>=100){
							htmlcode+="<hr width=100 style='border:solid 10px black;margin-top:-22px;margin-right:-16px;width:100%;'>"
						}else{
							htmlcode+="<hr width='"+item.webtoonCode+"' style='border:solid 10px black;margin-top:-22px;margin-right:-16px;'>"											
						}
					htmlcode+="<span style='float:right;margin-right:-12px;color:#d8d8d8;margin-top:-13.4px;'>"+item.webtoonCode+"%</span>"
					htmlcode+="</div>"
					}
					htmlcode+="</div></div>"
				});
				htmlcode+="</div>";
				$(con).append(htmlcode); 
				$(".scription-a-index").css("color", "#F44336");
				$(".scription-a-index[name$='_0']").css("color", "#424242");
			},
			error : function() {
				Materialize.toast('다시시도 해주세요.', 2000, 'rounded');
				var width = $("#toast-container").width();
				$("#toast-container").css("margin-left", (width*-1)+209);
				}
			})
		})
			
		/* 구독 추가 and 삭제  */
		$(document).on("click", ".scription-a-index", function(){
			var name = $(this).attr("name")
			if ($(this).css("color")=="rgb(66, 66, 66)"){
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
								htmlcode+="<a class='waves-effect waves-light scription-btn hoverable' style='background-color:#d0425c !important;'>";
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
						Materialize.toast('로그인 후 구독이 가능합니다.', 2000, 'rounded');
						var width = $("#toast-container").width();
						$("#toast-container").css("margin-left", (width*-1)+209);
					}
				})
			}else if($(this).css("color")=="rgb(244, 67, 54)"){
				$.ajax({
					url : "/controller/webtoon/subscription/del/"+name,
					type : "post",
					dataType : "json",
					success : function(result) {
						$(".scription-a-index[name="+name+"]").css("color", "#424242");
						$("#subScriptionList").empty();
						if (result.length == 0) {
							var htmlcode = "";
							htmlcode +="<li><div id='nullscription' class='row a-button-nav'>"
							htmlcode +="<i class='material-icons none-scription-icon'>book</i>"
							htmlcode +="<p class='none-scription-text'>구독된 웹툰이 없습니다.</p></div></li>"
							$("#subScriptionList").append(htmlcode);
						} else {
							$.each(result, function(index, item) {
							var level = item.webtoonLevel;
							var webtoonName = item.webtoonName;
							var htmlcode = "";
							htmlcode +="<li name='"+item.webtoonCode+"' id='gowebtoon'>";
							if(level == 'funding'){
								htmlcode+="<a class='waves-effect waves-light scription-btn hoverable' style='background-color:#d0425c !important;'>";
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
					}
				},
				error : function() {
					Materialize.toast('로그인 후 구독이 가능합니다.', 2000, 'rounded');
					var width = $("#toast-container").width();
					$("#toast-container").css("margin-left", (width*-1)+209);
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
				<li class="tab col s1 offset-l1"><a href="#top" <c:choose> <c:when test="${empty tapType}">name="funding"</c:when><c:otherwise>name="${tapType}"</c:otherwise></c:choose> >TOP</a></li>
				<li class="tab col s1"><a href="#a" value="a" <c:choose> <c:when test="${empty tapType}">name="funding"</c:when><c:otherwise>name="${tapType}"</c:otherwise></c:choose> >액션</a></li>
				<li class="tab col s1"><a href="#b" value="b" <c:choose> <c:when test="${empty tapType}">name="funding"</c:when><c:otherwise>name="${tapType}"</c:otherwise></c:choose> >SF</a></li>
				<li class="tab col s1"><a href="#c" value="c" <c:choose> <c:when test="${empty tapType}">name="funding"</c:when><c:otherwise>name="${tapType}"</c:otherwise></c:choose> >판타지</a></li>
				<li class="tab col s1"><a href="#d" value="d" <c:choose> <c:when test="${empty tapType}">name="funding"</c:when><c:otherwise>name="${tapType}"</c:otherwise></c:choose> >드라마</a></li>
				<li class="tab col s1"><a href="#e" value="e" <c:choose> <c:when test="${empty tapType}">name="funding"</c:when><c:otherwise>name="${tapType}"</c:otherwise></c:choose> >스릴러</a></li>
				<li class="tab col s1"><a href="#f" value="f" <c:choose> <c:when test="${empty tapType}">name="funding"</c:when><c:otherwise>name="${tapType}"</c:otherwise></c:choose> >일상</a></li>
				<li class="tab col s1"><a href="#g" value="g" <c:choose> <c:when test="${empty tapType}">name="funding"</c:when><c:otherwise>name="${tapType}"</c:otherwise></c:choose> >개그</a></li>
				<li class="tab col s1"><a href="#h" value="h" <c:choose> <c:when test="${empty tapType}">name="funding"</c:when><c:otherwise>name="${tapType}"</c:otherwise></c:choose> >성인</a></li>
				<li class="tab col s1"><a href="#i" value="i" <c:choose> <c:when test="${empty tapType}">name="funding"</c:when><c:otherwise>name="${tapType}"</c:otherwise></c:choose> >기타</a></li>
			</ul>
		</div>
		<!-- 
			Top 3 웹툰 보여주는 영역
		 -->
		<div id="top" class="col s12">
				<h4 class="animated title-text" style="font-family:fantasy; margin-bottom:30px;">BEST 3 WEBTOON</h4>
				<div class="row">
					<c:forEach var="item" items="${webtoonList}" end="2">
						<div class="card col s12 m24 l3 top_card hoverable animated" style="width:370px!important;margin:-10px 70px 0px -57px !important;">
							<c:choose>
								<c:when test="${item.webtoonState=='pause'}">
									<div class="card-image card-image-box waves-effect waves-block waves-light" style="background-color: black;">
									<span style="color:white; position: absolute; width: 100%; text-align: center; top: 46%; font-size: 25px; background-color: rgba( 0, 0, 0, 0.5 );">휴재중</span>
									<img src="<c:url value='/resources${item.webtoonThumbnail}'/>" name="${item.webtoonCode}" id='gowebtoon' style="opacity: 0.5;">
								</c:when>
								<c:otherwise>
									<div class="card-image card-image-box waves-effect waves-block waves-light">
									<img src="<c:url value='/resources${item.webtoonThumbnail}'/>" name="${item.webtoonCode}" id='gowebtoon' class="search-collection-item">							
								</c:otherwise>
							</c:choose>
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
							<div class="card-reveal" style="text-align:center">
								<span class="card-title grey-text text-darken-4">
								<i class="material-icons right">close</i></span>
								<div class="col-xs-6 col-md-3 text-center" style="text-align:center;">
									<div class="row" style="margin-top: 30px;margin-bottom: 9px;font-weight: 800;font-size:22px;">현재 펀딩률</div>
									<c:choose>
										<c:when test="${item.webtoonCode>=100}">
											<input type="text" class="knob" value="100" data-width="200" data-height="200" data-fgColor="#f56954" data-readonly="true">
										</c:when>
										<c:otherwise>
											<input type="text" class="knob" value="${item.webtoonCode}" data-width="200" data-height="200" data-fgColor="#f56954" data-readonly="true">										
										</c:otherwise>
									</c:choose>
									<div style="margin-top:10px">펀딩 시작일 : 2016년 12월 21일</div>
									<div>남은 시간 : 2일 15시간 30분</div>
								</div>
							</div>   
						</div>
					</c:forEach>
				</div>
				<hr>
				<!--
					인기 웹툰 보여주는 영역
				  -->
				<h5 class="title-text animated" style="font-family:fantasy; margin-bottom:30px;">POPULAR WEBTOON</h5>
				<div class="row" style="margin-bottom: 0px; padding-bottom: 0px; margin-left:-5%;">
					<c:forEach var="item" items="${webtoonList}" varStatus="status">
							<div class="card col s12 m24 l2 top_card hoverable animated" style="margin: -5px 7px 20px 0px !important; width:221px!important;">
						<c:choose>
							<c:when test="${item.webtoonState=='pause'}">
								<div class="card-image card-image-box waves-effect waves-block waves-light"style=" background-color: black">
								<span style="color:white; position: absolute; width: 100%; text-align: center; top: 46%; font-size: 25px; background-color: rgba( 0, 0, 0, 0.5 );">휴재중</span>
								<img src="<c:url value='/resources${item.webtoonThumbnail}'/>" name="${item.webtoonCode}" id='gowebtoon' style="opacity: 0.5;">
							</c:when>
							<c:otherwise>
								<div class="card-image card-image-box waves-effect waves-block waves-light">
								<img src="<c:url value='/resources${item.webtoonThumbnail}'/>" name="${item.webtoonCode}" id='gowebtoon' class="search-collection-item">							
							</c:otherwise>
						</c:choose>
								</div>
								<div class="card-content"style="height: 45px!important;margin:0px;padding:0px 4px 0px 10px !important;">
									<c:choose>
										<c:when test="${fn:length(item.webtoonName)<=7}">
											<span class="card-title activator grey-text text-darken-4" style="font-size:16px; font-weight:500;">
											${item.webtoonName}
											</span>
										</c:when>
										<c:otherwise>
											<span class="card-title activator grey-text text-darken-4" style="font-size:16px; font-weight:500;">
											${fn:substring(item.webtoonName,0,6)}...
											</span>
										</c:otherwise>
									</c:choose>
									<span id="ss" style="padding-left: 4%;">
									<a 	style="font-size:13px"> ${item.nickname}</a>
										<i id="scription-card-btn" class="material-icons scription-a-index" 
											name="${item.webtoonCode}_${item.subscriptionSequence}" style="margin-top:1%!important; margin-right: auto">grade
										</i>
									</span>
								</div>
								<div class="card-action" style="height:10px; line-height:0px; padding: 15px; font-size: 10px">
								<c:choose>
									<c:when test="${item.webtoonLevel eq 'funding' }">
										<div>참여자:${item.webtoonCode}명</div>
										<div style="float:right;width:103px;margin-right:7px;">
										<hr style="border:solid 8px gray;margin-top:-9.2px;margin-right:-9px;width: 100%;">
										<c:choose>
											<c:when test="${item.webtoonCode>=100}">
												<hr style="border:solid 10px black;margin-top:-22px;margin-right:-16px;width:100%;">
											</c:when>
											<c:otherwise>
												<hr width="${item.webtoonCode}" style="border:solid 10px black;margin-top:-22px;margin-right:-16px;">											
											</c:otherwise>
										</c:choose>
											<span style="float:right;margin-right:-12px;color:#d8d8d8;margin-top:-13.4px;">${item.webtoonCode}%</span>
										</div>
									</c:when>
									<c:otherwise>
										<div>조회수:${item.webtoonCode}회</div>
										<div style="float:right;width:103px;margin-right:7px;">
										<hr style="border:solid 8px gray;margin-top:-9.2px;margin-right:-9px;width: 100%;">
										<c:choose>
											<c:when test="${item.webtoonCode>=100}">
												<hr style="border:solid 10px black;margin-top:-22px;margin-right:-16px;width:100%;">
											</c:when>
											<c:otherwise>
												<hr width="${item.webtoonCode}" style="border:solid 10px black;margin-top:-22px;margin-right:-16px;">											
											</c:otherwise>
										</c:choose>
											<span style="float:right;margin-right:-12px;color:#d8d8d8;margin-top:-13.4px;">${item.webtoonCode}%</span>
										</div>
									</c:otherwise>
								</c:choose>
								</div> 
							</div>
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