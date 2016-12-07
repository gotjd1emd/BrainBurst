package brainburst.tt.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import brainburst.tt.dto.UserDTO;
import brainburst.tt.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private UserService userService;

	private UserDTO userDTO;

	@RequestMapping("{viewFolder}/{viewName}")
	public String signUpMove(
			@PathVariable("viewFolder") String viewFolder, 
			@PathVariable("viewName") String viewName){
		
		System.out.println(viewFolder+"/"+viewName+"로 이동합니다.");
		return viewFolder+"/"+viewName;
	}
	
	/**
	 * 회원가입! 
	 * return 타입 : void
	 * parameter Type : email, password, session
	 */
	@RequestMapping("signUp")
	public String signUp(String email){
		if(userService.signUp(email)==1){
			return "/";
		}
		return "signUpForm";
	}

	
	/**
	 * 회원로그인! 
	 * return 타입 : void
	 * parameter Type : email, password, session
	 * 기능 :
	 * 		로그인실패시 메인으로 돌아감!
	 * 		성공시 회원메인으로 이동!
	 */
	@RequestMapping("login")
	public String login(String email, String password, HttpSession session){
		userDTO.setEmail(email);
		userDTO.setPassword(password);
		
		userDTO = userService.login(userDTO);
		
		if(userDTO==null){
			return "/"; 
		}
		session.setAttribute("userDTO", userDTO);
		return "main/memberIndex";
	}

	 /* 회원 로그아웃!
	 * */
	@RequestMapping("logout")
	public String logout(HttpServletRequest request){
		request.getSession().invalidate();
		return null;

	}
	
	/**
	 * 회원탈퇴
	 * return 타입 : void
	 * parameterType : void
	 * */
	@RequestMapping("userDelete")
	public void userDelete(HttpServletRequest request){
		
	}
	
	/**
	 * 회원정보수정
	 * return 타입 : void
	 * parameterType : void
	 * */
	@RequestMapping("userUpdate")
	public void userUpdate(){
		
	}
	
	/**
	 * 회원구독관리
	 * */
	
	
	/**
	 * 회원 T 내역
	 * */
	
	/**
	 * 회원 T 충전
	 * */
	
	/**
	 * 회원 작가 신청
	 * */
	
	
}