package brainburst.tt.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.WebtoonDTO;
import brainburst.tt.service.FundService;

@Controller
@RequestMapping("Fund")
public class FundController {
	
	private FundService fundService;
	/**
	작가페이지의 펀딩웹툰탭 클릭할 때, 펀딩상태의 웹툰 목록, 
	각웹툰에피소드의 펀딩관련 정보를 가지고 이동,
	 */
	@RequestMapping("fundPage")
	public ModelAndView fundPage(HttpServletRequest request, String nickname) {
		List<WebtoonDTO> list = fundService.fundPage(nickname);
		return new ModelAndView("fund/fundPage", "webtoonList", list);
	}
	
	/**
	펀딩웹툰탭의 작품을 눌렀을때,
	해당 작품의 에피소드목록과 에피소드마다 펀딩정도를 가지고 하단에 비동기화통신으로 뿌려줌
	*/
	@RequestMapping("{webtoonCode}")
	public List<EpisodeDTO> showEpisodes(@PathVariable("webtoonCode") String webtoonCode) {
		List<EpisodeDTO> list = null;
		return list;
	}
	
	/**
	펀딩활성화(펀딩모집시작)기능
	보류...생각좀해보자
	*/
	@RequestMapping("startfund")
	public void startfund() {
		
	}
	
	/**
	펀딩진행중인 웹툰클릭시 나오는 다이알로그에서 펀딩신청시
	@price : 입력된 펀딩금액
	*/
	@RequestMapping()
	public void joinfund(int price) {
		String email = null;
		
	}
}
