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
			String url="signUp/signedUp";
			return url;
		}
		return "signUp/acceptTerms";
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
			return "main/index"; 
		}
		session.setAttribute("userDTO", userDTO);
		
		System.out.println(session.getAttribute("userDTO"));
		return "main/index";
	}

	 /* 회원 로그아웃!
	 * */
	@RequestMapping("logout")
	public String logout(HttpServletRequest request){
		request.getSession().invalidate();
		System.out.println("session정보 초기화");
		
		return "main/index";
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
	public String userUpdate(UserDTO userDTO, HttpSession session, HttpServletRequest request){
		if(userDTO.getPassword()==""||userDTO.getPhone()==""){
			System.out.println("변경값 없으므로 수정 취소");
			return "myInfo/mypage";
		}
		UserDTO userDTO2 = new UserDTO();
		userDTO2 = (UserDTO)request.getSession().getAttribute("userDTO");
		
		userDTO.setEmail(userDTO2.getEmail());

		System.out.println(userDTO);
		
		userDTO = userService.userUpdate(userDTO);
		System.out.println("수정완료.  전화번호 ==> "+userDTO.getPhone());
		
		session.setAttribute("userDTO", userDTO);

		return "myInfo/mypage";
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
	 * 회원 T 충전 + 내역 업데이트
	 * session에서 현재 T값을 가져와서 충전량과 합산
	 * DTO에 저장 후 DB업데이트
	 * session값 update
	 * */
	@RequestMapping("cashCharge")
	public String CashCharge(int tPayment, HttpServletRequest request, HttpSession session) {
		System.out.println("충전 T량 : "+tPayment);
		
		userDTO = (UserDTO)request.getSession().getAttribute("userDTO");
		
		System.out.println(userDTO);
		String email = userDTO.getEmail();
		int cash = userDTO.getCashPoint();
		
		System.out.println(email);
		
		int cashPoint = cash + tPayment;
		
		userDTO.setCashPoint(cashPoint);
		System.out.println("충전후 잔량 : "+cashPoint);
		
		cashHistoryDTO = new CashHistoryDTO();
		cashHistoryDTO.setEmail(email);
		cashHistoryDTO.setCashPoint(tPayment);
		cashHistoryDTO.setContent(tPayment+"T");
		cashHistoryDTO.setTradeState("충전");
		
		System.out.println("cashHistoryDTO 저장완료");
		
		if(userService.CashCharge(userDTO, cashHistoryDTO)==1){
			session.setAttribute("userDTO", userDTO);
			System.out.println(userDTO);
			System.out.println("session 업데이트완료");
		}
		
		return "main/index";
	}
	
	/**
	 * 회원 T 충전
	 * */
	
	/**
	 * 회원 작가 신청
	 * */
	
	
}