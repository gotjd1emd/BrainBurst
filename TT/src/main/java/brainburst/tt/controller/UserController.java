package brainburst.tt.controller;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.experimental.theories.ParametersSuppliedBy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import brainburst.tt.dto.AdditionalInfoDTO;
import brainburst.tt.dto.CashHistoryDTO;
import brainburst.tt.dto.FundApplyDTO;
import brainburst.tt.dto.PaidApplyDTO;
import brainburst.tt.dto.ReportDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;
import brainburst.tt.service.UserService;
import brainburst.tt.service.WebtoonService;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private WebtoonService webtoonService;

	private UserDTO userDTO;
	private CashHistoryDTO cashHistoryDTO;

	@RequestMapping("{viewFolder}/{viewName}")
	public String signUpMove(
			@PathVariable("viewFolder") String viewFolder, 
			@PathVariable("viewName") String viewName){
		
		System.out.println(viewFolder+"/"+viewName+"로 이동합니다.");
		return viewFolder+"/"+viewName;
	}
	
	
	@RequestMapping("{viewFolder}/{viewName}/{fileName}")
	public String signUpMove(
			@PathVariable("viewFolder") String viewFolder, 
			@PathVariable("viewName") String viewName,
			@PathVariable("fileName") String fileName){
		
		System.out.println(viewFolder+"/"+viewName+"로 이동합니다.");
		return viewFolder+"/"+viewName+"/"+fileName;
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
	public String login(HttpServletRequest request, UserDTO userDTO){
		System.out.println("email : "+userDTO.getEmail());
		System.out.println("password : "+userDTO.getPassword());

		HttpSession session = request.getSession();
		userDTO = userService.login(userDTO);
		
		System.out.println(userDTO);
		
		if(userDTO==null){
			request.setAttribute("login", "fail");
			return "forward:/"; //추후 익셉션 로그인 오류 페이지
		}else if(userDTO.getLevel().equals("휴먼")){
			return "main/index"; //추후 익셉션
		}
		session.setAttribute("userDTO", userDTO);
		
		System.out.println(session.getAttribute("userDTO"));
		
		System.out.println("찾을 이메일 : "+userDTO.getEmail());
		List<WebtoonDTO> list = webtoonService.selectWebtoonByLevel("funding", null, userDTO.getEmail());
		session.setAttribute("webtoonList", list);
		List<WebtoonDTO> subScriptionList = userService.showListSubscription(userDTO.getEmail());
		session.setAttribute("subScriptionList", subScriptionList);
		
		System.out.println(subScriptionList);
		
		return "main/index";
	}

	 /** 
	  * 회원 로그아웃!
	  * */
	@RequestMapping("logout")
	public String logout(HttpServletRequest request){
		request.getSession().removeAttribute("userDTO");
		System.out.println("session정보, userDTO 초기화");
		List<WebtoonDTO> list = webtoonService.selectWebtoonByLevel("funding", null, null);
		request.getSession().setAttribute("webtoonList", list);
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
	 * 회원 T 내역 조회
	 * */
	@RequestMapping("THistoryList")
	@ResponseBody
	public List<CashHistoryDTO> THistoryList(HttpServletRequest request){
		userDTO = (UserDTO)request.getSession().getAttribute("userDTO");
		List<CashHistoryDTO> historyList = userService.showListCashHistory(userDTO.getEmail());
		System.out.println("THistoryList method from UserController");

		return historyList;
	}

	/**
	 * 이메일 ( 아이디 ) 찾기
	 * */
	@RequestMapping("findEmail")
	@ResponseBody
	public String findEmail(UserDTO userDTO){
		System.out.println("findEmail 컨트롤로 이동");
		System.out.println(userDTO);
		String email = userService.findEmail(userDTO);
		System.out.println(email);
		return email;
	}
	
	/**
	 * 비밀번호 찾기
	 * */
	@RequestMapping("findPassword")
	@ResponseBody
	public String findPassword(UserDTO userDTO){
		System.out.println("findEmail 컨트롤로 이동");
		System.out.println(userDTO);
		String email = userService.findPassword(userDTO);
		System.out.println(email);
		return email;
	}

	
	/**
	 * 회원 작가 신청
	 * */
	
	
	/**
	 * 이메일 중복 체크
	 * */
	@RequestMapping("emailCheck/{email:.+}")
	@ResponseBody
	public String emailCheck(@PathVariable("email") String email){
		int check = userService.emailCheck(email);
		return check+"";
	}
	
	/**
	 * 닉네임 중복 체크
	 * */
	@RequestMapping("nickNameCheck/{nickname}")
	@ResponseBody
	public String nickNameCheck(@PathVariable("nickname") String nickname){
		int check = userService.nickNameCheck(nickname);
		return check+"";
	}
	
	/**
	 * 펀딩 신청
	 * */
	@RequestMapping("fundApply")
	@ResponseBody
	public String fundApply(HttpServletRequest request, int webtoonCode){
		int score = 80;
		HttpSession session = request.getSession();
		UserDTO userDTO = (UserDTO) session.getAttribute("userDTO");
		FundApplyDTO fundApplyDTO = new FundApplyDTO(userDTO.getEmail(), webtoonCode, score);
		userService.fundApply(fundApplyDTO);
		return webtoonCode+"";
	}
	
	/**
	 * 신고
	 * */
	@RequestMapping("report")
	@ResponseBody
	public String report(HttpServletRequest request, int webtoonCode, String content, int episodeSequence){
		HttpSession session = request.getSession();
		UserDTO userDTO = (UserDTO) session.getAttribute("userDTO");
		ReportDTO reportDTO = new ReportDTO(content, userDTO.getEmail(), webtoonCode, episodeSequence);
		userService.report(reportDTO);
		return "";
	}
	
	/**
	 * 유료화 신청
	 * */
	@RequestMapping("paidApply")
	@ResponseBody
	public String paidApply(HttpServletRequest request, int webtoonCode){
		System.out.println("paid");
		HttpSession session = request.getSession();
		UserDTO userDTO = (UserDTO) session.getAttribute("userDTO");
		PaidApplyDTO paidApplyDTO = new PaidApplyDTO(userDTO.getEmail(), webtoonCode);
		userService.paidApply(paidApplyDTO);
		return "";
	}
}