<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="styleSheet" href="<c:url value='/resources/css/color.css'/>">
<link rel="styleSheet" href="<c:url value='/resources/css/jquery.mCustomScrollbar.css'/>">
<script type="text/javascript" src="<c:url value='/resources/js/materialize.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/js/jquery.mCustomScrollbar.concat.min.js'/>"></script>

<script>
    (function($){
        $(window).on("load",function(){
            $(".content").mCustomScrollbar();
        });
    })(jQuery);
</script>

<script>
      $(document).ready(function () {
         if($("#header-title").val()=='웹툰'){
            var link =  document.location.href;
            console.log(link);
            if(link=='http://localhost:8000/controller/' || link=="http://localhost:8000/controller/webtoon/funding/all"){
               $(".brand-logo").html("펀딩 웹툰");
            }else if(link=="http://localhost:8000/controller/webtoon/free/all"){
               $(".brand-logo").html("일반 웹툰");
            }else if(link=="http://localhost:8000/controller/webtoon/paid/all"){
               $(".brand-logo").html("완결 웹툰");
            }else{
               $(".brand-logo").html("펀딩 웹툰");
            }
         }else{
            $(".brand-logo").html($("#header-title").val());
         }
      })
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
            $(".search-nav").css("display", "none");
            $(".search-nav").css("opacity", "0");
            $('#search-modal').modal('close');
            /* $(".search-nav").css("display", "none");
            $(".search-nav").css("opacity", "0"); */
         })
         
         $('#search-modal').modal({
               ready: function(modal, trigger) { // Callback for Modal open. Modal and trigger parameters available.
               },
               complete: function() {
                  $(".search-nav").css("display", "none");
                 $(".search-nav").css("opacity", "0");
               } // Callback for Modal close
             }
           );
         
         $("#search").keypress(function(event) { 
             if (event.keyCode == 13){
                $('#search-modal').modal('open');
                $(".search-ward").html($("#search").val());
                $.ajax({
                  url : "/controller/webtoon/search/"+$("#search").val(),
                  type : "post",
                  dataType : "json",
                  success : function(result) {
                     $(".collection").empty();
                     var num = 1;
                     $.each(result, function(index, item) {
                        var htmlcode = "";
                        htmlcode +="<a class='collection-item avatar search-collection-item' href='#'>"
                        htmlcode +="<img src='<c:url value='/resources"+item.webtoonThumbnail+"'/>' alt='' class='circle' name="+item.webtoonCode+">"
                        htmlcode +="<span class='text-color-500'>"+item.webtoonName+"</span>"
                        htmlcode +="<p class='text-color-400'>"+item.nickname+"</p>"
                        htmlcode +="<span href='#!' class='secondary-content text-color-500'><i class='material-icons'>grade</i></span></a>"
                        $(".collection").append(htmlcode); 
                        num++;
                     });
                  },
                  error : function(err) {
                     alert("검색기능오류")
                  }
               })
             }    
         });
         $(document).on("click", ".search-collection-item", function(){
            $(location).attr('href',"/controller/webtoon/webtoonPage/"+$(this).find("img").attr("name"));
         })
         $(document).on("click", "#gowebtoon", function(){
            $(location).attr('href',"/controller/webtoon/webtoonPage/"+$(this).attr("name"));
         })
      })
   </script>

<nav class="search-nav">
   <div class="nav-wrapper">
      <form onsubmit="return false;" method="post">
         <div class="input-field">
            <input id="search" type="search" required  autocomplete="off">
            <label for="search"> <i class="material-icons">search</i> </label>
            <i id="search-close-btn" class="material-icons">close</i>
         </div>
      </form>
   </div>
</nav>
<nav class="header-box">
   <div class="nav-wrapper z-depth-3 color-500">
      <a href="<c:url value='/'/>" class="brand-logo center tooltipped" style="font-size: 20px;font-weight: 700;" data-position="bottom" data-delay="50" data-tooltip="웹툰 페이지 바로가기"></a>
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
<div id="search-modal" class="modal bottom-sheet"
   style="top: auto !important">
   <div class="modal-content search-modal-content">
      <h4 class="search-ward">검색어</h4>
      <div class="collection">
         <a class="collection-item avatar search-collection-item" href="#">
            <img src="<c:url value='/resources${webtoonDTO.webtoonThumbnail}'/>" alt="" class="circle">
            <span>Title</span>
            <p> First Line</p>
            <span href="#!" class="secondary-content"><i class="material-icons">grade</i></span>
         </a>
      </div>
   </div>
</div>
<!-- <div id="category_mobile" class="bubble z-depth-3">내용</div> -->