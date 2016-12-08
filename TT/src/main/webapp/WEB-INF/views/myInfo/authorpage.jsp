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
    $(document).ready(function() {

        var $item = $('div.item'), //Cache your DOM selector

        visible = 4, //Set the number of items that will be visible

        index = 0, //Starting index

        endIndex = ($item.length / visible) - 1; //End index



        $('div#arrowR').click(function() {

            debugger;

            if (index < endIndex) {

                index++;

                $item.animate({ 'left': '-=600px' });//Set width of your div here

            }

        });



        $('div#arrowL').click(function() {

            if (index > 0) {

                index--;

                $item.animate({ 'left': '+=600px' });//Set width of your div here

            }

        });

    });        
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
   			 <div style="width: 100%; height: auto;" align="center">
		        <div style="width: 960px; height: auto;">
		            <h1 style="color: grey;">
		                Horizontal Slider
		            </h1>
		            <h2 style="color: grey;">
		                (Slide When Left and Right button click)</h2>
		            <div id="container">
		                <div id="arrowL">
		                    <
		                </div>
		                <div id="arrowR">
		                    >
		                </div>
		                <div id="list-container">
		                    <div class='list'>
		                        <div class='item'>
		                            1
		                        </div>
		                        <div class='item'>
		                            2
		                        </div>
		                        <div class='item'>
		                            3
		                        </div>
		                        <div class="item">
		                            4
		                        </div>
		                        <div class='item' style="background: blue;">
		                            5
		                        </div>
		                        <div class='item' style="background: blue;">
		                            6
		                        </div>
		                        <div class='item' style="background: blue;">
		                            7
		                        </div>
		                        <div class="item" style="background: blue;">
		                            8
		                        </div>
		                        <div class="item" style="background: green;">
		                            9
		                        </div>
		                        <div class="item" style="background: green;">
		                            10
		                        </div>
		                        <div class="item" style="background: green;">
		                            11
		                        </div>
		                        <div class="item" style="background: green;">
		                            12
		                        </div>
		                        <div class="item" style="background: pink;">
		                            13
		                        </div>
		                        <div class="item" style="background: pink;">
		                            14
		                        </div>
		                        <div class="item" style="background: pink;">
		                            15
		                        </div>
		                        <div class="item" style="background: pink;">
		                            16
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
    </div>
    <div id="author-management" class="col s12 tab-card-info">
   		<div class="card-frame-myInfo z-depth-1">
		</div>
    </div>
  </div>
</body>
</html>