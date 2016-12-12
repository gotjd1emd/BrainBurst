<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row tab-frame-myinfo">
	<div class="col s12 tab-admin">
		<ul class="tabs center z-depth-2">
			<li class="tab col offset-l1 s2"><a href="#subscriptionManagement">회계</a></li>
			<li class="tab col s2"><a href="#userManagement">유저 관리</a></li>
			<li class="tab col s2"><a href="#webtoonManagement">웹툰 관리</a></li>
			<li class="tab col s2"><a href="#applyManagement">신청 관리</a></li>
			<li class="tab col s2"><a href="#reportManagement">신고 관리</a></li>
		</ul>
	</div>
	<div id="subscriptionManagement" class="col s12 tab-card-info">
		<%-- <jsp:include page="/WEB-INF/views/myInfo/mypage/myInfo/myInfoModify.jsp"></jsp:include> offset-l3--%>
	</div>
	<div id="userManagement" class="col s12 tab-card-info">
		<%-- <jsp:include page="/WEB-INF/views/myInfo/mypage/myInfo/subscriptionManagement.jsp"></jsp:include> --%>
	</div>
	<div id="webtoonManagement" class="col s12 tab-card-info">
		<%-- <jsp:include page="/WEB-INF/views/myInfo/mypage/myInfo/subscriptionManagement.jsp"></jsp:include> --%>
	</div>
	<div id="applyManagement" class="col s12 tab-card-info">
		<%-- <jsp:include page="/WEB-INF/views/myInfo/mypage/myInfo/subscriptionManagement.jsp"></jsp:include> --%>
	</div>
	<div id="reportManagement" class="col s12 tab-card-info">
		<%-- <jsp:include page="/WEB-INF/views/myInfo/mypage/myInfo/subscriptionManagement.jsp"></jsp:include> --%>
	</div>
</div>
