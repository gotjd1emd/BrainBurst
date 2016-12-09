<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUTF-8">
	<script src="<c:url value='/resources/js/jquery.bxslider.js'/>"></script>
	<title>Insert title here</title>
	<style>
	</style>
	<script>
		$(function () {
			  $('.modal').modal({
			      dismissible: true, // Modal can be dismissed by clicking outside of the modal
			      opacity: .5, // Opacity of modal background
			      in_duration: 300, // Transition in duration
			      out_duration: 200, // Transition out duration
			      starting_top: '4%', // Starting top style attribute
			      ending_top: '10%', // Ending top style attribute
			      ready: function(modal, trigger) { // Callback for Modal open. Modal and trigger parameters available.
			        console.log(modal, trigger);
			      },
			      complete: function() { console.log('Closed'); } // Callback for Modal close
			    }
			  );
			  $('select').material_select();
		})
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
      
      <!-- 플로팅 버튼 -->
	  <div class="fixed-action-btn horizontal click-to-toggle">
	    <a class="btn-floating btn-large red publish-webtoon-floating">
	      <i class="material-icons first-icon">menu</i>
	    </a>
	    <ul>
	      <!-- 펀딩 웹툰 신청 플로팅 버튼 -->
	      <li><a id="funding-webtoon-floating-btn" class="btn-floating green mini-floating tooltipped" data-position="top" data-delay="50" data-tooltip="펀딩 웹툰 신청" href="#funding-webtoon-modal"><i class="material-icons">data_usage</i></a></li>
	      
	      <!-- 웹툰 상태 처리 플로팅 버튼 -->
	      <li><a class="btn-floating yellow darken-1 mini-floating tooltipped"  data-position="top" data-delay="50" data-tooltip="웹툰 상태 처리" href="#webtoon-state-modal"><i class="material-icons">priority_high</i></a></li>
	      <!-- 웹툰 등록 플로팅 버튼 -->
	      <li><a class="btn-floating red mini-floating tooltipped"  data-position="top" data-delay="50" data-tooltip="웹툰 등록" href="#"><i class="material-icons">publish</i></a></li>
	    </ul>
	  </div><!-- floating button div tag close -->
	  
		<div class="card-frame-myInfo z-depth-1">
				  
				    <!-- Modal Structure -->
				  <div id="funding-webtoon-modal" class="modal">
				    <div class="modal-content modal-content-funding">
				      <div style="text-align: center;"><h5>펀딩 신청 관리</h5></div>
				      
					  <div class="input-field col s12">
					    <select>
					      <option value="" disabled selected>웹툰 선택</option>
					      <option value="1">졸라맨의 모험</option>
					      <option value="2">마음의 소리</option>
					      <option value="3">썸툰</option>
					    </select>
					    <label>펀딩 신청할 웹툰 선택</label>
					  </div>
					  <div class="input-field col s12">
					    <select>
					      <option value="" disabled selected>기간 선택</option>
					      <option value="1">1주</option>
					      <option value="2">2주</option>
					    </select>
					    <label>펀딩중 연재할 기간 선택</label>
					  </div>
					  <div class="webtoon-score">"웹툰 이름"작품의 점수 : 99점</div>
					  <div class="webtoon-score-description">
					  - 80점 이상만 신청 가능합니다<br>
					  - 작가의 추가정보를 입력해주세요.(펀딩을 위한 계좌번호 등등..)
					  </div>
					  
				    </div>
				    <div class="modal-footer">
				      <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">취소</a>
				      <button class="modal-action modal-close waves-effect waves-green btn-flat" type="submit" name="action">신청</button>
				    </div>
				  </div>
				  
				  <!-- Modal Structure -->
				  <div id="webtoon-state-modal" class="modal">
				    <div class="modal-content modal-content-funding">
				      <div style="text-align: center;"><h5>웹툰 상태 처리</h5></div>
				      
					  <div class="input-field col s12">
					    <select>
					      <option value="" disabled selected>웹툰 선택</option>
					      <option value="1">졸라맨의 모험</option>
					      <option value="2">마음의 소리</option>
					      <option value="3">썸툰</option>
					    </select>
					    <label>펀딩 신청할 웹툰 선택</label>
					  </div>
					  <div class="input-field col s12">
					    <select>
					      <option value="" disabled selected>상태 선택</option>
					      <option value="1">연재</option>
					      <option value="1">휴재</option>
					      <option value="2">완결</option>
					      <option value="2">블라인드</option>
					    </select>
					    <label>펀딩중 연재할 기간 선택</label>
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
				    <a class="btn-floating red publish-webtoon-floating tooltipped" data-position="top" data-delay="50" data-tooltip="유료화 신청" href="#paid-webtoon-modal"><i class="material-icons first-icon">attach_money</i></a>
				</div>
    			
    			
    			  <!-- Modal Structure -->
				  <div id="paid-webtoon-modal" class="modal">
				    <div class="modal-content modal-content-funding">
				      <div style="text-align: center;"><h5>유료화 신청</h5></div>
				      
					  <div class="input-field col s12">
					    <select>
					      <option value="" disabled selected>웹툰 선택</option>
					      <option value="1">졸라맨의 모험</option>
					      <option value="2">마음의 소리</option>
					      <option value="3">썸툰</option>
					    </select>
					    <label>유료화 신청할 펀딩웹툰 선택</label>
					  </div>
					  <div class="paid-webtoon-description">
					  	<p>펀딩으로 완결된 웹툰만 가능합니다.</p>
					  	<p>유료화 신청이 완료되면 사이트 내 관리자가 몇일 내로 전화드립니다.</p>
					  	<p>오전 10시 ~ 오후 6시</p>
					  </div>
					  
				    </div>
				    <div class="modal-footer">
				      <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">취소</a>
				      <button class="modal-action modal-close waves-effect waves-green btn-flat" type="submit" name="action">신청</button>
				    </div>
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
    </div>
</body>
</html>