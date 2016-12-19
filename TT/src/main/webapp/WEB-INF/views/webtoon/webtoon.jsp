<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<!-- jQuery 2.2.3 -->
	<script src="<c:url value='/resources/js/jquery-2.2.3.min.js'/>"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
	<!-- SlimScroll 1.3.0 -->
	<script src="<c:url value='/resources/js/jquery.slimscroll.min.js'/>"></script>
	<!-- jQuery Knob -->
	<script src="<c:url value='/resources/js/jquery.knob.js'/>"></script>
	<!-- Sparkline -->
	<script src="<c:url value='/resources/js/jquery.sparkline.min.js'/>"></script>
<script>
	<!-- chart script -->
	  $(function () {
	    /* jQueryKnob */

	    $(".knob").knob({
	      /*change : function (value) {
	       //console.log("change : " + value);
	       },
	       release : function (value) {
	       console.log("release : " + value);
	       },
	       cancel : function () {
	       console.log("cancel : " + this.value);
	       },*/
	      draw: function () {

	        // "tron" case
	        if (this.$.data('skin') == 'tron') {

	          var a = this.angle(this.cv)  // Angle
	              , sa = this.startAngle          // Previous start angle
	              , sat = this.startAngle         // Start angle
	              , ea                            // Previous end angle
	              , eat = sat + a                 // End angle
	              , r = true;

	          this.g.lineWidth = this.lineWidth;

	          this.o.cursor
	          && (sat = eat - 0.3)
	          && (eat = eat + 0.3);

	          if (this.o.displayPrevious) {
	            ea = this.startAngle + this.angle(this.value);
	            this.o.cursor
	            && (sa = ea - 0.3)
	            && (ea = ea + 0.3);
	            this.g.beginPath();
	            this.g.strokeStyle = this.previousColor;
	            this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, sa, ea, false);
	            this.g.stroke();
	          }

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
	    /* END JQUERY KNOB */

	    //INITIALIZE SPARKLINE CHARTS
	    $(".sparkline").each(function () {
	      var $this = $(this);
	      $this.sparkline('html', $this.data());
	    });

	    /* SPARKLINE DOCUMENTATION EXAMPLES http://omnipotent.net/jquery.sparkline/#s-about */
	    drawDocSparklines();

	  function drawDocSparklines() {

	    // Bar + line composite charts
	    $('#compositebar').sparkline('html', {type: 'bar', barColor: '#aaf'});
	    $('#compositebar').sparkline([4, 1, 5, 7, 9, 9, 8, 7, 6, 6, 4, 7, 8, 4, 3, 2, 2, 5, 6, 7],
	        {composite: true, fillColor: false, lineColor: 'red'});


	    // Line charts taking their values from the tag
	    $('.sparkline-1').sparkline();

	    // Larger line charts for the docs
	    $('.largeline').sparkline('html',
	        {type: 'line', height: '2.5em', width: '4em'});

	    // Customized line chart
	    $('#linecustom').sparkline('html',
	        {
	          height: '1.5em', width: '8em', lineColor: '#f00', fillColor: '#ffa',
	          minSpotColor: false, maxSpotColor: false, spotColor: '#77f', spotRadius: 3
	        });

	    // Bar charts using inline values
	    $('.sparkbar').sparkline('html', {type: 'bar'});

	    $('.barformat').sparkline([1, 3, 5, 3, 8], {
	      type: 'bar',
	      tooltipFormat: '{{value:levels}} - {{value}}',
	      tooltipValueLookups: {
	        levels: $.range_map({':2': 'Low', '3:6': 'Medium', '7:': 'High'})
	      }
	    });
	  }
	
	  
	  
	  /* 일반기능들 */
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
					<c:if test="${webtoonDTO.webtoonState == 'pause'}">
						<div style="color: aquamarine;margin-bottom:-41px;margin-top:25px;">일반 웹툰  /  휴재</div>
					</c:if>
				</c:when>
				<c:when test="${webtoonDTO.webtoonLevel == 'free'}">
					<c:if test="${webtoonDTO.webtoonState == 'serial'}">
						<div style="color: aquamarine;margin-bottom:-41px;margin-top:25px;">일반 웹툰  /  연재중</div>
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
					<img class="thumbnail" name="${episode.episodeSequence}" src="<c:url value='/resources/'/>${episode.thumbnail}">
				</div>
				<div class="col s5 episode-content">
					No.<span name='episodeNumber'>${episode.episodeNumber}</span> ${episode.episodeTitle} <br><br>
					추천 : ${episode.recommendation}
				</div>
					<div class="col-xs-6 col-md-3 text-center" style="text-align: right;padding-right:15px;padding-top:16px;">
	                  <input type="text" class="knob" value="${episode.hits}" data-width="90" data-height="90" data-fgColor="#f56954" data-readonly="true">
	                </div>
				</div>
		</div>
	</c:forEach>
	</div>
	
	
	
	
