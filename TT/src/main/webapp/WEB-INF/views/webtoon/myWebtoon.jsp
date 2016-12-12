<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div>
<div class="z-depth-1">
	<div class="z-depth-1 title-box">
		<div class="">
			<div class="webtoon-title">
				<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfiwDUBe5J0bSSnY_tkixhchUM539CKhd6-WGD1WpCrL37WxEY">
			</div>
			<div class="webtoon-name">
			<p>작가이름</p>
			<p>줄거리</p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col s12">
			<ul class="tabs">
				<li class="tab col s6 m12 l3 offset-l3"><a class="active"
					href="#episode-list">목록</a></li>
				<li class="tab col s6 m12 l3"><a href="#webtoon-info">웹툰 정보</a></li>
			</ul>
		</div>
	</div>
</div>

<c:forEach var="episode" items="${episodeList }">
	<div class="z-depth-1">
		<div class="row">
			<div class="col s2 episode_thumbnail">
				<img class="thumbnail"
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfiwDUBe5J0bSSnY_tkixhchUM539CKhd6-WGD1WpCrL37WxEY">
			</div>
			<div class="col s6">
				3화-고수 <br> <br> 추천 : 187
			</div>
			<div class="col s4 episode_chart">
				<img class="chart"
					src="https://ykyuen.files.wordpress.com/2013/05/chart-js.png">
			</div>
		</div>
	</div>
</c:forEach>
<div id="episode-list">
	<div class="z-depth-1 episode-box">
		<a href="#paid-modal">
			<div class="episode-curtain center">
				<i class="material-icons lock">lock_outline</i>
			</div>
		</a>
		<a href="<c:url value='/test/episode/1234'/>">
			<div class="row">
				<div class="episode_thumbnail">
					<img class="thumbnail"
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfiwDUBe5J0bSSnY_tkixhchUM539CKhd6-WGD1WpCrL37WxEY">
				</div>
				<div class="episode_text">
					<p>2화-고수</p>
					<p>추천 : 187</p>
				</div>
				<div class="episode_chart">
					<img class="chart"
						src="https://ykyuen.files.wordpress.com/2013/05/chart-js.png">
				</div>
			</div>
		</a>
	</div>
	<div class="z-depth-2 episode-box">
		<a href="#funding-modal">
			<div class="episode-curtain center">
				<i class="material-icons lock">lock_outline</i>
			</div>
		</a>
		<a href="<c:url value='/test/episode/1234'/>">
			<div class="row">
				<div class="episode_thumbnail">
					<img class="thumbnail"
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfiwDUBe5J0bSSnY_tkixhchUM539CKhd6-WGD1WpCrL37WxEY">
				</div>
				<div class="episode_text">
					<p>2화-고수</p>
					<p>추천 : 187</p>
				</div>
				<div class="episode_chart">
					<img class="chart"
						src="https://ykyuen.files.wordpress.com/2013/05/chart-js.png">
				</div>
			</div>
		</a>
	</div>

	<div class="z-depth-1 episode-box">
		<a href="<c:url value='/test/episode/1234'/>">
			<div class="row">
				<div class="episode_thumbnail">
					<img class="thumbnail"
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfiwDUBe5J0bSSnY_tkixhchUM539CKhd6-WGD1WpCrL37WxEY">
				</div>
				<div class="episode_text">
					<p>2화-고수</p>
					<p>추천 : 187</p>
				</div>
				<div class="episode_chart">
					<img class="chart"
						src="https://ykyuen.files.wordpress.com/2013/05/chart-js.png">
				</div>
			</div>
		</a>
	</div>
</div>

<div id="webtoon-info">
	<div class="z-depth-1 episode-box">
		<a href="<c:url value='/test/modifyEpisode/1234'/>">
			<div class="row">
				<div class="episode_thumbnail">
					<img class="thumbnail"
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfiwDUBe5J0bSSnY_tkixhchUM539CKhd6-WGD1WpCrL37WxEY">
				</div>
				<div class="episode_text">
					<p>2화-고수</p>
					<p>추천 : 187</p>
				</div>
				<div class="episode_chart">
					<img class="chart"
						src="https://ykyuen.files.wordpress.com/2013/05/chart-js.png">
				</div>
			</div>
		</a>
	</div>
</div>