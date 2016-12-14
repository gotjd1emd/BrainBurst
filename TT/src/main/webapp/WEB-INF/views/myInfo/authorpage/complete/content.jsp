<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="row">
	<c:forEach var="item" items="${webtoonList}" end="2">
		<div class="card col s12 m24 l3 top_card hoverable">
			<div
				class="card-image card-image-box waves-effect waves-block waves-light">
				<img src="<c:url value='/resources${item.webtoonThumbnail}'/>"
					name="${item.webtoonCode}">
			</div>
			<div class="card-content">
				<span class="card-title activator grey-text text-darken-4">${item.webtoonName}<i
					class="material-icons right">more_vert</i></span>
				<p>
					<a href="#">${item.nickname}</a>
				</p>
			</div>
			<div class="card-reveal">
				<span class="card-title grey-text text-darken-4">${item.webtoonName}<i
					class="material-icons right">close</i></span>
				<p>${item.summary}</p>
			</div>
		</div>
	</c:forEach>
</div>
