package brainburst.tt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import brainburst.tt.dto.EpisodeDTO;
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
		List<String> list = webtoonService.selectImg(1);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("main/index");
		modelAndView.addObject("image", list);
		modelAndView.addObject("episodeSequence", 1);
		System.out.println(list);
		return modelAndView;
	}
}
