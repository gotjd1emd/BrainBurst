<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUTF-8">
	<script src="<c:url value='/resources/js/jquery.bxslider.js'/>"></script>
	<link rel="styleSheet" href="<c:url value='/resources/css/jquery.bxslider.css'/>">
	<title>Insert title here</title>
	<style>
		/* Style */
	</style>
	<script>
	</script>
</head>
<body>
	<div class="row tab-frame-myinfo">
    <div class="col s12 tab-myinfo">
      <ul class="tabs center z-depth-2">
        <li class="tab col s2 offset-l2"><a class="active" href="#publish-webtoon">연재중인 웹툰</a></li>
        <li class="tab col s2"><a href="#completed-webtoon">완결된 웹툰</a></li>
        <li class="tab col s2"><a href="#funding-management">펀딩 관리</a></li>
        <li class="tab col s2"><a href="#author-management">작가 관리</a></li>
      </ul>
    </div>
    <div id="publish-webtoon" class="col s12 tab-card-info">
    
	  <div class="fixed-action-btn horizontal click-to-toggle">
	    <a class="btn-floating btn-large red publish-webtoon-floating">
	      <i class="material-icons first-icon">menu</i>
	    </a>
	    <ul>
	      <li><a class="btn-floating green mini-floating tooltipped" data-position="top" data-delay="50" data-tooltip="펀딩 작품 신청"><i class="material-icons">data_usage</i></a></li>
	      <li><a class="btn-floating yellow darken-1 mini-floating tooltipped"  data-position="top" data-delay="50" data-tooltip="작품 상태 처리"><i class="material-icons">priority_high</i></a></li>
	      <li><a class="btn-floating red mini-floating tooltipped"  data-position="top" data-delay="50" data-tooltip="작품 등록"><i class="material-icons">publish</i></a></li>
	    </ul>
	  </div>
	  
		<div class="card-frame-myInfo z-depth-1">
				<div class="row">
				  <div class="card col s12 m24 l3 top_card hoverable">
				    <div class="card-image waves-effect waves-block waves-light">
				      <img src="<c:url value='/resources/img/sk.png'/>">
				    </div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
				      <p><a href="#">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
				  <div class="card col s12 m24 l3 top_card hoverable">
				    <div class="card-image waves-effect waves-block waves-light">
				      <img src="<c:url value='/resources/img/sk.png'/>">
				    </div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
				      <p><a href="#">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
				  <div class="card col s12 m24 l3 top_card hoverable">
				    <div class="card-image waves-effect waves-block waves-light">
				      <img src="<c:url value='/resources/img/sk.png'/>">
				    </div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
				      <p><a href="#">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
				</div>
				<div class="row">
				  <div class="card col s12 m24 l3 top_card hoverable">
				    <div class="card-image waves-effect waves-block waves-light">
				      <img src="<c:url value='/resources/img/sk.png'/>">
				    </div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
				      <p><a href="#">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
				  <div class="card col s12 m24 l3 top_card hoverable">
				    <div class="card-image waves-effect waves-block waves-light">
				      <img src="<c:url value='/resources/img/sk.png'/>">
				    </div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
				      <p><a href="#">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
				  <div class="card col s12 m24 l3 top_card hoverable">
				    <div class="card-image waves-effect waves-block waves-light">
				      <img src="<c:url value='/resources/img/sk.png'/>">
				    </div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
				      <p><a href="#">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
				</div>
		</div>
    </div>
    <div id="completed-webtoon" class="col s12 tab-card-info">
    			
    			<div class="fixed-action-btn horizontal click-to-toggle">
				    <a class="btn-floating red publish-webtoon-floating tooltipped" data-position="top" data-delay="50" data-tooltip="유료화 신청"><i class="material-icons first-icon">attach_money</i></a>
				  </div>
    
    			<div class="card-frame-myInfo z-depth-1">
				<div class="row">
				  <div class="card col s12 m24 l3 top_card hoverable">
				    <div class="card-image waves-effect waves-block waves-light">
				      <img src="<c:url value='/resources/img/sk.png'/>">
				    </div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
				      <p><a href="#">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
				  <div class="card col s12 m24 l3 top_card hoverable">
				    <div class="card-image waves-effect waves-block waves-light">
				      <img src="<c:url value='/resources/img/sk.png'/>">
				    </div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
				      <p><a href="#">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
				  <div class="card col s12 m24 l3 top_card hoverable">
				    <div class="card-image waves-effect waves-block waves-light">
				      <img src="<c:url value='/resources/img/sk.png'/>">
				    </div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
				      <p><a href="#">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
				</div>
								<div class="row">
				  <div class="card col s12 m24 l3 top_card hoverable">
				    <div class="card-image waves-effect waves-block waves-light">
				      <img src="<c:url value='/resources/img/sk.png'/>">
				    </div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
				      <p><a href="#">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
				  <div class="card col s12 m24 l3 top_card hoverable">
				    <div class="card-image waves-effect waves-block waves-light">
				      <img src="<c:url value='/resources/img/sk.png'/>">
				    </div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
				      <p><a href="#">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
				  <div class="card col s12 m24 l3 top_card hoverable">
				    <div class="card-image waves-effect waves-block waves-light">
				      <img src="<c:url value='/resources/img/sk.png'/>">
				    </div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
				      <p><a href="#">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
				</div>
		</div>
    </div>
    <div id="funding-management" class="col s12 tab-card-info">
   		<div class="card-frame-myInfo z-depth-1">
   				<div class="row">
				  <div class="card col s12 m24 l3 top_card hoverable">
				    <div class="card-image waves-effect waves-block waves-light">
				      <img src="<c:url value='/resources/img/sk.png'/>">
				    </div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
				      <p><a href="#">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
				  <div class="card col s12 m24 l3 top_card hoverable">
				    <div class="card-image waves-effect waves-block waves-light">
				      <img src="<c:url value='/resources/img/sk.png'/>">
				    </div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
				      <p><a href="#">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
				  <div class="card col s12 m24 l3 top_card hoverable">
				    <div class="card-image waves-effect waves-block waves-light">
				      <img src="<c:url value='/resources/img/sk.png'/>">
				    </div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
				      <p><a href="#">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
				</div>
				<div class="row">
				  <div class="card col s12 m24 l3 top_card hoverable">
				    <div class="card-image waves-effect waves-block waves-light">
				      <img src="<c:url value='/resources/img/sk.png'/>">
				    </div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
				      <p><a href="#">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
				  <div class="card col s12 m24 l3 top_card hoverable">
				    <div class="card-image waves-effect waves-block waves-light">
				      <img src="<c:url value='/resources/img/sk.png'/>">
				    </div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
				      <p><a href="#">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
				  <div class="card col s12 m24 l3 top_card hoverable">
				    <div class="card-image waves-effect waves-block waves-light">
				      <img src="<c:url value='/resources/img/sk.png'/>">
				    </div>
				    <div class="card-content">
				      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
				      <p><a href="#">This is a link</a></p>
				    </div>
				    <div class="card-reveal">
				      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
				      <p>Here is some more information about this product that is only revealed once clicked on.</p>
				    </div>
				  </div>
				</div>
				<hr>
				<div class="t-change">
					<h5>현재 보유하고 있는 T</h5>
					<h6>9,999,999T</h6>
					<a class="waves-effect waves-light btn">환전하기</a>
				</div>
				<hr>
		</div>
	</div>
    <div id="author-management" class="col s12 tab-card-info">
   		<div class="card-frame-myInfo z-depth-1 author-management-card">
   			<div class="title-div">
   				<h5>작가 추가 정보 입력</h5>
   			</div>
   			<form>
	   			<div class="row">
		   			<div class="input-infomation-inline col s6">
		   				<div class="input-field account-number-field">
				          <input id="last_name" type="text" class="validate">
				          <label for="last_name">계좌번호</label>
				        </div>
				        <div class="row">
				        	<div class="input-field col s6">
					          <input id="last_name" type="text" class="validate">
					          <label for="last_name">환전 비밀번호</label>
					        </div>
					        <div class="input-field col s6">
					          <input id="last_name" type="text" class="validate">
					          <label for="last_name">환전 비밀번호 확인</label>
					        </div>
				        </div>
		   			</div>
		   			<div class="input-infomation-inline col s6">
		   				<div class="file-field input-field">
					      <div class="btn">
					        <span>File</span>
					        <input type="file">
					      </div>
					      <div class="file-path-wrapper">
					        <input class="file-path validate" type="text">
					      </div>
					    </div>
					    <div class="img-preview">
					    	썸네일 미리보기
					    </div>
		   			</div>
				</div>
			<div class="title-div">
				<button class="btn waves-effect waves-light author-management-uploadbtn" type="submit" name="action">입력 및 수정 완료
			    </button>
			</div>

		  </form>
    	</div>
    </div>
</body>
</html>