package brainburst.tt.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	@RequestMapping("signedUp")
	public String signUp(UserDTO userDTO){
		if(userService.signUp(userDTO)==1){
			String url="/user/signUp/signedUp";
			return url;
		}
		return "signUpForm";
	}
	
	/**
	 * 회원로그인! 
	 * return 타입 : void
	 * parameter Type : email, password, session
	 * 기능 :
	 * 		로그인실패시 메인으로 돌아감!	==>  "/"
	 * 		성공시 회원메인으로 이동!		==> "main/memberIndex"
	 */
	@RequestMapping("login")
	public String login(UserDTO userDTO, HttpSession session){
		System.out.println("email : "+userDTO.getEmail());
		System.out.println("password : "+userDTO.getPassword());

		userDTO = userService.login(userDTO);
		
		System.out.println(userDTO);
		
		if(userDTO==null){
			return "/"; 
		}
		session.setAttribute("userDTO", userDTO);
		
		System.out.println(session.getAttribute("userDTO"));
		return "main/memberIndex";
	}

	 /* 회원 로그아웃!
	 * */
	@RequestMapping("logout")
	public String logout(HttpServletRequest request){
		request.getSession().invalidate();
		System.out.println("session정보 초기화");
		
		return "/";
	}
	
	/**
	 * 회원탈퇴
	 * return 타입 : String
	 * parameterType : request
	 * */
	@RequestMapping("userDelete")
	public String userDelete(HttpServletRequest request){
		userDTO = (UserDTO)request.getSession().getAttribute("userDTO");
		
		int result = userService.userDelete(userDTO);
		
		if(result==1){
			return "/";
		}
		return "main/memberIndex";
	}
	
	/**
	 * 회원정보수정
	 * return 타입 : void
	 * parameterType : void
	 * */
	@RequestMapping("userUpdate")
	public String userUpdate(UserDTO userDTO, HttpSession session){
		userDTO = userService.userUpdate(userDTO);
		
		session.setAttribute("userDTO", userDTO);

		return "마이페이지";
	}
	
	/**
	 * 추가정보입력
	 * return 타입 : void
	 * parameterType : void
	 * */
	@RequestMapping("userAdditionalInfo")
	public void userAdditionalInfo(){
		
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