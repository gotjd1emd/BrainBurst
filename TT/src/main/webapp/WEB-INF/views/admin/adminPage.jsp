<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>

	$(function(){
		
		$("#print-all").click(function () {
			allWebtoonManagement();
		})
		
		$("#print-serial").click(function () {
			serialWebtoonManagement();
		})
		
		$("#print-complete").click(function () {
			completeWebtoonManagement();
		})
		
		$("#print-pause").click(function () {
			pauseWebtoonManagement()
		})
		
		$("#print-blind").click(function () {
			blindWebtoonManagement()
		})
		
		$("#print-free").click(function () {
			freeWebtoonManagement()
		})
		
		$("#print-funding").click(function () {
			fundingWebtoonManagement()
		})
		
		$("#webtoon-blind").click(function () {
			for(var i=1; i <= $("input[type='checkbox']").length; i++){
				if($("#filled-in-box"+i).prop("checked")){
					var webtoonCode = $("#filled-in-box"+i).attr("name");
					var webtoonInfo = {"webtoonCode":webtoonCode, "state":"blind"};
					$.ajax({
						url : "/controller/admin/webtoonState",
						type: "post",
						dataType:"text",
						data: webtoonInfo,
						success : function (result) {
							Materialize.toast('웹툰을 블라인드 상태로 변경했습니다.', 2000, 'rounded');
					        var width = $("#toast-container").width();
					        $("#toast-container").css("margin-left", (width*-1)+209);
						},
						error : function (err) {
							Materialize.toast('블라인드 상태 처리 실패', 2000, 'rounded');
					        var width = $("#toast-container").width();
					        $("#toast-container").css("margin-left", (width*-1)+209);
						}
					})
				}
			}
			location.href='#webtoonManagement';
			webtoonManagement();
		})
		
		$("#webtoon-serial").click(function () {
			for(var i=1; i <= $("input[type='checkbox']").length; i++){
				if($("#filled-in-box"+i).prop("checked")){
					var webtoonCode = $("#filled-in-box"+i).attr("name");
					var webtoonInfo = {"webtoonCode":webtoonCode, "state":"serial"};
					$.ajax({
						url : "/controller/admin/webtoonState",
						type: "post",
						dataType:"text",
						data: webtoonInfo,
						success : function (result) {
							Materialize.toast('웹툰을 연재 상태로 변경했습니다.', 2000, 'rounded');
					        var width = $("#toast-container").width();
					        $("#toast-container").css("margin-left", (width*-1)+209);
						},
						error : function (err) {
							Materialize.toast('연재 상태 처리 실패', 2000, 'rounded');
					        var width = $("#toast-container").width();
					        $("#toast-container").css("margin-left", (width*-1)+209);
						}
					})
				}
			}
			location.href='#webtoonManagement';
			webtoonManagement();
		})
		
		$("#webtoon-fund").click(function () {
			for(var i=1; i <= $("input[type='checkbox']").length; i++){
				if($("#filled-in-box"+i).prop("checked")){
					var webtoonCode = $("#filled-in-box"+i).attr("name");
					var webtoonInfo = {"webtoonCode":webtoonCode, "level":"funding"};
					$.ajax({
						url : "/controller/admin/webtoonLevel",
						type: "post",
						dataType:"text",
						data: webtoonInfo,
						success : function (result) {
							Materialize.toast('웹툰을 펀딩 레벨로 변경했습니다.', 2000, 'rounded');
					        var width = $("#toast-container").width();
					        $("#toast-container").css("margin-left", (width*-1)+209);
						},
						error : function (err) {
							Materialize.toast('펀딩 레벨 처리 실패', 2000, 'rounded');
					        var width = $("#toast-container").width();
					        $("#toast-container").css("margin-left", (width*-1)+209);
						}
					})
				}
			}
			location.href='#webtoonManagement';
			webtoonManagement();
		})
		$("#webtoon-free").click(function () {
			for(var i=1; i <= $("input[type='checkbox']").length; i++){
				if($("#filled-in-box"+i).prop("checked")){
					var webtoonCode = $("#filled-in-box"+i).attr("name");
					var webtoonInfo = {"webtoonCode":webtoonCode, "level":"free"};
					$.ajax({
						url : "/controller/admin/webtoonLevel",
						type: "post",
						dataType:"text",
						data: webtoonInfo,
						success : function (result) {
							Materialize.toast('웹툰을 일반 레벨로 변경했습니다.', 2000, 'rounded');
					        var width = $("#toast-container").width();
					        $("#toast-container").css("margin-left", (width*-1)+209);
						},
						error : function (err) {
							Materialize.toast('펀딩 레벨 처리 실패', 2000, 'rounded');
					        var width = $("#toast-container").width();
					        $("#toast-container").css("margin-left", (width*-1)+209);
						}
					})
				}
			}
			location.href='#webtoonManagement';
			webtoonManagement();
		})
		
		$('.dropdown-button').on("dropdown", 'open')
		/*유저 휴먼 처리*/
		$(document).on("click", "#snow", function(){
			var email = $(this).parents().parents().children().first().text();
			$.ajax({
				url : "/controller/admin/userSnow/"+email,
				type : "post",
				dataType : "text",
				success : function(result) {
					if(result==1){
						location.href='#userManagement';
						Materialize.toast(email+'유저를 얼렸습니다.', 2000, 'rounded');
				        var width = $("#toast-container").width();
				        $("#toast-container").css("margin-left", (width*-1)+209);
				        userManagement();
					}
				},
				error : function(err) {
					alert("err")
				}
			})
		});
		
		$("#select-melt").click(function () {
			var email = $("#userEmail").val();
			$.ajax({
				url : "/controller/admin/userMelt/"+email,
				type : "post",
				dataType : "text",
				success : function(result) {
					if(result==1){
						location.href='#userManagement';
						Materialize.toast(email+'유저를 녹였습니다.', 2000, 'rounded');
				        var width = $("#toast-container").width();
				        $("#toast-container").css("margin-left", (width*-1)+209);
				        userManagement();
					}
				},
				error : function(err) {
					Materialize.toast(email+'유저를 녹이는데 실패했습니다.', 2000, 'rounded');
			        var width = $("#toast-container").width();
			        $("#toast-container").css("margin-left", (width*-1)+209);
				}
			})
		})
		
		$("#select-snow").click(function(){
			var email = $("#userEmail").val();
			$.ajax({
				url : "/controller/admin/userSnow/"+email,
				type : "post",
				dataType : "text",
				success : function(result) {
					if(result==1){
						location.href='#userManagement';
						Materialize.toast(email+'유저를 얼렸습니다.', 2000, 'rounded');
				        var width = $("#toast-container").width();
				        $("#toast-container").css("margin-left", (width*-1)+209);
				        userManagement();
					}
				},
				error : function(err) {
					Materialize.toast(email+'유저를 얼리는데 실패하였습니다.', 2000, 'rounded');
			        var width = $("#toast-container").width();
			        $("#toast-container").css("margin-left", (width*-1)+209);
				}
			})
		});
		
		/*유저 일반유저로 돌리기*/
		$(document).on("click", "#melt", function(){
			var email = $(this).parents().parents().children().first().text();
			$.ajax({
				url : "/controller/admin/userMelt/"+email,
				type : "post",
				dataType : "text",
				success : function(result) {
					if(result==1){
						location.href='#userManagement';
						Materialize.toast(email+'유저를 녹였습니다.', 2000, 'rounded');
				        var width = $("#toast-container").width();
				        $("#toast-container").css("margin-left", (width*-1)+209);
				        userManagement();
					}
				},
				error : function(err) {
					alert("err")
				}
			})
		});
		
		/*펀딩 신청 받기*/
		$(document).on("click", "#apply", function(){
			var email = $(this).parents().parents().children().first().text();
			var webtoonCode = $(this).parents().parents().children().first().next().text();
			var userData = {"email":email, "level":"펀딩작가"}
			var webtoonData = {"webtoonCode": webtoonCode, "level": "funding"};
			var webtoonCodeData = {"webtoonCode" : webtoonCode}
			
			/*펀딩 신청 받기*/
			$.ajax({
				url : "/controller/admin/userLevel",
				type:"post",
				dataType : "text",
				data : userData,
				success : function (result) {
			        userManagement();
				},
				error : function (err) {
					alert("err")
				}
			})
			
			/*웹툰 레벨 올리기*/
			 $.ajax({
				url : "/controller/admin/webtoonLevel",
				type : "post",
				dataType : "text",
				data : webtoonData,
				success : function(result) {
						location.href='#applyManagement';
						/*신청 성공시 삭제*/
						$.ajax({
							url : "/controller/admin/applyDelete",
							type:"post",
							dataType : "text",
							data : webtoonCodeData,
							success : function (result) {
								applyFundManagement();
							},
							error : function (err) {
								alert("err")
							}
						})
						Materialize.toast('펀딩 신청을 성공적으로 처리했습니다.', 2000, 'rounded');
				        var width = $("#toast-container").width();
				        $("#toast-container").css("margin-left", (width*-1)+209);
				        applyFundManagement();
				        webtoonManagement();
				},
				error : function(err) {
					alert("err")
				}
			}) 
			
			
		});
		
		/*신고 삭제*/
		$(document).on("click", "#report", function(){
			var reportSequence = $(this).parents().parents().children().first().text();
			var data = {"reportSequence": reportSequence};
			$.ajax({
				url : "/controller/admin/reportDelete",
				type:"post",
				dataType : "text",
				data : data,
				success : function (result) {
					Materialize.toast('신고 삭제가 완료되었습니다.', 2000, 'rounded');
			        var width = $("#toast-container").width();
			        $("#toast-container").css("margin-left", (width*-1)+209);
					reportManagement();
				},
				error : function (err) {
					alert("err")
				}
			})
		});
		
		/* 
			유저 관리 페이지 ( 유저 전체 출력 )
		*/
		function userManagement() {
			$.ajax({
				url : "/controller/admin/userManage",
				type : "get",
				dataType : "json",
				success : function(result) {
					var htmlcode = "";
					if(result==null) {
						htmlcode = "<tr><td colspan='9'><p align='center'><b>"
									+"가입된 유저가 없습니다.</b></p></td></tr>";
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
				            	+item.birthDate+"</td>";
				            if(item.level=='휴먼'){
					            htmlcode += "<td><input type='button'";
					            htmlcode += "class='snbtn waves-effect waves-light col s8 color-300 z-depth-1 hoverable'"
					            htmlcode += "style='margin-top: -20%;height: 17%;' id='melt' value='녹이기'/></td>";				            	
				            }else{
				            	htmlcode += "<td><input type='button'";
					            htmlcode += "class='snbtn waves-effect waves-light col s8 color-300 z-depth-1 hoverable'"
					            htmlcode += "style='margin-top: -20%;height: 17%;' id='snow' value='얼리기'/></td>";
				            }
				            htmlcode += "</tr>";
						});
					}
					$("#userManageList tbody").html(htmlcode);
				},
				error : function(err) {
					alert("err");
				}
			})
		}
		
		/* 웹툰 관리 페이지 ( 웹툰 전체 출력 )*/
		function allWebtoonManagement(){
			$.ajax({
				url : "/controller/admin/webtoonManage",
				type : "get",
				dataType : "json",
				success : function(result) {
					var htmlcode = "";
					if(result==null) {
						htmlcode = "<tr><td colspan='9'><p align='center'><b>"
									+"등록된 웹툰이 없습니다.</b></p></td></tr>";
					}else {
						$.each(result, function(index, item) {
							htmlcode += "<tr><td>"
			            		+item.webtoonCode+"</td>";
							htmlcode += "<td>"
			            		+item.webtoonName+"</td>";
			            	htmlcode += "<td>"
				            	+item.webtoonLevel+"</td>";
				            htmlcode += "<td>"
				            	+item.webtoonState+"</td>";
				            htmlcode += "<td>"
					            +item.categoryCode+"</td>";
				            htmlcode += "<td>"
				            	+item.penalty+"</td>";
				            htmlcode += "<td>"
				            	+item.nickname+"</td>";
				            htmlcode += "<td>"
				            	+item.summary+"</td>";
				            htmlcode += "<td>";
					        htmlcode += "<input type='checkbox' class='filled-in' id='filled-in-box"+item.webtoonCode+"' name='"+item.webtoonCode+"'/>"
					        htmlcode += "<label for='filled-in-box"+item.webtoonCode+"'>선택</label>"; 
					        htmlcode += "<input type='hidden' id='webtoonName"+item.webtoonCode+"' value='"+item.webtoonName+"'/>"
					        htmlcode += "</td>";
				            htmlcode += "</tr>";
						});
					}
					$("#webtoonManageList tbody").html(htmlcode);
				},
				error : function(err) {
					alert("err");
				}
			})
		}
		
		/* 웹툰 관리 페이지 ( 연재 웹툰 출력 )*/
		function serialWebtoonManagement(){
			$.ajax({
				url : "/controller/admin/webtoonManage",
				type : "get",
				dataType : "json",
				success : function(result) {
					var htmlcode = "";
					if(result==null) {
						htmlcode = "<tr><td colspan='9'><p align='center'><b>"
									+"등록된 웹툰이 없습니다.</b></p></td></tr>";
					}else {
						$.each(result, function(index, item) {
							if(item.webtoonState=='serial'){
							htmlcode += "<tr><td>"
			            		+item.webtoonCode+"</td>";
							htmlcode += "<td>"
			            		+item.webtoonName+"</td>";
			            	htmlcode += "<td>"
				            	+item.webtoonLevel+"</td>";
				            htmlcode += "<td>"
				            	+item.webtoonState+"</td>";
				            htmlcode += "<td>"
					            +item.categoryCode+"</td>";
				            htmlcode += "<td>"
				            	+item.penalty+"</td>";
				            htmlcode += "<td>"
				            	+item.nickname+"</td>";
				            htmlcode += "<td>"
				            	+item.summary+"</td>";
				            htmlcode += "<td>";
					        htmlcode += "<input type='checkbox' class='filled-in' id='filled-in-box"+item.webtoonCode+"' name='"+item.webtoonCode+"'/>"
					        htmlcode += "<label for='filled-in-box"+item.webtoonCode+"'>선택</label>"; 
					        htmlcode += "<input type='hidden' id='webtoonName"+item.webtoonCode+"' value='"+item.webtoonName+"'/>"
					        htmlcode += "</td>";
				            htmlcode += "</tr>";
							}
						});
					}
					$("#webtoonManageList tbody").html(htmlcode);
				},
				error : function(err) {
					alert("err");
				}
			})
		}
		
		/* 웹툰 관리 페이지 ( 완결 웹툰 출력 )*/
		function completeWebtoonManagement(){
			$.ajax({
				url : "/controller/admin/webtoonManage",
				type : "get",
				dataType : "json",
				success : function(result) {
					var htmlcode = "";
					if(result==null) {
						htmlcode = "<tr><td colspan='9'><p align='center'><b>"
									+"등록된 웹툰이 없습니다.</b></p></td></tr>";
					}else {
						$.each(result, function(index, item) {
							if(item.webtoonState=='complete'){
							htmlcode += "<tr><td>"
			            		+item.webtoonCode+"</td>";
							htmlcode += "<td>"
			            		+item.webtoonName+"</td>";
			            	htmlcode += "<td>"
				            	+item.webtoonLevel+"</td>";
				            htmlcode += "<td>"
				            	+item.webtoonState+"</td>";
				            htmlcode += "<td>"
					            +item.categoryCode+"</td>";
				            htmlcode += "<td>"
				            	+item.penalty+"</td>";
				            htmlcode += "<td>"
				            	+item.nickname+"</td>";
				            htmlcode += "<td>"
				            	+item.summary+"</td>";
				            htmlcode += "<td>";
					        htmlcode += "<input type='checkbox' class='filled-in' id='filled-in-box"+item.webtoonCode+"' name='"+item.webtoonCode+"'/>"
					        htmlcode += "<label for='filled-in-box"+item.webtoonCode+"'>선택</label>"; 
					        htmlcode += "<input type='hidden' id='webtoonName"+item.webtoonCode+"' value='"+item.webtoonName+"'/>"
					        htmlcode += "</td>";
				            htmlcode += "</tr>";
							}
						});
					}
					$("#webtoonManageList tbody").html(htmlcode);
				},
				error : function(err) {
					alert("err");
				}
			})
		}
		
		/* 웹툰 관리 페이지 ( 블라인드 웹툰 출력 )*/
		function blindWebtoonManagement(){
			$.ajax({
				url : "/controller/admin/webtoonManage",
				type : "get",
				dataType : "json",
				success : function(result) {
					var htmlcode = "";
					if(result==null) {
						htmlcode = "<tr><td colspan='9'><p align='center'><b>"
									+"등록된 웹툰이 없습니다.</b></p></td></tr>";
					}else {
						$.each(result, function(index, item) {
							if(item.webtoonState=='blind'){
							htmlcode += "<tr><td>"
			            		+item.webtoonCode+"</td>";
							htmlcode += "<td>"
			            		+item.webtoonName+"</td>";
			            	htmlcode += "<td>"
				            	+item.webtoonLevel+"</td>";
				            htmlcode += "<td>"
				            	+item.webtoonState+"</td>";
				            htmlcode += "<td>"
					            +item.categoryCode+"</td>";
				            htmlcode += "<td>"
				            	+item.penalty+"</td>";
				            htmlcode += "<td>"
				            	+item.nickname+"</td>";
				            htmlcode += "<td>"
				            	+item.summary+"</td>";
				            htmlcode += "<td>";
					        htmlcode += "<input type='checkbox' class='filled-in' id='filled-in-box"+item.webtoonCode+"' name='"+item.webtoonCode+"'/>"
					        htmlcode += "<label for='filled-in-box"+item.webtoonCode+"'>선택</label>"; 
					        htmlcode += "<input type='hidden' id='webtoonName"+item.webtoonCode+"' value='"+item.webtoonName+"'/>"
					        htmlcode += "</td>";
				            htmlcode += "</tr>";
							}
						});
					}
					$("#webtoonManageList tbody").html(htmlcode);
				},
				error : function(err) {
					alert("err");
				}
			})
		}
		
		/* 웹툰 관리 페이지 ( 일반 웹툰 출력 )*/
		function freeWebtoonManagement(){
			$.ajax({
				url : "/controller/admin/webtoonManage",
				type : "get",
				dataType : "json",
				success : function(result) {
					var htmlcode = "";
					if(result==null) {
						htmlcode = "<tr><td colspan='9'><p align='center'><b>"
									+"등록된 웹툰이 없습니다.</b></p></td></tr>";
					}else {
						$.each(result, function(index, item) {
							if(item.webtoonLevel=='free'){
							htmlcode += "<tr><td>"
			            		+item.webtoonCode+"</td>";
							htmlcode += "<td>"
			            		+item.webtoonName+"</td>";
			            	htmlcode += "<td>"
				            	+item.webtoonLevel+"</td>";
				            htmlcode += "<td>"
				            	+item.webtoonState+"</td>";
				            htmlcode += "<td>"
					            +item.categoryCode+"</td>";
				            htmlcode += "<td>"
				            	+item.penalty+"</td>";
				            htmlcode += "<td>"
				            	+item.nickname+"</td>";
				            htmlcode += "<td>"
				            	+item.summary+"</td>";
				            htmlcode += "<td>";
					        htmlcode += "<input type='checkbox' class='filled-in' id='filled-in-box"+item.webtoonCode+"' name='"+item.webtoonCode+"'/>"
					        htmlcode += "<label for='filled-in-box"+item.webtoonCode+"'>선택</label>"; 
					        htmlcode += "<input type='hidden' id='webtoonName"+item.webtoonCode+"' value='"+item.webtoonName+"'/>"
					        htmlcode += "</td>";
				            htmlcode += "</tr>";
							}
						});
					}
					$("#webtoonManageList tbody").html(htmlcode);
				},
				error : function(err) {
					alert("err");
				}
			})
		}
		
		/* 웹툰 관리 페이지 ( 펀딩 웹툰 출력 )*/
		function fundingWebtoonManagement(){
			$.ajax({
				url : "/controller/admin/webtoonManage",
				type : "get",
				dataType : "json",
				success : function(result) {
					var htmlcode = "";
					if(result==null) {
						htmlcode = "<tr><td colspan='9'><p align='center'><b>"
									+"등록된 웹툰이 없습니다.</b></p></td></tr>";
					}else {
						$.each(result, function(index, item) {
							if(item.webtoonLevel=='funding'){
							htmlcode += "<tr><td>"
			            		+item.webtoonCode+"</td>";
							htmlcode += "<td>"
			            		+item.webtoonName+"</td>";
			            	htmlcode += "<td>"
				            	+item.webtoonLevel+"</td>";
				            htmlcode += "<td>"
				            	+item.webtoonState+"</td>";
				            htmlcode += "<td>"
					            +item.categoryCode+"</td>";
				            htmlcode += "<td>"
				            	+item.penalty+"</td>";
				            htmlcode += "<td>"
				            	+item.nickname+"</td>";
				            htmlcode += "<td>"
				            	+item.summary+"</td>";
				            htmlcode += "<td>";
					        htmlcode += "<input type='checkbox' class='filled-in' id='filled-in-box"+item.webtoonCode+"' name='"+item.webtoonCode+"'/>"
					        htmlcode += "<label for='filled-in-box"+item.webtoonCode+"'>선택</label>"; 
					        htmlcode += "<input type='hidden' id='webtoonName"+item.webtoonCode+"' value='"+item.webtoonName+"'/>"
					        htmlcode += "</td>";
				            htmlcode += "</tr>";
							}
						});
					}
					$("#webtoonManageList tbody").html(htmlcode);
				},
				error : function(err) {
					alert("err");
				}
			})
		}
		
		/* 웹툰 관리 페이지 ( 완결 휴재 출력 )*/
		function pauseWebtoonManagement(){
			$.ajax({
				url : "/controller/admin/webtoonManage",
				type : "get",
				dataType : "json",
				success : function(result) {
					var htmlcode = "";
					if(result==null) {
						htmlcode = "<tr><td colspan='9'><p align='center'><b>"
									+"등록된 웹툰이 없습니다.</b></p></td></tr>";
					}else {
						$.each(result, function(index, item) {
							if(item.webtoonState=='pause'){
							htmlcode += "<tr><td>"
			            		+item.webtoonCode+"</td>";
							htmlcode += "<td>"
			            		+item.webtoonName+"</td>";
			            	htmlcode += "<td>"
				            	+item.webtoonLevel+"</td>";
				            htmlcode += "<td>"
				            	+item.webtoonState+"</td>";
				            htmlcode += "<td>"
					            +item.categoryCode+"</td>";
				            htmlcode += "<td>"
				            	+item.penalty+"</td>";
				            htmlcode += "<td>"
				            	+item.nickname+"</td>";
				            htmlcode += "<td>"
				            	+item.summary+"</td>";
				            htmlcode += "<td>";
					        htmlcode += "<input type='checkbox' class='filled-in' id='filled-in-box"+item.webtoonCode+"' name='"+item.webtoonCode+"'/>"
					        htmlcode += "<label for='filled-in-box"+item.webtoonCode+"'>선택</label>"; 
					        htmlcode += "<input type='hidden' id='webtoonName"+item.webtoonCode+"' value='"+item.webtoonName+"'/>"
					        htmlcode += "</td>";
				            htmlcode += "</tr>";
							}
						});
					}
					$("#webtoonManageList tbody").html(htmlcode);
				},
				error : function(err) {
					alert("err");
				}
			})
		}
		
		/* 신청 관리 페이지 ( 신청 전체 출력 )*/
		function applyFundManagement(){
			$.ajax({
				url : "/controller/admin/applyFundManage",
				type : "get",
				dataType : "json",
				success : function(result) {
					var htmlcode = "";
					if(result==null) {
						htmlcode = "<tr><td colspan='9'><p align='center'><b>"
									+"신청 목록이 없습니다.</b></p></td></tr>";
					}else {
						$.each(result, function(index, item) {
							htmlcode += "<tr><td>"
			            		+item.email+"</td>";
			            	htmlcode += "<td>"
				            	+item.webtoonCode+"</td>";
				            htmlcode += "<td>"
				            	+item.score+"</td>";
				            htmlcode += "<td>";
				            htmlcode += "<td><input type='button'";
				            htmlcode += "class='snbtn waves-effect waves-light col s8 color-300 z-depth-1 hoverable'"
				            htmlcode += "style='margin-top: -5%;height: 17%;' id='apply' value='신청받기'/></td>";
					        htmlcode += "<input type='hidden' id=applyFund"+item.webtoonCode+"' value='"+item.webtoonCode+"'/>"
					        htmlcode += "</td>";
				            htmlcode += "</tr>";
						});
					}
					$("#applyFundManageList tbody").html(htmlcode);
				},
				error : function(err) {
					alert("err");
				}
			})
		}
		
		/* 신고 관리 페이지 ( 신고 전체 출력 )*/
		function reportManagement(){
			$.ajax({
				url : "/controller/admin/reportManage",
				type : "get",
				dataType : "json",
				success : function(result) {
					var htmlcode = "";
					if(result==null) {
						htmlcode = "<tr><td colspan='9'><p align='center'><b>"
									+"신고 목록이 없습니다.</b></p></td></tr>";
					}else {
						$.each(result, function(index, item) {
							htmlcode += "<tr><td>"
			            		+item.reportSequence+"</td>";
			            	htmlcode += "<td>"
				            	+item.content+"</td>";
				            htmlcode += "<td>"
				            	+item.email+"</td>";
				            htmlcode += "<td>"
					      		+item.webtoonCode+"</td>";
					        htmlcode += "<td><a href='/controller/webtoon/episodePage/"+item.episodeSequence+"'>"
						    	+item.episodeSequence+"</a></td>";
				            htmlcode += "<td>";
				            htmlcode += "<td><input type='button'";
				            htmlcode += "class='snbtn waves-effect waves-light col s8 color-300 z-depth-1 hoverable'"
				            htmlcode += "style='margin-top: -5%;height: 17%;' id='report' value='신고처리'/></td>";
					        htmlcode += "<input type='hidden' id=report"+item.webtoonCode+"' value='"+item.webtoonCode+"'/>"
					        htmlcode += "</td>";
				            htmlcode += "</tr>";
						});
					}
					$("#reportManagementList tbody").html(htmlcode);
				},
				error : function(err) {
					alert("err");
				}
			})
		}
		
		userManagement();
		allWebtoonManagement();
		applyFundManagement();
		reportManagement();
	})
</script>
<input id="header-title" type="hidden" value="관리자페이지">
<div class="row tab-frame-myinfo">
	<div class="col s12 tab-admin">
		<ul class="tabs center z-depth-2" style="background-color:#424242">
			<li class="tab col s3"><a href="#userManagement" id="userManage">유저 관리</a></li>
			<li class="tab col s3"><a href="#webtoonManagement" id="webtoonManage">웹툰 관리</a></li>
			<li class="tab col s3"><a href="#applyManagement">신청 관리</a></li>
			<li class="tab col s3"><a href="#reportManagement">신고 관리</a></li>
		</ul>
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
