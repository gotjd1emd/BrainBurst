<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="card-frame-myInfo z-depth-1">
	<ul class="collection subscribe-list">
		<c:choose>
				<c:when test="${empty sessionScope.subScriptionList}">
					구독 목록이 없습니다.
				</c:when>
				<c:otherwise>
					<c:forEach var="item" items="${subScriptionList}">
						<li class="collection-item avatar scription-collection">
						<img src='<c:url value='/resources${item.webtoonThumbnail}'/>' alt="" class="circle scription-title-img">
						 <span class="scription-title">${item.webtoonName}</span>
							<p>
								${item.nickname} <br> Second Line
							</p> <a href="#!" class="secondary-content"><i class="material-icons text-color-500" name="${item.webtoonCode}" id="delSubScription">grade</i></a>
						</li>
					</c:forEach>
				</c:otherwise>
		</c:choose>
	</ul>
</div>