package brainburst.tt.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;
import brainburst.tt.service.WebtoonService;

@Controller
@RequestMapping("webtoon")
public class WebtoonController {
	@Autowired
	private WebtoonService webtoonService;
	
	/**
	 * 메인페이지이동
	 */
	@RequestMapping("/")
	public ModelAndView mainPage() {
		List<WebtoonDTO> list = webtoonService.selectWebtoonByLevel("pund", "all");
		return new ModelAndView("main/index", "webtoonList", list);
	}

	/**
	 * 카테고리별 이동
	 * @param webtoonLevel 웹툰등급(일반, 펀딩, 유료)
	 * @param category 카테고리
	 * @return 검색된 결과 
	 */
	@RequestMapping("{webtoonLevel}/{category}")
	public ModelAndView concludedWebtoonByCategory(
			@PathVariable("webtoonLevel") String webtoonLevel, 
			@PathVariable("category") String category) {
		List<WebtoonDTO> list = webtoonService.selectWebtoonByLevel(webtoonLevel, category);
		return new ModelAndView("main/index", "webtoonList", list);
	}
	
	/**
	 * 검색
	 * @param keyword 검색어
	 * @return 검색된 결과
	 */
	@RequestMapping("search/{keyword}")
	public List<WebtoonDTO> searchByKeyword(@PathVariable("keyword") String keyword) {
		List<WebtoonDTO> list = webtoonService.searchByKeyword(keyword);
		return list;
	}
	
	/**
	 * 웹툰에피소드목록보기
	 * @param webtoonCode 보려는 웹툰의 웹툰코드
	 * @return 사용자의 웹툰여부판단후 해당페이지로 검색된결과리턴
	 */
	@RequestMapping("webtoonPage/{webtoonCode}")
	public ModelAndView selectAllEpisode(HttpServletRequest requset, @PathVariable("webtoonCode") int webtoonCode) {
		String type = "webtoon/reader";
		//해당 웹툰이 사용자의 웹툰일경우 작가용 웹툰보기페이지로 이동
		if (webtoonService.checkNickname(webtoonCode)) {
			type = "webtoon/author";
		}
		List<EpisodeDTO> list = webtoonService.selectAllEpisode(webtoonCode);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName(type);
		//페이지이동후 webtoonCode를 자주 사용함으로 미리 request영역에 저장.
		modelAndView.addObject("webtoonCode", webtoonCode);
		modelAndView.addObject("episodeList", list);
		return modelAndView;
	}
	/**
	 * 에피소드보기
	 * @param episodeSequence 해당에피소드의 시퀸스
	 * @return 해당에피소드의 이미지배열
	 */
	@RequestMapping("episodePage/{episodeSequence}")
	public ModelAndView selectImg(HttpServletRequest requset, @PathVariable("episodePage") int episodeSequence) {
		List<String> list = webtoonService.selectImg(episodeSequence);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("webtoon/episode");
		modelAndView.addObject("image", list);
		modelAndView.addObject("episodeSequence", episodeSequence);
		return modelAndView;
	}
	
	/**
	 * 구독하기
	 * 구독하기 버튼 클릭하면 requset에 남아있는 해당 웹툰 코드와 session에 있는 사용자 email이용
	 * 구독하기 테이블에 해당 작품 레코드삽입, 이후 비동기화 통신으로 구독목록 갱신
	 * @param request
	 * @return 성공여부 1:성공 , 0:실패
	 */
	public void addSubscription(HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserDTO dto = (UserDTO) session.getAttribute("userDTO");
		String email = dto.getEmail();
		String webtoonCode = (String) request.getAttribute("webtoonCode");
		if (webtoonService.addSubscription(email, webtoonCode) > 0) {
			//성공했을때 무언가...?
		}
	}
	
	/**
	 * 추천하기
	 * 추천하기 버튼 클릭, requset에 남아있는 해당 웹툰 코드와 session에 있는 사용자 email이용
	 * 추천하기 테이블에 해당 작품 레코드삽입, 이후 비동기화 통신으로 추천수변경
	 * @return 성공여부 1:성공 , 0:실패 
	 */
	public void addRecommandation(HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserDTO dto = (UserDTO) session.getAttribute("userDTO");
		String email = dto.getEmail();
		int episodeSequence = (Integer) request.getAttribute("episodeSequence");
		
		if (webtoonService.addRecommend(email, episodeSequence) > 0) {
			//성공했을때 무언가...?
		}
	}

	/**
	 * 신고
	 * 신고버튼클릭하면 request에 있는 epicsode_sequence와 webtoonCode, session에 있는 사용자 email이용
	 * 신고 테이블에 해당 레코드 삽입
	 * @content : 신고내용
	 * @return 성공여부 1:성공 , 0:실패 
	 */
	public void addReport(HttpServletRequest request, String content) {
		HttpSession session = request.getSession();
		UserDTO dto = (UserDTO) session.getAttribute("userDTO");
		String email = dto.getEmail();
		String webtoonCode = (String) request.getAttribute("webtoonCode");
		if (webtoonService.addSubscription(email, webtoonCode)>0) {
			//성공했을때 무언가...?
		}
	}
	
	/**
	 * 에피소드 목록으로 돌아가기
	 * 목록으로 버튼 클릭, 웹툰에피소드페이지로 이동
	 * @return 웹툰에피소드목록보기로 이동
	 */
	@RequestMapping("list")
	public String backToList(HttpServletRequest request) {
		String webtoonCode = (String) request.getAttribute("webtoonCode");
		return "webtoonPage/{"+webtoonCode+"}";
	}
	
	/**
	 * 이전,다음화 이동
	 * @param direction [next]다음화, [prev]이전화
	 * @return 웹툰에피소드목록보기로 이동
	 */
	@RequestMapping("{direction}")
	public String prev(HttpServletRequest request, @PathVariable("direction") String direction) {
		//뷰단에서 에피소드넘버를 인수로 받아온다.
		int episodeSequence = (Integer) request.getAttribute("episodeSequence");
		int episodeNumber = (Integer) request.getAttribute("episodeNumber");
		List<EpisodeDTO> dto = (List<EpisodeDTO>) request.getAttribute("episodeList");
		Iterator<EpisodeDTO> iterator= dto.iterator();
		//direction에 따라 다음화, 이전화 결정 찾을 에피소드번호를 더하거나 내린다.
		if (direction.equals("next")) {
			episodeNumber++;
		} else {
			episodeNumber--;
		}
		//에피소드DTO목록안에서 다음 에피소드넘버에 해당하는 에피소드 시퀸스를 찾기.
		while (iterator.hasNext()) {
			EpisodeDTO episodeDTO = (EpisodeDTO) iterator.next();
			if (episodeDTO.getEpisodeNumber() == (episodeNumber)) {
				episodeSequence = episodeDTO.getEpisodeSequence();
			}
		}
		return "episodePage/{"+episodeSequence+"}";
	}
}