package brainburst.tt.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import brainburst.tt.service.AdministratorService;

@Controller
@RequestMapping("admin")
public class AdministratorController {
	
	private AdministratorService administratorService;
	
	@RequestMapping("adminLogin")
	public void adminLogin(String email, String password, HttpSession session){
		administratorService.adminLogin(email, password);
	}
}
