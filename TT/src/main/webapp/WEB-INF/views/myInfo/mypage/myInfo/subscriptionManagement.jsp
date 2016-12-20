<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
	$(function() {
		$(document).on("click", ".scription-title-img", function(){
			$(location).attr('href',"/controller/webtoon/webtoonPage/"+$(this).attr("name"));
		})
		
		
	})
</script>
<div class="card-frame-myInfo z-depth-1">
	<ul class="collection subscribe-list" id="subScriptionList">
		<c:choose>
				<c:when test="${empty sessionScope.subScriptionList}">
					구독 목록이 없습니다.
				</c:when>
				<c:otherwise>
					<c:forEach var="item" items="${subScriptionList}">
						<li class="collection-item avatar scription-collection">
						<img src='<c:url value='/resources${item.webtoonThumbnail}'/>' alt="" class="circle scription-title-img"  name="${item.webtoonCode}">
						 <span class="scription-title">${item.webtoonName}</span>
							<p>
								${item.nickname} <br> Second Line
							</p> <a href="#!" class="secondary-content"><i class="material-icons text-color-500" name="${item.webtoonCode}_${item.subscriptionSequence}">grade</i></a>
						</li>
					</c:forEach>
				</c:otherwise>
		</c:choose>
	</ul>
</div>