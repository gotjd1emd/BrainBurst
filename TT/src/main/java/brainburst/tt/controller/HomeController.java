package brainburst.tt.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;
import brainburst.tt.service.WebtoonService;

@Controller
public class HomeController {
	@Autowired
	private WebtoonService webtoonService;
	/**
	 * 메인화면, 홈버튼을 눌렀을때
	 * 카테고리에 상관없이 펀딩웹툰리스트를 불러온다.
	 * 맵퍼에서 카테고리값이 'null'일경우 웹툰상태값으로만 검색.
	 * @return
	 */
	@RequestMapping("/")
	public String noneHome(HttpSession session) {
		UserDTO userDTO = (UserDTO) session.getAttribute("userDTO");
		String email = null;
		if (userDTO!=null) {
			email = userDTO.getEmail();
		}
		List<WebtoonDTO> list = webtoonService.selectWebtoonByLevel("funding", null, email);
		session.setAttribute("webtoonList", list);
		return "main/index";
	}
}
