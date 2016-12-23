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
		
		System.out.println(viewFolder+"/"+viewName+"�� �̵��մϴ�.");
		return viewFolder+"/"+viewName;
	}
	
	
	@RequestMapping("{viewFolder}/{viewName}/{fileName}")
	public String signUpMove(
			@PathVariable("viewFolder") String viewFolder, 
			@PathVariable("viewName") String viewName,
			@PathVariable("fileName") String fileName){
		
		System.out.println(viewFolder+"/"+viewName+"�� �̵��մϴ�.");
		return viewFolder+"/"+viewName+"/"+fileName;
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
	public String login(HttpServletRequest request, UserDTO userDTO){
		System.out.println("email : "+userDTO.getEmail());
		System.out.println("password : "+userDTO.getPassword());

		HttpSession session = request.getSession();
		userDTO = userService.login(userDTO);
		
		System.out.println(userDTO);
		
		if(userDTO==null){
			request.setAttribute("login", "fail");
			return "forward:/"; //���� �ͼ��� �α��� ���� ������
		}else if(userDTO.getLevel().equals("�޸�")){
			return "main/index"; //���� �ͼ���
		}
		session.setAttribute("userDTO", userDTO);
		
		System.out.println(session.getAttribute("userDTO"));
		
		System.out.println("ã�� �̸��� : "+userDTO.getEmail());
		List<WebtoonDTO> list = webtoonService.selectWebtoonByLevel("funding", null, userDTO.getEmail());
		session.setAttribute("webtoonList", list);
		List<WebtoonDTO> subScriptionList = userService.showListSubscription(userDTO.getEmail());
		session.setAttribute("subScriptionList", subScriptionList);
		
		System.out.println(subScriptionList);
		
		return "main/index";
	}

	 /** 
	  * ȸ�� �α׾ƿ�!
	  * */
	@RequestMapping("logout")
	public String logout(HttpServletRequest request){
		request.getSession().removeAttribute("userDTO");
		System.out.println("session����, userDTO �ʱ�ȭ");
		List<WebtoonDTO> list = webtoonService.selectWebtoonByLevel("funding", null, null);
		request.getSession().setAttribute("webtoonList", list);
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
	 * ȸ�� T ���� ��ȸ
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
	 * �̸��� ( ���̵� ) ã��
	 * */
	@RequestMapping("findEmail")
	@ResponseBody
	public String findEmail(UserDTO userDTO){
		System.out.println("findEmail ��Ʈ�ѷ� �̵�");
		System.out.println(userDTO);
		String email = userService.findEmail(userDTO);
		System.out.println(email);
		return email;
	}
	
	/**
	 * ��й�ȣ ã��
	 * */
	@RequestMapping("findPassword")
	@ResponseBody
	public String findPassword(UserDTO userDTO){
		System.out.println("findEmail ��Ʈ�ѷ� �̵�");
		System.out.println(userDTO);
		String email = userService.findPassword(userDTO);
		System.out.println(email);
		return email;
	}

	
	/**
	 * ȸ�� �۰� ��û
	 * */
	
	
	/**
	 * �̸��� �ߺ� üũ
	 * */
	@RequestMapping("emailCheck/{email:.+}")
	@ResponseBody
	public String emailCheck(@PathVariable("email") String email){
		int check = userService.emailCheck(email);
		return check+"";
	}
	
	/**
	 * �г��� �ߺ� üũ
	 * */
	@RequestMapping("nickNameCheck/{nickname}")
	@ResponseBody
	public String nickNameCheck(@PathVariable("nickname") String nickname){
		int check = userService.nickNameCheck(nickname);
		return check+"";
	}
	
	/**
	 * �ݵ� ��û
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
	 * �Ű�
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
	 * ����ȭ ��û
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