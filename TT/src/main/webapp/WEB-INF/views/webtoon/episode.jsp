<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="z-depth-2">
	<div class="row">
		<div class="col s2">
			<div class="webtoon_title">
				<img
					src="http://public.slidesharecdn.com/b/images/logo/linkedin-ss/SS_Logo_White_Large.png?6d1f7a78a6">
			</div>
		</div>

		<div class="col s8">
			${webtoonDTO.webtoonName}<br>${webtoonDTO.nickname}
		</div>
		<div class="col s1">
			<br>
			<br>
			<br>
			<br>
			<div class="right">
				<a href="#report-modal">
					<div class="report">
						<i class="material-icons">priority_high</i>
					</div>
				</a>
			</div>
		</div>
		<div class="col s1">
			<blockquote>
				<p class="flow-text">
					추 천<br>:${episodeDTO.recommendation}
				</p>
			</blockquote>
		</div>
	</div>
</div>
<c:forEach var="item" items="${imageList}">
<div class="center">
	<img alt="webtoon" src="<c:url value='/resources/'/>${item}">
	
</div>
<img src="c:">
</c:forEach>

<div class="z-depth-2">
	<div>작가의말 : ${episodeDTO.authorword}</div>
	<div class="center">
		<p class="flow-text">추천수 : ${episodeDTO.recommendation}</p>
	</div>
	<div class="center">
		<button class="btn waves-effect waves-light" type="submit"
			name="action">추천 하기</button>
	</div>
</div>
