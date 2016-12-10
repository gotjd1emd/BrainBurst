package brainburst.tt.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import brainburst.tt.dto.CashHistoryDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private UserService userService;

	private UserDTO userDTO;
	private CashHistoryDTO cashHistoryDTO;

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
			String url="signUp/signedUp";
			return url;
		}
		return "signUp/acceptTerms";
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
			return "main/index"; 
		}
		session.setAttribute("userDTO", userDTO);
		
		System.out.println(session.getAttribute("userDTO"));
		return "main/index";
	}

	 /* ȸ�� �α׾ƿ�!
	 * */
	@RequestMapping("logout")
	public String logout(HttpServletRequest request){
		request.getSession().invalidate();
		System.out.println("session���� �ʱ�ȭ");
		
		return "main/index";
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
	public String userUpdate(UserDTO userDTO, HttpSession session, HttpServletRequest request){
		if(userDTO.getPassword()==""||userDTO.getPhone()==""){
			System.out.println("���氪 �����Ƿ� ���� ���");
			return "myInfo/mypage";
		}
		UserDTO userDTO2 = new UserDTO();
		userDTO2 = (UserDTO)request.getSession().getAttribute("userDTO");
		
		userDTO.setEmail(userDTO2.getEmail());

		System.out.println(userDTO);
		
		userDTO = userService.userUpdate(userDTO);
		System.out.println("�����Ϸ�.  ��ȭ��ȣ ==> "+userDTO.getPhone());
		
		session.setAttribute("userDTO", userDTO);

		return "myInfo/mypage";
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
	 * ȸ�� T ���� + ���� ������Ʈ
	 * session���� ���� T���� �����ͼ� �������� �ջ�
	 * DTO�� ���� �� DB������Ʈ
	 * session�� update
	 * */
	@RequestMapping("cashCharge")
	public String CashCharge(int tPayment, HttpServletRequest request, HttpSession session) {
		System.out.println("���� T�� : "+tPayment);
		
		userDTO = (UserDTO)request.getSession().getAttribute("userDTO");
		
		System.out.println(userDTO);
		String email = userDTO.getEmail();
		int cash = userDTO.getCashPoint();
		
		System.out.println(email);
		
		int cashPoint = cash + tPayment;
		
		userDTO.setCashPoint(cashPoint);
		System.out.println("������ �ܷ� : "+cashPoint);
		
		cashHistoryDTO = new CashHistoryDTO();
		cashHistoryDTO.setEmail(email);
		cashHistoryDTO.setCashPoint(tPayment);
		cashHistoryDTO.setContent(tPayment+"T");
		cashHistoryDTO.setTradeState("����");
		
		System.out.println("cashHistoryDTO ����Ϸ�");
		
		if(userService.CashCharge(userDTO, cashHistoryDTO)==1){
			session.setAttribute("userDTO", userDTO);
			System.out.println(userDTO);
			System.out.println("session ������Ʈ�Ϸ�");
		}
		
		return "main/index";
	}
	
	/**
	 * ȸ�� T ����
	 * */
	
	/**
	 * ȸ�� �۰� ��û
	 * */
	
	
}