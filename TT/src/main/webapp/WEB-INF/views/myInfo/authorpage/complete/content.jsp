<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
	$("#completedW").click(function(){
		$.ajax({
			url : "/controller/webtoon/webtoonLevelR/funding/a",
			type : "get",
			dataType : "json",
			success : function(result) {
				$("#completeList").empty();
				var htmlcode = "";
				$.each(result, function(index, item) {
				if(index==0){
					htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%; margin-top:20px;'>";
				}else if(index%6==0){
					htmlcode+="</div>";
					htmlcode+="<div class='row' style='margin-bottom: 0px; padding-bottom: 0px; padding-right:15%;'>";
				}else{
					htmlcode+="<div class='card col s12 m24 l2 top_card hoverable animated' style='width:200px!important;margin: -5px 7px 20px 0px !important;'>"
					htmlcode+="<div class='card-image card-image-box waves-effect waves-block waves-light' style='padding-bottom:211px!important;'>"
					htmlcode+="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"' id='gowebtoon'></div>"
					htmlcode+="<div class='card-content' style='height: 45px!important;margin:0px;padding:0px 4px 0px 10px !important;'>"
					if (item.webtoonName.length <= 7) {
						htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName+"</span>"	
					} else {
						htmlcode+="<span class='card-title activator grey-text text-darken-4' style='font-size:12.7px; font-weight:500;'>"+item.webtoonName.substring(0,5)+"...</span>"	
					}
					htmlcode+="<i class='material-icons right' style='margin-top:6%!important;'>more_vert</i>"
					htmlcode+="<span id='ss' style='padding-left: 4%;'>"
					htmlcode+="<i id='scription-card-btn' class='material-icons scription-a-index' name='"+item.webtoonCode+"' style='margin-top:1%!important;'>grade</i>"
					htmlcode+="</span></div><div class='card-reveal'><span class='card-title grey-text text-darken-4'>"+item.webtoonName
					htmlcode+="<i class='material-icons right'>close</i></span><p>"+item.summary+"</p></div></div>"
					}
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
