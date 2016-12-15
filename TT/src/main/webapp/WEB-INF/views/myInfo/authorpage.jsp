<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUTF-8">
<script src="<c:url value='/resources/js/jquery.bxslider.js'/>"></script>
<title>Insert title here</title>
<style>
</style>
<script>
	$(function() {
		$('select').material_select();
		
		$("#serialWebtoon").click(function(){
			$.ajax({
				url : "/controller/user/THistoryList",
				type : "post",
				dataType : "json",
				success : function(result) {
					
				},
				error : function(err) {
					alert("err");
				}
			})
		})
	})
</script>
</head>
<body>
	<div class="row tab-frame-myinfo">
		<div class="col s12 tab-myinfo grey darken-3">
			<ul class="tabs center z-depth-2 grey darken-3">
				<li class="tab col s2 offset-l2"><a class="active"
					href="#publish-webtoon">연재중인 웹툰</a></li>
				<li class="tab col s2"><a href="#completed-webtoon">완결된 웹툰</a></li>
				<li class="tab col s2"><a href="#funding-management">펀딩 관리</a></li>
				<li class="tab col s2"><a href="#author-management">작가 관리</a></li>
			</ul>
		</div>
		<!-- 연재중 웹툰 tab -->
		<div id="publish-webtoon" class="col s12 tab-card-info">
			<c:choose>
				<c:when test="${!empty sessionScope.webtoonList}">
					<!-- 플로팅 버튼 -->
					<div class="fixed-action-btn horizontal click-to-toggle">
						<a class="btn-floating btn-large red publish-webtoon-floating purple">
							<i class="material-icons first-icon">menu</i>
						</a>
						<ul>
							<!-- 펀딩 웹툰 신청 플로팅 버튼 -->
							<li><a id="funding-webtoon-floating-btn"
								class="btn-floating mini-floating tooltipped purple lighten-2"
								data-position="top" data-delay="50" data-tooltip="펀딩 웹툰 신청"
								href="#funding-webtoon-modal"><i class="material-icons">data_usage</i></a></li>

							<!-- 웹툰 상태 처리 플로팅 버튼 -->
							<li><a
								class="btn-floating mini-floating tooltipped purple lighten-2"
								data-position="top" data-delay="50" data-tooltip="웹툰 상태 처리"
								href="#webtoon-state-modal"><i class="material-icons">priority_high</i></a></li>
							<!-- 웹툰 등록 플로팅 버튼 -->
							<li><a class="btn-floating mini-floating tooltipped purple lighten-2"
								data-position="top" data-delay="50" data-tooltip="웹툰 등록"
								href='/controller/user/myInfo/webtoonUpload'><i class="material-icons">publish</i></a></li>
						</ul>
					</div>
					<!-- floating button div tag close -->
					<div class="card-frame-myInfo z-depth-1">
						<!-- Modal -->
						<jsp:include page="/WEB-INF/views/myInfo/authorpage/comics/modal.jsp"></jsp:include>
						<jsp:include page="/WEB-INF/views/myInfo/authorpage/comics/content.jsp"></jsp:include>
					</div>
				</c:when>
				<c:otherwise>
					<jsp:include page="/WEB-INF/views/myInfo/authorpage/comics/defaultContent.jsp"></jsp:include>
				</c:otherwise>
			</c:choose>
		</div>
		
		<!-- 완결된 웹툰 tab -->
		<div id="completed-webtoon" class="col s12 tab-card-info">

			<div class="fixed-action-btn horizontal click-to-toggle">
				<a class="btn-floating red publish-webtoon-floating tooltipped"
					data-position="top" data-delay="50" data-tooltip="유료화 신청"
					href="#paid-webtoon-modal"><i class="material-icons first-icon">attach_money</i></a>
			</div>

			<div class="card-frame-myInfo z-depth-1">
				<jsp:include page="/WEB-INF/views/myInfo/authorpage/complete/modal.jsp"></jsp:include>
				<jsp:include page="/WEB-INF/views/myInfo/authorpage/complete/content.jsp"></jsp:include>
			</div>
		</div>
		<div id="funding-management" class="col s12 tab-card-info">
			<div class="card-frame-myInfo z-depth-1">
				<jsp:include page="/WEB-INF/views/myInfo/authorpage/funding/content.jsp"></jsp:include>
			</div>
		</div>
		<div id="author-management" class="col s12 tab-card-info">
			<div class="card-frame-myInfo z-depth-1 author-management-card">
				<jsp:include page="/WEB-INF/views/myInfo/authorpage/management/content.jsp"></jsp:include>
			</div>
		</div>
	</div>
</body>
</html>