<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<!-- jQuery Knob -->
	<script src="<c:url value='/resources/js/jquery.knob.js'/>"></script>
	<script>
	var time = 0;
	var day = 0;
	var hour = 0;
	var min = 0;
	var second = 0;
		$(function() {
			var dueDate = new Date($("#dueDate").val());
		    var currentDate = new Date();
		    time = (dueDate-currentDate);
			fundingTimer();
			var myVar = setInterval(fundingTimer, 1000);
			
			//현재 펀딩중인 펀딩율 계산
			var fundingRate = Math.floor($("#funding-episode").find("input[name=episodeFund]").val()/4);
			if(fundingRate > 400) {
				$("#funding-episode").find("input[type=text]").val(400);
			}else {
				$("#funding-episode").find("input[type=text]").val(fundingRate);
			}
			//에피소드마다 들어온 펀딩율
			var episodeList = $("#episode-list").find("input[name=episodeFund]");
			var episodeInfo = $("#webtoon-info").find("input[name=episodeFund]");
			fundRate(episodeList);
			fundRate(episodeInfo);
			
			/* chart script */
		    $(".knob").knob({
		      draw: function () {
		        if (this.$.data('skin') == 'tron') {

		          var a = this.angle(this.cv)  // Angle
		              , sa = this.startAngle          // Previous start angle
		              , sat = this.startAngle         // Start angle
		              , ea                            // Previous end angle
		              , eat = sat + a                 // End angle
		              , r = true;

		          this.g.lineWidth = this.lineWidth;

		          this.g.beginPath();
		          this.g.strokeStyle = r ? this.o.fgColor : this.fgColor;
		          this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, sat, eat, false);
		          this.g.stroke();

		          this.g.lineWidth = 2;
		          this.g.beginPath();
		          this.g.strokeStyle = this.o.fgColor;
		          this.g.arc(this.xy, this.xy, this.radius - this.lineWidth + 1 + this.lineWidth * 2 / 3, 0, 2 * Math.PI, false);
		          this.g.stroke();

		          return false;
		        }
		      }
		    });
			
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
				$.ajax({
					url : "/controller/webtoon/episodeUploadCheck/"+$("input[name=webtoonCode]").val()+"/"+episodeNumber,
					type : "post", 
					dataType : "text",
					success : function(result) {
						if(result==0) {
							Materialize.toast('이번주 에피소드가 이미 업로드 되어있습니다.', 2000, 'rounded');
					        var width = $("#toast-container").width();
					        $("#toast-container").css("margin-left", (width*-1)+209);
						}else {
							$(location).attr('href',"/controller/webtoon/episodeUploadPage/"+$("input[name=webtoonCode]").val()+"/"+episodeNumber);
						}
					},
					error : function() {
						alert(err);
					}
				});
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
			
			
			/* 구독 추가 and 삭제  */
			$(document).on("click", "#scription-card-btn", function(){
            	var name = $(this).attr("name")
				if ($(this).css("color")=="rgb(66, 66, 66)") {
					$.ajax({
						url : "/controller/webtoon/subscription/add/"+name,
						type : "post",
						dataType : "json",
						success : function(result) {
							$("#scription-card-btn").css("color", "#F44336");
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
							alert("로그인후 사용하세요.")
						}
					})
				} else if (
					$(this).css("color")=="rgb(244, 67, 54)") {
					$.ajax({
						url : "/controller/webtoon/subscription/del/"+name,
						type : "post",
						dataType : "json",
						success : function(result) {
							$("#scription-card-btn").css("color", "#424242");
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
							}
								
						},
						error : function() {
							alert("로그인후 사용하세요.")
						}
					})
				}
			})
			
		})
		function fundingTimer() {
	    time = time - 1000;
	    day = Math.floor(time/1000/24/60/60);
	    hour = Math.floor(time/1000/60/60 - day*24);
	    min = Math.floor(time/1000/60 - day*24*60 - hour*60);
	    second = Math.floor(time/1000 - day*24*60*60 - hour*60*60 - min*60);
	    $(".period").text(Math.floor(day) + "일 " + hour + "시 " + min + "분 " + second + "초 남았습니다.");
		}
		function fundRate(episode) {
			$.each(episode, function(index, item) {
				var episodeFundRate = Math.floor(item.value/4);
				if(episodeFundRate > 400) {
					item.nextElementSibling.value=400;
				}else {
					item.nextElementSibling.value=episodeFundRate;
				}
			});
		}
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
			<div style="color: aquamarine;margin-bottom:-41px;margin-top:25px;">MY WEBTOON
			<c:if test="${webtoonDTO.webtoonState == 'blind'}">
				(BLIND)
			</c:if>
			</div>
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
		<div id="funding-episode" class="episode-list" style="margin-bottom: -60px;">
		<c:if test="${fundDTO != null }">
			<div class="z-depth-1 hoverable radius white">
				<div class="row radius" style="background-color:tomato;color:aliceblue;">
					<input type="hidden" name="episodeFund" value="${fundDTO.episodeFund}"/>
					<input type="hidden" name="fundCode" value="${fundDTO.fundCode }"/>
					<input type="hidden" id="dueDate" value="${fundDTO.dueDate }"/>
					<div class="col s10 funding-episode-content" style="text-align:center;padding-top:15px;height:155px">
						No.<span name='episodeNumber'>${fundDTO.episodeNumber}</span>화   <br><br>
						시작일 : ${fundDTO.startDate}, 마감일 : ${fundDTO.dueDate },<br>
						남은 시간 : <span class="period"></span>
						<p>[목표 T : 400]&nbsp;&nbsp;&nbsp;&nbsp;[현재 T : ${fundDTO.episodeFund}]</p>
					</div>	
					<div class="col-xs-6 col-md-3 text-center" style="text-align: right;padding-right:15px;padding-top:16px;">
						<input type="text" class="knob" value="${fundDTO.episodeFund}" data-skin="tron" data-thickness="0.2" data-width="120" data-height="120" data-fgColor="#ffffff">
					</div>
				</div>
			</div>
		</c:if>
		</div>
	<div id="episode-list" class="episode-list">
	<c:forEach var="episode" items="${episodeList }">
		<div class="z-depth-1 hoverable radius white">
			<div class="row radius">
				<div class="episode_thumbnail">
					<img id="episode-thumbnail${episode.episodeNumber}" class="thumbnail" name="${episode.episodeSequence}" src="<c:url value='/resources/'/>${episode.thumbnail}">
				</div>
				<div class="col s7 episode-content">
					No.<span name='episodeNumber'>${episode.episodeNumber }</span> ${episode.episodeTitle} <br><br>
					추천 : ${episode.recommendation}<br>
					조회수 : ${episode.hits} 
				</div>
				<c:if test="${episode.fund.fundCode != 0 }">
				<div style="float: left;margin-top: 70px;margin-left: 57px;">[목표 T : 400]&nbsp;&nbsp;&nbsp;&nbsp;[현재 T : ${episode.fund.episodeFund}]</div> 
				<div class="col-xs-6 col-md-3 text-center" style="text-align: right;padding-right:15px;padding-top:10px;">
					<input type="hidden" name="episodeFund" value="${episode.fund.episodeFund}"/>
					<input type="text" class="knob" value="${fundDTO.episodeFund}" data-skin="tron" data-thickness="0.2" data-width="100" data-height="100" data-fgColor="#f56954">
				</div>
				</c:if>
			</div>
		</div>
	</c:forEach>
	</div>

<div id="webtoon-info" class="episode-list">
	 <a id="episode-upload" class="btn-floating btn-large waves-effect waves-light red"><i id="episode-upload-icon" class="material-icons">create</i></a>
		<c:forEach var="episode" items="${episodeList}">
		<div class="z-depth-1 hoverable radius white">
			<div class="row radius" style="background-color:lightyellow">
				<div class="episode_thumbnail">
					<img class="thumbnail" name="${episode.episodeSequence}" src="<c:url value='/resources/'/>${episode.thumbnail}">
				</div>
				<div class="col s7 episode-content">
					No.<span name='episodeNumber'>${episode.episodeNumber}</span> ${episode.episodeTitle} <br><br>
					추천 : ${episode.recommendation}<br>
					조회수 : ${episode.hits} 
				</div>
				<c:if test="${episode.fund.fundCode != 0 }">
				<div style="float: left;margin-top: 70px;margin-left: 57px;">[목표 T : 400]&nbsp;&nbsp;&nbsp;&nbsp;[현재 T : ${episode.fund.episodeFund}]</div> 
				<div class="col-xs-6 col-md-3 text-center" style="text-align: right;padding-right:15px;padding-top:10px;">
					<input type="hidden" name="episodeFund" value="${episode.fund.episodeFund}"/>
					<input type="text" class="knob" value="${fundDTO.episodeFund}" data-skin="tron" data-thickness="0.2" data-width="100" data-height="100" data-fgColor="#f56954">
				</div>
				</c:if>
			</div>
		</div>
	</c:forEach>
</div>