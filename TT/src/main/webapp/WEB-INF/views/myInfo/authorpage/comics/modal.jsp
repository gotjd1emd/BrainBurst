<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
	$(function () {
		
		$("#fund-webtoon-select-div div ul li span").on("click", function () {
			var selectLength = $("#fund-webtoon-select option").length;
			var webtoonName = $(this).html();
			console.log(webtoonName);
			var webtoonCode;
			for(i=1; i<=selectLength; i++){
				var webtoonCodeIndex = $("#fund-webtoon-select option:eq("+i+")").html();
				console.log("webtoonCodeIndex : " + webtoonCodeIndex);
				if(webtoonCodeIndex==webtoonName){
					webtoonCode = {"webtoonCode": $("#fund-webtoon-select option:eq("+i+")").val()};
				}
			}
			$("#fund-webtoon-modal-webtoon-name").html(webtoonName);
			
			$.ajax({
				url : "/controller/webtoon/webtoonScore",
				type : "get",
				dataType : "text",
				data : webtoonCode,
				success : function(score) {
					$("#fund-webtoon-score").html(score);
					if(score<300){
						$("#find-apply-btn").attr("disabled", "true");
					}else{
						$("#find-apply-btn").removeAttr("disabled");
					}
				},
				error : function(err){
					Materialize.toast('다시 시도해 주세요.', 2000, 'rounded');
			        var width = $("#toast-container").width();
			        $("#toast-container").css("margin-left", (width*-1)+209);
				}
			})
		});
		
		$("#find-apply-btn").click(function(){
			var selectLength = $("#fund-webtoon-select option").length;
			var webtoonName = $("#fund-webtoon-select-div div input").val();
			var webtoonCode;
			for(i=1; i<=selectLength; i++){ 
				var webtoonCodeIndex = $("#fund-webtoon-select option:eq("+i+")").html();
				if(webtoonCodeIndex==webtoonName){
					webtoonCode = {"webtoonCode": $("#fund-webtoon-select option:eq("+i+")").val()};
				}
			}
			
			$.ajax({
				url : "/controller/user/fundApply",
				type : "post",
				dataType : "text",
				data : webtoonCode,
				success : function(result) {
					$("#funding-webtoon-modal").modal('close');
					Materialize.toast('펀딩 신청이 완료 되었습니다. 관리자가 승인할 때 까지 기다려 주시길 바랍니다.', 3000, 'rounded');
			        var width = $("#toast-container").width();
			        $("#toast-container").css("margin-left", (width*-1)+209);
				},
				error : function(err){
					Materialize.toast('다시 시도해 주세요.', 2000, 'rounded');
			        var width = $("#toast-container").width();
			        $("#toast-container").css("margin-left", (width*-1)+209);
				}
			})
		})
	})
</script>

<!-- 펀딩 웹툰 신청 다이얼로그 -->
<div id="funding-webtoon-modal" class="modal modal-fixed-footer modal-top">
	<form method="post" action="/controller/webtoon/funding-apply">
		<div id="inputDiv">
		<div class="modal-title color-500 white-text z-depth-1">
				<h5>펀딩 웹툰 신청</h5>
			</div>
			<div class="modal-content modal-content-funding">
		<div id="fund-webtoon-select-div" class="input-field col s12">
			<select id="fund-webtoon-select">
				<option value="" disabled selected>웹툰 선택</option>
				<c:forEach var="item" items="${serialWebtoonList}" varStatus="status">
					<option value="${item.webtoonCode}">${item.webtoonName}</option>
				</c:forEach>
			</select> <label>펀딩 신청할 웹툰 선택</label>
		</div>
		<div class="webtoon-score">"<span id="fund-webtoon-modal-webtoon-name">웹툰 이름</span>"<br>작품의 점수 :<span id="fund-webtoon-score">??</span></div>
		<div class="webtoon-score-description">
			- 300점 이상만 신청 가능합니다<br> - 작가의 추가정보를 입력해주세요.(펀딩을 위한 계좌번호 등등..)
		</div>
	
	</div>
	<div class="modal-footer">
		<a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">취소</a>
		<button id="find-apply-btn" class="modal-action modal-close waves-effect waves-green btn-flat">신청</button>
	</div>
	</div>
	</form>
</div>

<!-- 웹툰 상태 처리 다이어로그 -->
<div id="webtoon-state-modal" class="modal modal-fixed-footer modal-top">
	<form method="post" action="/controller/webtoon/webtoonStateChange">
		<div id="inputDiv">
		<div class="modal-title color-500 white-text z-depth-1">
				<h5>웹툰 상태 처리</h5>
			</div>
			<div class="modal-content modal-content-funding">
		<div class="input-field col s12" >
			<select name="webtoonCode" id="mylist">
				<c:forEach var="item" items="${mylist}" varStatus="status" >
					<option value="${item.webtoonCode}">${item.webtoonName}</option>
				</c:forEach>
			</select> <label>상태 변경 할 웹툰 선택</label>
		</div>
		<div class="input-field col s12">
			<select name="webtoonState">
				<option value="serial">연재</option>
				<option value="pause">휴재</option>
				<option value="complete">완결</option>
				<option value="blind">블라인드</option>
			</select> <label>상태 선택</label>
		</div>
		<div class="state-description">
			<p>연재 : 웹툰을 계속 연재할때 또는 다른 상태에 있다가 다시 연재하고 싶을때</p>
			<p>휴재 : 잠깐 웹툰 연재를 중단할 때</p>
			<p>완결 : 스토리상 웹툰이 끝났을 때</p>
			<p>블라인드 : 웹툰 연재를 완전히 중단할 때</p>
		</div>
	</div>
	<div class="modal-footer">
		<a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">취소</a>
		<button class="modal-action modal-close waves-effect waves-green btn-flat" type="submit" name="action">적용</button>
	</div>
	</div>
	</form>
</div>

<!-- 웹툰 수정 하기 버튼 -->
<div id="webtoon-modify-modal" class="modal modal-fixed-footer modal-top">
	<form method="get" action="<c:url value="/author/modifyWebtoonPage"/>">
		<div id="inputDiv">
		<div class="modal-title color-500 white-text z-depth-1">
				<h5>웹툰 상태 처리</h5>
			</div>
			<div class="modal-content modal-content-funding">
		<div class="input-field col s12">
			<select name="webtoonCode">
				<option value="" disabled selected>웹툰 선택</option>
				<c:forEach var="item" items="${webtoonList}" varStatus="status">
					<option value="${item.webtoonCode }">${item.webtoonName}</option>
				</c:forEach>
			</select> <label>펀딩 신청할 웹툰 선택</label>
		</div>
	</div>
	<div class="modal-footer">
		<a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">취소</a>
		<button class="modal-action modal-close waves-effect waves-green btn-flat" type="submit">수정하기</button>
	</div>
	</div>
	</form>
</div>