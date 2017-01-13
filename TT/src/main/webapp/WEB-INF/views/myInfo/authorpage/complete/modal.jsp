
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
	$(function () {
		$("#paid-apply-btn").click(function(){
			var selectLength = $("#paid-webtoon-select option").length;
			var webtoonName = $("#paid-webtoon-select-div div input").val();
			var webtoonCode;
			
			for(i=1; i<=selectLength; i++){
				var webtoonCodeIndex = $("#paid-webtoon-select option:eq("+i+")").html();
				if(webtoonCodeIndex==webtoonName){
					webtoonCode = {"webtoonCode": $("#paid-webtoon-select option:eq("+i+")").val()};
				}
			}
			
			$.ajax({
				url : "/controller/user/paidApply",
				type : "post",
				dataType : "text",
				data : webtoonCode,
				success : function(result) {
					$("#paid-webtoon-modal").modal('close');
					Materialize.toast('유료화 신청이 완료 되었습니다. 관리자가 승인할 때 까지 기다려 주시길 바랍니다.', 3000, 'rounded');
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

<!-- 유료화 신청 modal -->
<div id="paid-webtoon-modal" class="modal modal-fixed-footer modal-top">
	<form method="post">
		<div id="inputDiv">
		<div class="modal-title color-500 white-text z-depth-1">
				<h5>유료화 신청</h5>
			</div>
			<div class="modal-content modal-content-funding">
		<div id="paid-webtoon-select-div" class="input-field col s12">
			<select id="paid-webtoon-select">
				<option value="" disabled selected>웹툰 선택</option>
				<c:forEach var="item" items="${completeWebtoonList}" varStatus="status">
					<c:if test="${item.webtoonLevel eq 'funding'}">
							<option value='${item.webtoonCode}'>${item.webtoonName}</option>
					</c:if>
				</c:forEach>
			</select> <label>유료화 신청할 펀딩웹툰 선택</label>
		</div>
		<div class="paid-webtoon-description">
			<p>펀딩으로 완결된 웹툰만 가능합니다.</p>
			<p>유료화 신청이 완료되면 사이트 내 관리자가 몇일 내로 전화드립니다.</p>
			<p>오전 10시 ~ 오후 6시</p>
		</div>

	</div>
	<div class="modal-footer">
		<a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">취소</a>
		<a id="paid-apply-btn" class="modal-action modal-close waves-effect waves-green btn-flat" >신청</a>
	</div>
	</div>
	</form>
</div>