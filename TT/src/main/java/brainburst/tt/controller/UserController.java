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
	 * ȸ���α���! 
	 * return Ÿ�� : void
	 * parameter Type : email, password, session
	 */
	@RequestMapping("login")
	@ResponseBody
	public void login(String email, String password, HttpSession session){
		UserDTO userDto = userService.login(email, password);
		session.setAttribute("userDto", userDto);
	}

	/**
	 * ȸ������! 
	 * return Ÿ�� : void
	 * parameter Type : email, password, session
	 */
	@RequestMapping("signUp")
	@ResponseBody
	public void signUp(String email, String password, HttpSession session){
		UserDTO userDto = userService.login(email, password);
		session.setAttribute("userDto", userDto);
	}
	
	/**
	 * ȸ��Ż��
	 * return Ÿ�� : void
	 * parameterType : void
	 * */
	@RequestMapping("userDelete")
	public void userDelete(){
		
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