<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
	$(function(){
		
		/* 
			유저 관리 페이지 ( 유저 전체 출력 )
		*/
		$("#userManage").click(function() {
			$.ajax({
				url : "/controller/admin/userManage",
				type : "get",
				dataType : "json",
				success : function(result) {
					var htmlcode = "";
					if(result==null) {
						htmlcode = "<tr><td colspan='9'><p align='center'><b>"
									+"등록된 상품이 없습니다.</b></p></td></tr>";
					}else {
						$.each(result, function(index, item) {
							htmlcode += "<tr><td>"
			            		+item.email+"</td>";
			            	htmlcode += "<td>"
				            	+item.nickname+"</td>";
				            htmlcode += "<td>"
				            	+item.phone+"</td>";
				            htmlcode += "<td>"
					            +item.password+"</td>";
				            htmlcode += "<td>"
				            	+item.cashPoint+"</td>";
				            htmlcode += "<td>"
				            	+item.level+"</td>";
				            htmlcode += "<td>"
				            	+item.name+"</td>";
				            htmlcode += "<td>"
				            	+item.gender+"</td>";
				            htmlcode += "<td>"
				            	+item.birthDate+"</td></tr>";
						});
					}
					$("tbody").empty();
					$("#userManageList").append(htmlcode);
				},
				error : function(err) {
					alert("err");
				}
			})
		})
		
		
		/* 
			웹툰 유지 페이지 ( 유저 전체 출력 )
		*/
		$("#webtoonManage").click(function() {
			$.ajax({
				url : "/controller/admin/webtoonManage",
				type : "get",
				dataType : "json",
				success : function(result) {
					var htmlcode = "";
					if(result==null) {
						htmlcode = "<tr><td colspan='7'><p align='center'><b>"
									+"등록된 상품이 없습니다.</b></p></td></tr>";
					}else {
						$.each(result, function(index, item) {
							htmlcode += "<tr><td>"
				            	+item.webtoonName+"</td>";
				            htmlcode += "<td>"
				            	+item.webtoonLevel+"</td>";
				            htmlcode += "<td>"
					            +item.webtoonState+"</td>";
				            htmlcode += "<td>"
				            	+item.categoryDTO.categoryName+"</td>";
				            htmlcode += "<td>"
				            	+item.penalty+"</td>";
				            htmlcode += "<td>"
				            	+item.author+"</td>";
				            htmlcode += "<td>"
				            	+item.fundingPeriod+"</td></tr>";
						});
					}
					$("tbody").empty();
					$("#webtoonManageList").append(htmlcode);
				},
				error : function(err) {
					alert("err");
				}
			})
		})
		
	})
</script>
<div class="row tab-frame-myinfo">
	<div class="col s12 tab-admin">
		<ul class="tabs center z-depth-2">
			<li class="tab col offset-l1 s2"><a href="#accounting" id="accountingShow">회계</a></li>
			<li class="tab col s2"><a href="#userManagement" id="userManage">유저 관리</a></li>
			<li class="tab col s2"><a href="#webtoonManagement" id="webtoonManage">웹툰 관리</a></li>
			<li class="tab col s2"><a href="#applyManagement">신청 관리</a></li>
			<li class="tab col s2"><a href="#reportManagement">신고 관리</a></li>
		</ul>
	</div>
	<div id="accounting" class="col s12 tab-card-info">
		<jsp:include page="/WEB-INF/views/admin/accounting/content.jsp"></jsp:include>
	</div>
	<div id="userManagement" class="col s12 tab-card-info">
		<jsp:include page="/WEB-INF/views/admin/userManagement/content.jsp"></jsp:include>
	</div>
	<div id="webtoonManagement" class="col s12 tab-card-info">
		<jsp:include page="/WEB-INF/views/admin/webtoonManagement/content.jsp"></jsp:include>
	</div>
	<div id="applyManagement" class="col s12 tab-card-info">
		<jsp:include page="/WEB-INF/views/admin/applyManagement/content.jsp"></jsp:include>
	</div>
	<div id="reportManagement" class="col s12 tab-card-info">
		<jsp:include page="/WEB-INF/views/admin/reportManagement/content.jsp"></jsp:include>
	</div>
</div>
