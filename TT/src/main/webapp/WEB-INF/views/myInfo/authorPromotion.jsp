<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<link rel="styleSheet" href="<c:url value='/resources/css/authorPromotion.css'/>">
<input id="header-title" type="hidden" value="작가 신청">
<div id="content-box" class="z-depth-1">
	<p>작가 페이지를 이용하기 위해 작가 신청을 해주세요!</p>
	
	<p>작가의 혜택 : </p>
	<p>자신 웹툰 업로드, 수정, 삭제 등 </p>
	<p>펀딩 신청 </p>
	<p>펀딩 작가의 경우 환전 시스템 제공 </p> 
	
	<a class="waves-effect waves-light btn color-500" href="/controller/author/madeAuthorPage">작가 신청</a>
</div>

