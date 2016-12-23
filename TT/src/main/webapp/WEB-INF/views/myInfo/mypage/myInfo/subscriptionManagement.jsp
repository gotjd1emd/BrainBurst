<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
	$(function() {
		$(document).on("click", ".smove", function(){
			$(location).attr('href',"/controller/webtoon/webtoonPage/"+$(this>"img").attr("name"));
		})
		
		
	})
</script>
<div class="card-frame-myInfo z-depth-1">
	<ul class="collection subscribe-list" id="subScriptionList">
		<c:choose>
				<c:when test="${empty sessionScope.subScriptionList}">
					<table class="striped"><thead><tr>
						<td colspan='5'><p align='center'>
							<b>구독 목록이 없습니다.</b>
						</p></td>
					</tr></thead></table>
				</c:when>
				<c:otherwise>
					<c:forEach var="item" items="${subScriptionList}">
						<li class="collection-item avatar scription-collection">
						<div class="move">
						<img src='<c:url value='/resources${item.webtoonThumbnail}'/>' alt="" class="circle scription-title-img"  name="${item.webtoonCode}">
						 <span class="scription-title">${item.webtoonName}</span>
							<p>
								${item.nickname} <br> 구독자 수 : ${item.subscriptionCount}
							</p> 
						</div>
							<a href="#!" class="secondary-content"><i class="material-icons text-color-500" name="${item.webtoonCode}_${item.subscriptionSequence}">grade</i></a>
						</li>
					</c:forEach>
				</c:otherwise>
		</c:choose>
	</ul>
</div>