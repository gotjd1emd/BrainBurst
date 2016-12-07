package brainburst.tt.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import brainburst.tt.dto.UserDTO;
import brainburst.tt.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;

	private UserDTO userDTO;

	/**
	 * ȸ������! 
	 * return Ÿ�� : void
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
	 * ȸ���α���! 
	 * return Ÿ�� : void
	 * parameter Type : email, password, session
	 */
	@RequestMapping("login")
	public void login(String email, String password, HttpSession session){
		
	}

	 /* ȸ�� �α׾ƿ�!
	 * */
	@RequestMapping("logout")
	public String logout(HttpServletRequest request){
		request.getSession().invalidate();
		return null;

	}
	
	/**
	 * ȸ��Ż��
	 * return Ÿ�� : void
	 * parameterType : void
	 * */
	@RequestMapping("userDelete")
	public void userDelete(HttpServletRequest request){
		
	}
	
	/**
	 * ȸ����������
	 * return Ÿ�� : void
	 * parameterType : void
	 * */
	@RequestMapping("userUpdate")
	public void userUpdate(){
		
	}
	
	/**
	 * ȸ����������
	 * */
	
	
	/**
	 * ȸ�� T ����
	 * */
	
	/**
	 * ȸ�� T ����
	 * */
	
	/**
	 * ȸ�� �۰� ��û
	 * */
	
	
}