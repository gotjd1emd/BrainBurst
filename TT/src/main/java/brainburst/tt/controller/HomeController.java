package brainburst.tt.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String home(HttpSession session) {
		List<WebtoonDTO> list = webtoonService.selectWebtoonByLevel("fund", null);
		session.setAttribute("webtoonList", list);
		return "main/index";
	}
}
