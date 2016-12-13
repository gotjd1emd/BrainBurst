<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<link rel="styleSheet" href="<c:url value='/resources/css/color.css'/>">
	<script type="text/javascript" src="<c:url value='/resources/js/materialize.min.js'/>"></script>
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
		    });
			
			$(".search-btn").click(function(){
				$(".search-nav").css("display", "block");
				$(".search-nav").css("opacity", "1");
				$("#search").val("");
				$("#search").focus();
			})
			$("#search-close-btn").click(function(){
				$('#search-modal').modal('close');
				/* $(".search-nav").css("display", "none");
				$(".search-nav").css("opacity", "0"); */
			})
			$("#search").blur(function () {
				$(".search-nav").css("display", "none");
				$(".search-nav").css("opacity", "0");
			})
			
			$("#search").keypress(function(event) { 
			    if (event.keyCode == 13){
			    	$('#search-modal').modal('open');
			    }    
			});
		})
	</script>
	
	<nav class="search-nav">
	    <div class="nav-wrapper">
	      <form onsubmit="return false;" method="post">
	        <div class="input-field">
	          <input id="search" type="search" required>
	          <label for="search"><i class="material-icons">search</i></label>
	          <i id="search-close-btn" class="material-icons">close</i>
	        </div>
	      </form>
	    </div>
	</nav>
	<nav class="header-box">
	    <div class="nav-wrapper z-depth-2 color-500">
	      <a href="<c:url value='/'/>" class="brand-logo center">T T</a>
	      <a href="#" data-activates="slide-out" id="menu_nav" class="button-collapse"><i class="material-icons">menu</i></a>
	      <a href="#" class="button-collapse right"><i class="material-icons search-btn">search</i></a>
	      <ul id="nav-mobile" class="right hide-on-med-and-down">
	        <li><a href="<c:url value='/webtoon/funding/all'/>">펀딩웹툰</a></li>
	        <li><a href="<c:url value='/webtoon/free/all'/>">일반웹툰</a></li>
	        <li><a href="<c:url value='/webtoon/paid/all'/>">완결웹툰</a></li>
	        <li><i class="material-icons icon_search search-btn">search</i></li>
	      </ul>
	    </div>
 	 </nav>
  <div id="search-modal" class="modal bottom-sheet" style="top:auto !important">
    <div class="modal-content">
      <h4>Modal Header</h4>
      <p>A bunch of text</p>
    </div>
    <div class="modal-footer">
      <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
    </div>
  </div>
<!-- <div id="category_mobile" class="bubble z-depth-3">내용</div> -->
