<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUTF-8">
	<title>Try make your Throng</title>
	<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="StyleSheet" href="<c:url value='/resources/css/animate.css'/>">
	<link rel="StyleSheet" href="<c:url value='/resources/css/materialize.css'/>" media="screen,projection">
	<script src="<c:url value='/resources/js/jquery-2.2.1.min.js'/>"></script>
	<link rel="styleSheet" href="<c:url value='/resources/css/common.css'/>">
	<link rel="styleSheet" href="<c:url value="/resources/css/signup.css"/>">
	<style>
	</style>
	<script>
		$(window).load(function(){
			$(".preloader-wrapper").css("display","none");
		});
	</script>
</head>
<body>
	<!-- HTML5 tiles main-->
     <div class="preloader-wrapper big active preloader-css">
      <div class="spinner-layer spinner-blue">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-red">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-yellow">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-green">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>
    </div>
	<div id="container">
	
		<div id="header">
			<tiles:insertAttribute name="header"/>
		</div>
		<div id="content" class="signup-content">
			<tiles:insertAttribute name="content"/>
		</div>
		<div id="footer">
			<tiles:insertAttribute name="footer"/>
		</div>
	</div>
</body>
</html>