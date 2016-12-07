<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	
	<title>TT</title>
	<script>
		$(function () {
			$('#menu_nav').sideNav();
			$('#category_nav').click(function name() {
				$('#category_mobile').toggle(
						 function(){
							 $("category_mobile").css('display', 'none');
							 $("category_mobile").addClass("zoomIn");
							 },
						 function(){
								 $("category_mobile").css('display', 'block');
								 $("category_mobile").addClass("zoomOut");
						 });
			})
		})
	</script>
</head>
<body>
	<script type="text/javascript" src="<c:url value='/resources/js/materialize.min.js'/>"></script>
	<nav class="fixed">
	    <div class="nav-wrapper">
	      <a href="<c:url value='/'/>" class="brand-logo center"><img id="logo" src="<c:url value='/resources/img/TT_title.png'/>"></a>
	      <a href="#" data-activates="slide-out" id="menu_nav" class="button-collapse"><i class="material-icons">menu</i></a>
	      <a href="#" data-activates="category_mobile" id="category_nav" class="button-collapse right"><i class="material-icons">apps</i></a>
	      <ul id="nav-mobile" class="right hide-on-med-and-down">
	        <li><a href="sass.html">펀딩웹툰</a></li>
	        <li><a href="badges.html">일반웹툰</a></li>
	        <li><a href="collapsible.html">완결웹툰</a></li>
	        <li><i class="material-icons icon_search">search</i></li>
	      </ul>
	    </div>
 	 </nav>
</div>

<div id="category_mobile" class="bubble z-depth-3">내용</div>
