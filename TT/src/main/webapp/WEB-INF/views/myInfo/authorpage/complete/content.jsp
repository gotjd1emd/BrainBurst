<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
	$("#completedW").on("click",function(){
		$.ajax({
			url : "/controller/webtoon/selectMyWebtoon/complete",
			type : "get",
			dataType : "json",
			success : function(result) {
				$("#completeList").empty();
				var htmlcode = "";
				htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; margin-left:-5%; margin-top:30px;'>"
					$.each(result, function(index, item) {
							htmlcode+="<div class='card col s12 m24 l2 top_card hoverable animated' style='margin: -5px 7px 20px 0px !important; width:221px!important;'>"
							if(item.webtoonState == 'pause'){
								htmlcode+="<div class='card-image card-image-box waves-effect waves-block waves-light' style='background-color: black'>"
								htmlcode+="<span style='color:white; position: absolute; width: 100%; text-align: center; top: 46%; font-size: 25px; background-color: rgba( 0, 0, 0, 0.5 );'>휴재중</span>"
								htmlcode+="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"' id='gowebtoon' style='opacity: 0.5;'>"
							}else{
								htmlcode+="<div class='card-image card-image-box waves-effect waves-block waves-light'>"
								htmlcode+="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"' id='gowebtoon' class='search-collection-item'>"
							}
							htmlcode+="</div>"
							htmlcode+="<div class='card-content' style='height: 45px!important;margin:0px;padding:0px 4px 0px 10px !important;'>"
							if (item.webtoonName.length < 7) {
								htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:16px; font-weight:500;'>"+item.webtoonName+"</span>"	
							} else {
								htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:16px; font-weight:500;'>"+item.webtoonName.substring(0,6)+"...</span>"	
							}
							htmlcode+="<i class='material-icons right' style='margin-top:6%!important;'>more_vert</i>"
							htmlcode+="</div></div>"
					});
				htmlcode+="</div>";
				$("#completeList").append(htmlcode); 
			},
			error : function() {
				alert("다시 시도해주세요")
				}
			})
		})
	</script>
	
	<div class="row" id="completeList">
	
	</div>