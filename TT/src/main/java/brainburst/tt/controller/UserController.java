package brainburst.tt.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import brainburst.tt.dto.UserDTO;
import brainburst.tt.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	/**
	 * 회원로그인! 
	 * return 타입 : void
	 * parameter Type : email, password, session
	 */
	@RequestMapping("login")
	@ResponseBody
	public void login(String email, String password, HttpSession session){
		UserDTO userDto = userService.login(email, password);
		session.setAttribute("userDto", userDto);
	}

	/**
	 * 회원가입! 
	 * return 타입 : void
	 * parameter Type : email, password, session
	 */
	@RequestMapping("signUp")
	@ResponseBody
	public void signUp(String email, String password, HttpSession session){
		UserDTO userDto = userService.login(email, password);
		session.setAttribute("userDto", userDto);
	}
	
	/**
	 * 회원탈퇴
	 * return 타입 : void
	 * parameterType : void
	 * */
	@RequestMapping("userDelete")
	public void userDelete(){
		
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