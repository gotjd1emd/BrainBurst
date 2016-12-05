<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <ul id="slide-out" class="side-nav fixed z-depth-2">
    
      <div id="box_snb">
      	<h5 class="title center">로그인</h5>
      	<form>
        <div class="login_form">
	        <div class="input-field col">
	          <input id="id_login" type="text" class="validate">
	          <label for="id_login">ID</label>
	        </div>
	        <div class="input-field col">
	          <input id="pwd_login" type="password" class="validate">
	          <label for="pwd_login">Password</label>
	        </div>
	      </div><!-- login_form exit -->
	      <div class="row">
	       		<button class="snbtn waves-effect waves-light col s6" type="submit" name="action">로그인</button>
	       		<button class="snbtn waves-effect waves-light col s6" type="submit" name="action">회원가입</button>
	      </div>
	    </form>  
      </div><!-- box_snd exit -->
      <li><a href="#!">First Sidebar Link</a></li>
      <li><a href="#!">Second Sidebar Link</a></li>
    </ul>
    <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>
    