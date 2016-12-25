package brainburst.tt.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import brainburst.tt.dto.FundApplyDTO;
import brainburst.tt.dto.ReportDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;
import brainburst.tt.service.AdministratorService;

@Controller
@RequestMapping("admin")
public class AdministratorController {
	
	@Autowired
	private AdministratorService administratorService;
	
	@RequestMapping("userManage")
	@ResponseBody
	public List<UserDTO> userManage(HttpServletRequest request){
		System.out.println("adminController 왔다!");
		List<UserDTO> userList = administratorService.userManage();
		
		return userList;
	}
	
	@RequestMapping("webtoonManage")
	@ResponseBody
	public List<WebtoonDTO> webtoonManage(HttpServletRequest request){
		System.out.println("webtoonManage 왔다");
		List<WebtoonDTO> webtoonList = administratorService.webtoonManage();
		
		return webtoonList;
	}
	
	@RequestMapping("applyFundManage")
	@ResponseBody
	public List<FundApplyDTO> fundApplyManage(HttpServletRequest request){
		System.out.println("applyFundManage");
		List<FundApplyDTO> fundApplyList = administratorService.fundApplyManage();
		return fundApplyList;
	}
	
	@RequestMapping("reportManage")
	@ResponseBody
	public List<ReportDTO> reportManage(HttpServletRequest request){
		System.out.println("reportManage");
		List<ReportDTO> reportList = administratorService.reportManage();
		return reportList;
	}
	
	@RequestMapping("userSnow/{email:.+}")
	@ResponseBody
	public String userSnow(HttpServletRequest request,
		@PathVariable("email") String email){ 
		String emailT =  email.trim();
		
		int result = administratorService.userSnow(emailT);
		
		return result+"";
	}
	
	@RequestMapping("userMelt/{email:.+}")
	@ResponseBody
	public String userMelt(HttpServletRequest request,
		@PathVariable("email") String email){ 
		String emailT =  email.trim();
		
		int result = administratorService.userMelt(emailT);
		
		return result+"";
	}
	
	@RequestMapping("webtoonState")
	@ResponseBody
	public String webtoonState(HttpServletRequest request, int webtoonCode, String state){
		int result = administratorService.webtoonState(webtoonCode, state);
		System.out.println(result);
		return "";
	}
	
	@RequestMapping("webtoonLevel")
	@ResponseBody
	public String webtoonLevel(HttpServletRequest request, int webtoonCode, String level){
		int result = administratorService.webtoonLevel(webtoonCode, level);
		System.out.println(result);
		return "";
	}
	
	@RequestMapping("userLevel")
	@ResponseBody
	public String userLevel(HttpServletRequest request, String email, String level){
		int result = administratorService.userLevel(email, level);
		System.out.println(result);
		return "";
	}
	
	@RequestMapping("applyDelete")
	@ResponseBody
	public String applyDelete(HttpServletRequest request, int webtoonCode){
		int result = administratorService.applyDelete(webtoonCode);
		System.out.println(result);
		return "";
	}
	
	@RequestMapping("reportDelete")
	@ResponseBody
	public String reportDelete(HttpServletRequest request, int reportSequence){
		int result = administratorService.reportDelete(reportSequence);
		System.out.println(result);
		return "";
	}
	
	@RequestMapping("account")
	@ResponseBody
	public Map<String, Object> account(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<Integer> userCount = administratorService.userCount();
		map.put("userCount", userCount);
		return map;
	}
}