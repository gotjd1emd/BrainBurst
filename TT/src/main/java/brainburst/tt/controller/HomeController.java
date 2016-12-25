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
	 * ����ȭ��, Ȩ��ư�� ��������
	 * ī�װ��� ������� �ݵ���������Ʈ�� �ҷ��´�.
	 * ���ۿ��� ī�װ����� 'null'�ϰ�� �������°����θ� �˻�.
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
