<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Try make your Throng</title>
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="StyleSheet"
	href="<c:url value='/resources/css/animate.css'/>">
<link rel="StyleSheet"
	href="<c:url value='/resources/css/materialize.css'/>"
	media="screen,projection">
	<script src="<c:url value='/resources/js/jquery-2.2.1.min.js'/>"></script>
<link rel="styleSheet" href="<c:url value='/resources/css/common.css'/>">
<link rel="StyleSheet" href="<c:url value='/resources/css/webtoon.css'/>">
<style>
</style>
<script>
	$(function() {
		$('#menu_nav').sideNav();
		$('#category_nav').click(function name() {
			$('#category_mobile').toggle(function() {
				$("category_mobile").css('display', 'none');
				$("category_mobile").addClass("zoomIn");
			}, function() {
				$("category_mobile").css('display', 'block');
				$("category_mobile").addClass("zoomOut");
			});
		});
		var currentT = "${sessionScope.userDTO.cashPoint}";
		$("#fundingT").keyup(function () {
			var afterT =currentT - $("#fundingT").val();
			$("#afterT").text(afterT);
		});
	})
</script>
</head>
<body oncontextmenu='return false' onselectstart='return false'
	ondragstart='return false'>

	<!-- modal -->
	<!-- Modal Structure -->
	<div id="paid-modal" class="modal modal-fixed-footer">
		<div class="modal-content">
			<h4>유료화</h4>
			<p>A bunch of text</p>
		</div>
		<div class="modal-footer">
			<a href="#!"
				class="modal-action modal-close waves-effect waves-green btn-flat ">Agree</a>
		</div>
	</div>

	<!-- modal -->
	<!-- Modal Structure -->
	<div id="funding-modal" class="modal modal-fixed-footer">
		<div id="inputDiv">
			<div class="modal-title color-500 white-text z-depth-1">
				<h5>펀딩 참여</h5>
			</div>
			<div class="modal-content">
				<div class="row" style="margin-top:20px;">
					<div class="col s6" style="margin-top:150px;">
						<div class="input-field">
		          			<input id="fundingT" type="text" class="validate" name="fundingT">
		          			<label for="fundingT">펀딩 금액(단위 : T)</label>
	        			</div>
	        			<div>보유 T : <span id="afterT">${sessionScope.userDTO.cashPoint}</span></div>
		          		<div><p class="flow-text period" style="color:#f56954;"></p></div>
	        		</div>
	        		<div class="col s6">
	        			<div class="col-xs-6 col-md-3 text-center" 
	        			style="text-align:right;padding-top:-10px;">
	        			<c:choose>
	      					<c:when test="${fundDTO.episodeFund>=400}">
								<input type="text" class="knob" value="400" data-skin="tron" 
								data-thickness="0.2" data-width="300" data-height="300" data-fgColor="#f56954">
								<span style="float:right;margin-right:42px">[목표 T : 400]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[현재 T : ${fundDTO.episodeFund}]</span>
	      					</c:when>  			
	      					<c:otherwise>
								<input type="text" class="knob" value="${fundDTO.episodeFund}" data-skin="tron" 
								data-thickness="0.2" data-width="300" data-height="300" data-fgColor="#f56954">
								<span style="float:right;margin-right:42px">[목표 T : 400]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[현재 T : ${fundDTO.episodeFund}]</span>
	      					</c:otherwise>
	        			</c:choose>
						</div>
						
	        		</div>
				</div>
				<div id="select-payment-content-form" class="center">
		  		<div class="accept-terms-box">
			  		<input type="checkbox" class="filled-in" id="filled-in-box"/>
	     			<label for="filled-in-box">위 사항을 모두 확인하였으며 펀딩진행에 동의합니다.</label>
     		 	</div>
		  </div>
			</div>
			<div class="modal-footer">
				<a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">취소</a>
				<a href="#!" id="funding"
					class="modal-action modal-close waves-effect waves-green btn-flat ">펀딩참여</a>
			</div>
		</div>
	</div>

	<!-- 신고 다이얼로그 -->
<div id="report-modal" class="modal modal-fixed-footer modal-top">
	<form method="post" action="/controller/webtoon/funding-apply">
		<div id="inputDiv">
			<div class="modal-title color-500 white-text z-depth-1">
				<h5>웹툰 신고</h5>
			</div>
			<div class="modal-content modal-content-funding">
				<div class="input-field">
		          <textarea id="report-content" class="materialize-textarea"></textarea>
		          <label for="report-content">신고 내용</label>
		          	허위신고 적발시 그에 따른 처벌이 이루어집니다. 
		        </div>
			</div>
			<div class="modal-footer">
				<a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">취소</a>
				<a id="report-modal-btn" class="modal-action modal-close waves-effect waves-green btn-flat">신고</a>
			</div>
		</div>
	</form>
</div>

	<!-- HTML5 tiles main-->
	<div id="container">
		<div id="header">
			<tiles:insertAttribute name="header" />
		</div>
		<div id="snb">
			<tiles:insertAttribute name="snb_nonMember" />
		</div>
		<div id="content">
			<tiles:insertAttribute name="content" />
		</div>
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
	<div>
</body>
</html>