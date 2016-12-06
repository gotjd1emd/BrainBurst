package brainburst.tt.controller;

import javax.servlet.http.HttpServletRequest;
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
	private UserDTO userDTO;

	/**
	 * ȸ������! 
	 * return Ÿ�� : void
	 * parameter Type : email, password, session
	 */
	@RequestMapping("signUp")
	@ResponseBody
	public void signUp(String email, String password){
		userDTO.setEmail(email);
		userDTO.setPassword(password);
		
		userService.signUp(userDTO);
	}
	
	/**
	 * ȸ���α���! 
	 * return Ÿ�� : void
	 * parameter Type : email, password, session
	 */
	@RequestMapping("login")
	@ResponseBody
	public void login(String email, String password, HttpSession session){
		userDTO.setEmail(email); 		//UserDTO�� �̸���, ��й�ȣ set
		userDTO.setPassword(password);
		
		userDTO = userService.login(userDTO);
		
		session.setAttribute("userDTO", userDTO);
		System.out.println("UserController���� userDTO�� Session�� ����Ϸ�");
	}

	/**
	 * ȸ������! 
	 * return Ÿ�� : void
	 * parameter Type : email, password, session
	 */
	@RequestMapping("signUp")
	@ResponseBody
	public void signUp(String email, String password, HttpSession session){
		
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