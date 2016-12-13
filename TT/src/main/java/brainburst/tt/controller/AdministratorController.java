package brainburst.tt.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
		
		System.out.println(userList);
		return userList;
	}
	
	@RequestMapping("webtoonManage")
	@ResponseBody
	public List<WebtoonDTO> webtoonManage(){
		System.out.println("webtoonManage 왔다");
		List<WebtoonDTO> webtoonList = administratorService.webtoonManage();
		
		System.out.println("webtoonList : "+webtoonList.size());
		return webtoonList;
	}
	
	@RequestMapping("userSnow/{email:.+}")
	@ResponseBody
	public String userSnow(
		@PathVariable("email") String email){ 
		String emailT =  email.trim();
		
		System.out.println(emailT);
		
		int result = administratorService.userSnow(emailT);
		
		return result+"";
	}
	
	@RequestMapping("userMelt/{email:.+}")
	@ResponseBody
	public String userMelt(
		@PathVariable("email") String email){ 
		String emailT =  email.trim();
		
		System.out.println(emailT);
		
		int result = administratorService.userMelt(emailT);
		
		return result+"";
	}
}