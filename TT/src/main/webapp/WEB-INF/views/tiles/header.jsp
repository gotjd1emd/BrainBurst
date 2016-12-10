<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
	<script type="text/javascript" src="<c:url value='/resources/js/materialize.min.js'/>"></script>
	<script>
		$(function () {
			$("#search-btn").click(function(){
				$(".search-nav").css("display", "block");
				$(".search-nav").css("opacity", "1");
				$("#search").focus();
			})
			$("#search-close-btn").click(function(){
				$(".search-nav").css("display", "none");
				$(".search-nav").css("opacity", "0");
			})
		})
	</script>
	<nav class="search-nav">
	    <div class="nav-wrapper">
	      <form>
	        <div class="input-field">
	          <input id="search" type="search" required>
	          <label for="search"><i class="material-icons">search</i></label>
	          <i id="search-close-btn" class="material-icons">close</i>
	        </div>
	      </form>
	    </div>
	</nav>
	<nav class="fixed">
	    <div class="nav-wrapper z-depth-4">
	      <a href="<c:url value='/'/>" class="brand-logo center"><img id="logo" src="<c:url value='/resources/img/TT_title.png'/>"></a>
	      <a href="#" data-activates="slide-out" id="menu_nav" class="button-collapse"><i class="material-icons">menu</i></a>
	      <a href="#" data-activates="category_mobile" id="category_nav" class="button-collapse right"><i class="material-icons">apps</i></a>
	      <ul id="nav-mobile" class="right hide-on-med-and-down">
	        <li><a href="<c:url value='/test/myWebtoon'/>">펀딩웹툰</a></li>
	        <li><a href="badges.html">일반웹툰</a></li>
	        <li><a href="collapsible.html">완결웹툰</a></li>
	        <li><i id="search-btn" class="material-icons icon_search">search</i></li>
	      </ul>
	    </div>
 	 </nav>

<div id="category_mobile" class="bubble z-depth-3">내용</div>
