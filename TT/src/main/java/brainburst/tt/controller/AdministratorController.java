package brainburst.tt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import brainburst.tt.dto.FundApplyDTO;
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
	public List<UserDTO> userManage(){
		System.out.println("adminController 왔다!");
		List<UserDTO> userList = administratorService.userManage();
		
		return userList;
	}
	
	@RequestMapping("webtoonManage")
	@ResponseBody
	public List<WebtoonDTO> webtoonManage(){
		System.out.println("webtoonManage 왔다");
		List<WebtoonDTO> webtoonList = administratorService.webtoonManage();
		
		return webtoonList;
	}
	
	@RequestMapping("applyFundManage")
	@ResponseBody
	public List<FundApplyDTO> fundApplyManage(){
		System.out.println("applyFundManage");
		List<FundApplyDTO> fundApplyList = administratorService.fundApplyManage();
		return fundApplyList;
	}
	
	@RequestMapping("userSnow/{email:.+}")
	@ResponseBody
	public String userSnow(
		@PathVariable("email") String email){ 
		String emailT =  email.trim();
		
		int result = administratorService.userSnow(emailT);
		
		return result+"";
	}
	
	@RequestMapping("userMelt/{email:.+}")
	@ResponseBody
	public String userMelt(
		@PathVariable("email") String email){ 
		String emailT =  email.trim();
		
		int result = administratorService.userMelt(emailT);
		
		return result+"";
	}
	
	@RequestMapping("webtoonState")
	@ResponseBody
	public String webtoonState(int webtoonCode, String state){
		int result = administratorService.webtoonState(webtoonCode, state);
		System.out.println(result);
		return "";
	}
	
	@RequestMapping("webtoonLevel")
	@ResponseBody
	public String webtoonLevel(int webtoonCode, String level){
		int result = administratorService.webtoonLevel(webtoonCode, level);
		System.out.println(result);
		return "";
	}
	
	@RequestMapping("userLevel")
	@ResponseBody
	public String userLevel(String email, String level){
		int result = administratorService.userLevel(email, level);
		System.out.println(result);
		return "";
	}
}