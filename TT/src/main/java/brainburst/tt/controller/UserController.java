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
		
		System.out.println(viewFolder+"/"+viewName+"�� �̵��մϴ�.");
		return viewFolder+"/"+viewName;
	}
	
	/**
	 * ȸ������! 
	 * return Ÿ�� : void
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
	 * ȸ���α���! 
	 * return Ÿ�� : void
	 * parameter Type : email, password, session
	 * ��� :
	 * 		�α��ν��н� �������� ���ư�!	==>  "/"
	 * 		������ ȸ���������� �̵�!		==> "main/memberIndex"
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

	 /* ȸ�� �α׾ƿ�!
	 * */
	@RequestMapping("logout")
	public String logout(HttpServletRequest request){
		request.getSession().invalidate();
		System.out.println("session���� �ʱ�ȭ");
		
		return "/";
	}
	
	/**
	 * ȸ��Ż��
	 * return Ÿ�� : String
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
	 * ȸ����������
	 * return Ÿ�� : void
	 * parameterType : void
	 * */
	@RequestMapping("userUpdate")
	public String userUpdate(UserDTO userDTO, HttpSession session){
		userDTO = userService.userUpdate(userDTO);
		
		session.setAttribute("userDTO", userDTO);

		return "����������";
	}
	
	/**
	 * �߰������Է�
	 * return Ÿ�� : void
	 * parameterType : void
	 * */
	@RequestMapping("userAdditionalInfo")
	public void userAdditionalInfo(){
		
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