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
	 * 메인화면, 홈버튼을 눌렀을때
	 * 카테고리에 상관없이 펀딩웹툰리스트를 불러온다.
	 * 맵퍼에서 카테고리값이 'all'일경우 웹툰상태값으로만 검색.
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
