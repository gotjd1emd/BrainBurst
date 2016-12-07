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
		
		System.out.println(viewFolder+"/"+viewName+"�� �̵��մϴ�.");
		return viewFolder+"/"+viewName;
	}
	
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
	 * ��� :
	 * 		�α��ν��н� �������� ���ư�!
	 * 		������ ȸ���������� �̵�!
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