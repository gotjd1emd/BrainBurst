<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="StyleSheet" href="<c:url value='/resources/css/webtoon.css'/>">
</head>
<body>
	<div class="z-depth-2">
		<div class="row">
			<div class="col s2">
				<div class="webtoon_title">
					<img src="http://public.slidesharecdn.com/b/images/logo/linkedin-ss/SS_Logo_White_Large.png?6d1f7a78a6">
				</div>
			</div>
			<div class="col s10">
				작가이름 <br>
				줄거리
			</div>
		</div>
		<hr>
		<div class="row">
		   	<div class="col s12">
		      <ul class="tabs">
		        <li class="tab col s3 offset-s3"><a href="#test1">Test 1</a></li>
		        <li class="tab col s3"><a class="active" href="#test2">Test 2</a></li>
		      </ul>
		    </div>
		</div>
	</div>
	
	<div class="z-depth-2">
		<div class="col s3">
			<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfiwDUBe5J0bSSnY_tkixhchUM539CKhd6-WGD1WpCrL37WxEY">
		</div>
		<div class="col s6">
			3화-고수 <br><br>
			추천 : 187
		</div>
		<div class="col s3">
			<img src="https://ykyuen.files.wordpress.com/2013/05/chart-js.png">
		</div>
	</div>

</body>
</html>