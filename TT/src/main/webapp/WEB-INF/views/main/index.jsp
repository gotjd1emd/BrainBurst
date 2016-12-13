<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<style>
		/* Style */
	</style>
	<script>
	</script>
</head>
<body> 
	<h3 class="animated zoomIn title-text">웹툰 TOP3</h3>
	<div class="row">
		<c:forEach var="item" items="${webtoonList}" end="2">
			<div class="card col s12 m24 l3 top_card hoverable">
				<div class="card-image waves-effect waves-block waves-light">
				 <img src="<c:url value='/resources/'/>/${item.webtoonThumbnail}">
				</div>
				<div class="card-content">
					<span class="card-title activator grey-text text-darken-4">${item.webtoonName}<i class="material-icons right">more_vert</i></span>
					<p><a href="#">${item.nickname}</a></p>
				</div>
				<div class="card-reveal">
					<span class="card-title grey-text text-darken-4">${item.webtoonName}<i class="material-icons right">close</i></span>
					<p>${item.summary}</p>
				</div>
			</div>
		</c:forEach>
	</div>
	<hr>
	<h5 class="animated zoomIn title-text">인기 웹툰</h5>
	<div class="row">
	 	<c:forEach var="item" items="${webtoonList}" begin="3">
   <div class="card small col l2 webtoon_card hoverable">
	    <div class="card-image waves-effect waves-block waves-light">
	      <img src="<c:url value='/resources/'/>/${item.webtoonThumbnail}">
	    </div>
	    <div class="card-content webtoon_card-font">
	      <span class="card-title activator grey-text text-darken-4">${item.webtoonName}<i class="material-icons right webtoon_card-icon">more_vert</i></span>
	    </div>
	    <div class="card-reveal">
	      <span class="card-title grey-text text-darken-4">${item.webtoonName}<i class="material-icons right">close</i></span>
	      <p>${item.summary}</p>
	    </div>
	  </div>
	  </c:forEach>
    </div>        
	
	
	<hr>
</body>
</html>