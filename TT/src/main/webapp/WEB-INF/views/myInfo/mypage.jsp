<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUTF-8">
	<title>Insert title here</title>
	<style>
		/* Style */
	</style>
	<script>
	$("document").ready(function(){
		$("#getHistory").click(function() {
			$.ajax({
		
				url : "/user/THistoryList",
				type : "post",
				dataType : "json",
				success : function(result) {
					var htmlcode = "<thead><tr>"+
						"<th data-field='date'>날짜</th>"+
						"<th data-field='price'>금액</th>"+
						"<th data-field='content'>내용</th>"+
						"<th data-field='state'>사용경로</th>"+
						"</tr></thead>";		
					
						htmlcode+="<tbody>"+
							"<c:choose>"+
								"<c:when test='"+${empty requestScope.historyList}+"'>"+
									"<tr>"+
										"<td colspan='5'>"+
											"<p align=' center'><b><span style='font-size:9pt;'>등록된 상품이 없습니다.</span></b></p>"+
										"</td>"+
									"</tr>"+
	    						"</c:when>"+
		    					"<c:otherwise>"+
			    					"<c:forEach items='"+${requestScope.historyList}+"' var='cashHistoryDto'>"+
			    						"<tr>"+
			    							"<td>"+
			    								"<p align='center'><span style='font-size:9pt;'><c:out value='"+${cashHistoryDto.accountDay}+"'/></span></p>"+
					        				"</td>"+
					        				"<td bgcolor="">"+
												"<p><span style='font-size:9pt;'><c:out value='"+${cashHistoryDto.cashPoint}+"'/></span></p>"+
											"</td>"+
									        "<td bgcolor="">"+
									            "<p align='center'><span style='font-size:9pt;'><c:out value='"+${cashHistoryDto.content}+"'/></span></p>"+
									        "</td>"+
									        "<td bgcolor=''>"+
									            "<p align='center'><span style='font-size:9pt;'><c:out value='"+${cashHistoryDto.tradeState}+"'/></span></p>"+
									        "</td>"+
									    "</tr>"+
							    	"</c:forEach>"+
								"</c:otherwise>"+
							"</c:choose>"+
						"</tbody>";
						
					$('#cashListTable').html(htmlcode);
				},
				error : function(err) {
					
				}
			})
		})
	})
	</script>
</head>
<body>
	<div class="row tab-frame-myinfo">
    <div class="col s12 tab-myinfo">
      <ul class="tabs center z-depth-2">
        <li class="tab col s2 offset-l3"><a class="active" href="#myInfoModify">내정보 수정</a></li>
        <li class="tab col s2"><a href="#subscriptionManagement">구독관리</a></li>
        <li class="tab col s2"><a href="#THistory" id="getHistory">T내역</a></li>
      </ul>
    </div>
    <div id="myInfoModify" class="col s12 tab-card-info">
		<div class="card-frame-myInfo z-depth-1">
				<div class="row">
	    <form class="col s12" method="post" action="<c:url value='/user/userUpdate'/>">
	    <div class="row">
	        <div class="input-field col s12">
	          <input id="name-myinfo" type="text" class="validate" name="email" value="${sessionScope.userDTO.email}" disabled>
	          <label for="name-myinfo">이메일</label>
	        </div>
	      </div>
	      <div class="row">
	        <div class="input-field col s12">
	          <input id="name-myinfo" type="text" class="validate" value="${sessionScope.userDTO.nickname}" disabled>
	          <label for="name-myinfo">닉네임</label>
	        </div>
	      </div>
	       <div class="row">
	        <div class="input-field col s12">
	          <input id="name-myinfo" type="text" class="validate" value="${sessionScope.userDTO.name}" disabled>
	          <label for="name-myinfo">이름</label>
	        </div>
	      </div>
	      <div class="row">
	        <div class="input-field col s12">
	          <input id="name-myinfo" type="text" class="validate" name=password placeholder="현재 비밀번호 : ${sessionScope.userDTO.password}">
	          <label for="name-myinfo">비밀번호</label>
	        </div>
	      </div>
	      <div class="row">
	        <div class="input-field col s12">
	          <input id="birthDate-myinfo" type="text" class="validate" value="${sessionScope.userDTO.birthDate}" disabled>
	          <label for="birthDate-myinfo">생년월일</label>
	        </div>
	      </div>
	      <div class="row">
	        <div class="input-field col s12">
	          <input id="telno-myinfo" type="text" class="validate" name="phone" placeholder="현재 전화번호 : ${sessionScope.userDTO.phone}">
	          <label for="telno-myinfo">전화번호</label>
	        </div>
	      </div>
	      
	      <div class="row">
	        <div class="input-field col s12">
	          <input id="telno-myinfo" type="text" class="validate" value="${sessionScope.userDTO.gender}" disabled>
	          <label for="telno-myinfo">성별</label>
	        </div>
	      </div>
	      
	      <div class="center">
		      <button class="btn waves-effect waves-light" type="submit" name="action">수정하기</button>
	      </div>
	    </form>
	  </div>
		</div>
    </div>
    <div id="subscriptionManagement" class="col s12 tab-card-info">
    	<div class="card-frame-myInfo z-depth-1">
			<ul class="collection subscribe-list">
			    <li class="collection-item avatar">
			      <img src='<c:url value="/resource/images/yuna.jpg"/>' alt="" class="circle">
			      <span class="title">Title</span>
			      <p>First Line <br>
			         Second Line
			      </p>
			      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
			    </li>
			    <li class="collection-item avatar">
			      <i class="material-icons circle">folder</i>
			      <span class="title">Title</span>
			      <p>First Line <br>
			         Second Line
			      </p>
			      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
			    </li>
			    <li class="collection-item avatar">
			      <i class="material-icons circle green">insert_chart</i>
			      <span class="title">Title</span>
			      <p>First Line <br>
			         Second Line
			      </p>
			      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
			    </li>
			    <li class="collection-item avatar">
			      <i class="material-icons circle red">play_arrow</i>
			      <span class="title">Title</span>
			      <p>First Line <br>
			         Second Line
			      </p>
			      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
			    </li>
			    <li class="collection-item avatar">
			      <i class="material-icons circle red">play_arrow</i>
			      <span class="title">Title</span>
			      <p>First Line <br>
			         Second Line
			      </p>
			      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
			    </li>
			    <li class="collection-item avatar">
			      <i class="material-icons circle red">play_arrow</i>
			      <span class="title">Title</span>
			      <p>First Line <br>
			         Second Line
			      </p>
			      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
			    </li>
			    <li class="collection-item avatar">
			      <i class="material-icons circle red">play_arrow</i>
			      <span class="title">Title</span>
			      <p>First Line <br>
			         Second Line
			      </p>
			      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
			    </li>
			    <li class="collection-item avatar">
			      <i class="material-icons circle red">play_arrow</i>
			      <span class="title">Title</span>
			      <p>First Line <br>
			         Second Line
			      </p>
			      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
			    </li>
			    <li class="collection-item avatar">
			      <i class="material-icons circle red">play_arrow</i>
			      <span class="title">Title</span>
			      <p>First Line <br>
			         Second Line
			      </p>
			      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
			    </li>
			    <li class="collection-item avatar">
			      <i class="material-icons circle red">play_arrow</i>
			      <span class="title">Title</span>
			      <p>First Line <br>
			         Second Line
			      </p>
			      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
			    </li>
			    <li class="collection-item avatar">
			      <i class="material-icons circle red">play_arrow</i>
			      <span class="title">Title</span>
			      <p>First Line <br>
			         Second Line
			      </p>
			      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
			    </li>
			    <li class="collection-item avatar">
			      <i class="material-icons circle red">play_arrow</i>
			      <span class="title">Title</span>
			      <p>First Line <br>
			         Second Line
			      </p>
			      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
			    </li>
			  </ul>
		</div>
    </div>
    <div id="THistory" class="col s12 tab-card-info">
   	 <div class="card-frame-myInfo z-depth-1">
    	<table class="striped" id="cashListTable">
    	</table>
		</div>
    </div>
  </div>
</body>
</html>