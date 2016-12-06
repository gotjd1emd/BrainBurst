package brainburst.tt.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import brainburst.tt.service.AdministratorService;

@Controller
public class AdministratorController {
	
	@Autowired
	private AdministratorService administratorService;
	
	
	/*@RequestMapping("payWebtoonApplication")
	ModelAndView searchForPayWebtoonList(){
		
		
		return  null;
	}*/
	
/*	@RequestMapping("adminLogin")
	ModelAndView adminLogin(String email,String password,HttpSession session){
		
		administratorService.adminLogin(email, password);
		
		return null;
	}*/
	
	
	
}
