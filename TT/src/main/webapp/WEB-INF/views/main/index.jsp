<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUTF-8">
	<title>Insert title here</title>
	<style>
		/* Style */
	</style>
	<script>
	</script>
</head>
<body> 
	<h1 class="animated zoomIn">Example</h1>
	
	<div class="card horizontal small top_card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="<c:url value='/resources/img/sk.png'/>">
    </div>
    <div class="card-stacked">
	    <div class="card-content">
	      <span class="card-title activator grey-text text-darken-4">Card Title</span>
	      <p><a href="#">This is a link</a></p>
	    </div>
	    <div class="card-action">
          <a href="#">ㅁㄴㅇ</a>
        </div>
	    <div class="card-reveal">
	      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
	      <p>Here is some more information about this product that is only revealed once clicked on.</p>
	    </div>
    </div>
  </div>
		
</body>
</html>