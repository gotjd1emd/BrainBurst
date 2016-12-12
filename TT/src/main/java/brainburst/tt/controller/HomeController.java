package brainburst.tt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import brainburst.tt.dto.WebtoonDTO;
import brainburst.tt.service.WebtoonService;

@Controller
public class HomeController {
	@Autowired
	private WebtoonService webtoonService;
	/**
	 * ����ȭ��, Ȩ��ư�� ��������
	 * ī�װ��� ������� �ݵ���������Ʈ�� �ҷ��´�.
	 * ���ۿ��� ī�װ����� 'all'�ϰ�� �������°����θ� �˻�.
	 * @return
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() {
		List<WebtoonDTO> list = webtoonService.selectWebtoonByLevel("�ݵ�", null);
		System.out.println(list);
		return new ModelAndView("main/index", "webtoonList", list);
	}
}
