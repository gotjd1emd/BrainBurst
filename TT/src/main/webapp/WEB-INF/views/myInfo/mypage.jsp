<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
/* Style */
</style>
<script>
	$(function(){ 
		$(document).on("click", ".secondary-content :first-child", function(){
			$.ajax({
				url : "/controller/webtoon/subscription/del/"+$(this).attr("name"),
				type : "post",
				dataType : "json",
				success : function(result) {
					$("#subScriptionList").empty();
					$.each(result, function(index, item) {
						var htmlcode = "";
						if(item == null){
							htmlcode+="<table class="striped"><thead><tr>"+
											"<td colspan='5'><p align='center'>"+
									"<b>구독 목록이 없습니다.</b>"+
								"</p></td></tr></thead></table>"							
						}else{
							htmlcode +="<li class='collection-item avatar scription-collection'>";
							htmlcode +="<img class='circle scription-title-img'";
							htmlcode +="src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' name='"+item.webtoonCode+"' alt='' class='circle scription-title-img'>";
							htmlcode +="<span class='scription-title'>"+item.webtoonName+"</span>";		
							htmlcode +="<p>"+item.nickname+" <br> Second Line</p> ";		
							htmlcode +="<a href='#!' class='secondary-content'><i class='material-icons text-color-500' name='"+item.webtoonCode+"_"+item.subscriptionSequence+"'>grade</i></a></li>"	
						}
						$("#subScriptionList").append(htmlcode);
					})
						
				},
				error : function() {
					alert("이미 구독하였습니다.")
				}
			})
			
		})
		$("#getHistory").click(function() {
			$.ajax({
				url : "/controller/user/THistoryList",
				type : "get",
				dataType : "json",
				success : function(result) {
					var htmlcode = "";
					if(result=="") {
						htmlcode = "<tr><td colspan='5'><p align='center'><b>"
									+"등록된 상품이 없습니다.</b></p></td></tr>";
					}else {
						$.each(result, function(index, item) {
							htmlcode += "<tr><td>"
			            		+item.accountDay+"</td>";
			            	htmlcode += "<td>"
				            	+item.cashPoint+"</td>";
				            htmlcode += "<td>"
				            	+item.content+"</td>";
				            htmlcode += "<td>"
				            	+item.tradeState+"</td></tr>";
						});
					}
					$("tbody").empty();
					$("#tHistory").append(htmlcode);
				},
				error : function(err) {
					alert("err");
				}
			})
		})
	})
</script>
</head>
<body>
	<input id="header-title" type="hidden" value="마이페이지">
	<div class="row tab-frame-myinfo">
		<div class="col s12 tab-myinfo grey darken-3">
			<ul class="tabs center z-depth-2 grey darken-3">
				<li class="tab col s2 offset-l3"><a class="active"
					href="#myInfoModify">내정보 수정</a></li>
				<li class="tab col s2"><a href="#subscriptionManagement">구독관리</a></li>
				<li class="tab col s2"><a href="#THistory" id="getHistory">T내역</a></li>
			</ul>
		</div>
		<div id="myInfoModify" class="col s6 tab-card-info" style="margin-left:310px">
			<jsp:include
				page="/WEB-INF/views/myInfo/mypage/myInfo/myInfoModify.jsp"></jsp:include>
		</div>
		<div id="subscriptionManagement" class="col s12 tab-card-info">
			<jsp:include
				page="/WEB-INF/views/myInfo/mypage/myInfo/subscriptionManagement.jsp"></jsp:include>
		</div>
		<div id="THistory" class="col s12 tab-card-info">
			<div class="card-frame-myInfo z-depth-1">
				<table class="striped" id="tHistory">
					<thead>
						<tr>
							<th data-field="id">날짜</th>
							<th data-field="name">금액</th>
							<th data-field="price">내용</th>
							<th data-field="price">사용경로</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
</body>
</html>