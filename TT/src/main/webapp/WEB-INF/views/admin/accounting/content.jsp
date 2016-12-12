<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
	$(function(){
		$(document).ready(function() {
			$.ajax({
				url : "/controller/user/THistoryList",
				type : "get",
				dataType : "json",
				success : function(result) {
					var htmlcode = "";
					if(result==null) {
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
					$("#tHistory").append(htmlcode);
				},
				error : function(err) {
					alert("err");
				}
			})
		})
	})
</script>
<table class="striped" id="tHistory">
	<thead>
		<tr>
			<th data-field="id">Name</th>
			<th data-field="name">Item Name</th>
			<th data-field="price">Item Price</th>
			<th data-field="price">Item Price</th>
		</tr>
	</thead>

	<tbody>

	</tbody>
</table>