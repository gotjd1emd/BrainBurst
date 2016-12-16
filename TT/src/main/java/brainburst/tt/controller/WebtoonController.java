package brainburst.tt.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.ReportDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;
import brainburst.tt.service.WebtoonService;

@Controller
@RequestMapping("webtoon")
public class WebtoonController {
	
	@Autowired
	private WebtoonService webtoonService;
	
	/**
	 * 카테고리별 이동
	 * @param webtoonLevel 웹툰등급(일반, 펀딩, 유료)
	 * @param category 카테고리
	 * @return 검색된 결과 
	 */
	@RequestMapping("{webtoonLevel}/{category}")
	public String selectWebtoonByLevel(HttpSession session, 
			@PathVariable("webtoonLevel") String webtoonLevel, 
			@PathVariable("category") String category) {
		UserDTO userDTO = (UserDTO) session.getAttribute("userDTO");
		String email = null;
		
		if(userDTO != null) {
			email = userDTO.getEmail();
		}
		if (category.equals("all")) {
			category = null;
		}
		List<WebtoonDTO> list = webtoonService.selectWebtoonByLevel(webtoonLevel, category, email);
		System.out.println(list);
		session.setAttribute("webtoonList", list);
		return "main/index";
	}
	
	@RequestMapping("webtoonLevelR/{webtoonLevel}/{category}")
	@ResponseBody
	public List<WebtoonDTO> selectWebtoonByLevelR(HttpSession session, 
			@PathVariable("webtoonLevel") String webtoonLevel, 
			@PathVariable("category") String category) {
		UserDTO userDTO = (UserDTO) session.getAttribute("userDTO");
		String email = null;
		
		if(userDTO != null) {
			email = userDTO.getEmail();
		}
		System.out.println("selectWebtoonByLevelR로 왔다");
		System.out.println("catogory_code : " + category);
		System.out.println("webtoonLevel : " + webtoonLevel);
		List<WebtoonDTO> list = webtoonService.selectWebtoonByLevel(webtoonLevel, category, email);
		System.out.println(list.size());
		session.setAttribute("webtoonList", list);
		return list;
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
		HttpSession session = requset.getSession();
		UserDTO dto = (UserDTO) session.getAttribute("userDTO");
		List<WebtoonDTO> webtoonDTOs = (List<WebtoonDTO>) session.getAttribute("webtoonList");
		WebtoonDTO webtoonDTO = null;
		Iterator<WebtoonDTO> iterator = webtoonDTOs.iterator();
		while (iterator.hasNext()) {
			WebtoonDTO webtoon = (WebtoonDTO) iterator.next();
			if (webtoon.getWebtoonCode()==webtoonCode) {
				webtoonDTO = webtoon;
			}
		}
		String nickname = "GUEST";
		if (dto!=null) {
			nickname = dto.getNickname();
		}
		String type = "webtoon/webtoon";
		//해당 웹툰이 사용자의 웹툰일경우 작가용 웹툰보기페이지로 이동
		if (webtoonService.checkNickname(webtoonCode, nickname)) {
			type = "webtoon/myWebtoon";
		}
		List<EpisodeDTO> list = webtoonService.selectAllEpisode(webtoonCode);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName(type);
		//페이지이동할때 자주 사용하는 정보 미리 request영역에 저장.
		modelAndView.addObject("webtoonDTO", webtoonDTO);
		session.setAttribute("episodeList", list);
		return modelAndView;
	}
	
	/**
	 * 에피소드보기
	 * @param episodeSequence 해당에피소드의 시퀸스
	 * @return 해당에피소드의 이미지배열
	 */
	@RequestMapping("episodePage/{episodeSequence}")
	public ModelAndView selectImg(HttpServletRequest request, @PathVariable("episodeSequence") int episodeSequence) {
		WebtoonDTO webtoonDTO = webtoonService.selecltWebtoonByCode(episodeSequence);
		EpisodeDTO episodeDTO = webtoonService.selectNumsBySequence(episodeSequence);
		List<String> list = webtoonService.selectImg(episodeSequence);
		List<EpisodeDTO> episodeList = (List<EpisodeDTO>)request.getSession().getAttribute("episodeList");
		System.out.println(episodeList);
		int episodeNumber = episodeDTO.getEpisodeNumber();
		int prevEpisodeSequence = 0;
		int nextepisodeSequence = 0;
		Iterator<EpisodeDTO> iterator = episodeList.iterator();
		while (iterator.hasNext()) {
			EpisodeDTO dto = (EpisodeDTO) iterator.next();
			if (dto.getEpisodeNumber() == (episodeNumber-1)) {
				prevEpisodeSequence = dto.getEpisodeSequence();
			} else if (dto.getEpisodeNumber() == (episodeNumber+1)) {
				nextepisodeSequence = dto.getEpisodeSequence();
			}
		}
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("webtoon/episode");
		modelAndView.addObject("imageList", list);
		modelAndView.addObject("episodeDTO", episodeDTO);
		modelAndView.addObject("webtoonDTO", webtoonDTO);
		modelAndView.addObject("prevEpisodeSequence", prevEpisodeSequence);
		modelAndView.addObject("nextepisodeSequence", nextepisodeSequence);
		System.out.println(episodeNumber);
		System.out.println(prevEpisodeSequence);
		System.out.println(nextepisodeSequence);
		return modelAndView;
	}
	
	/**
	 * 구독하기
	 * 구독하기 버튼 클릭하면 requset에 남아있는 해당 웹툰 코드와 session에 있는 사용자 email이용
	 * 구독하기 테이블에 해당 작품 레코드삽입, 이후 비동기화 통신으로 구독목록 갱신
	 * @param request
	 * @return 성공여부 1:성공 , 0:실패
	 * @throws Exception 
	 */
	@RequestMapping("subscription/{webtoonCode}")
	@ResponseBody
	public List<WebtoonDTO> addSubscription(HttpServletRequest request, HttpSession session ,@PathVariable("webtoonCode") int webtoonCode){
		UserDTO dto = (UserDTO)request.getSession().getAttribute("userDTO");
		String email = dto.getEmail();
		System.out.println("가저온 email : "+email + "webtoonCode" + webtoonCode);
		List<WebtoonDTO> scriptionList = webtoonService.addSubscription(email, webtoonCode);
		System.out.println(scriptionList);
		if (scriptionList != null) {
			session.setAttribute("subScriptionList", scriptionList);
		}
		return scriptionList;
	}
	
	/**
	 * 추천하기
	 * 추천하기 버튼 클릭, requset에 남아있는 해당 웹툰 코드와 session에 있는 사용자 email이용
	 * 추천하기 테이블에 해당 작품 레코드삽입, 이후 비동기화 통신으로 추천수변경
	 * @return 성공여부 1:성공 , 0:실패 
	 * @throws Exception 
	 */
	@RequestMapping("recommandation/{episodeSequence}")
	@ResponseBody
	public String addRecommandation(HttpServletRequest request, @PathVariable("episodeSequence") int episodeSequence) throws Exception {
		HttpSession session = request.getSession();
		UserDTO dto = (UserDTO) session.getAttribute("userDTO");
		String email = dto.getEmail();
		int i = webtoonService.addRecommend(email, episodeSequence);
		if (i<0) {
			throw new Exception();
		}
		return Integer.toString(i);
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
		int episodeSequence = (Integer) request.getAttribute("episodeSequence");
		int webtoonCode = (Integer) request.getAttribute("webtoonCode");
		ReportDTO reportDTO = new ReportDTO(content, email, webtoonCode, episodeSequence);
		if (webtoonService.addReport(reportDTO) > 0) {
			//성공했을때 무언가...?
		}
	}
	
	/**
	 * 에피소드업로드 페이지 이동
	 */
	@RequestMapping("episodeUploadPage/{webtoonCode}/{episodeNumber}")
	public String episodeUploadPage(HttpServletRequest request, @PathVariable("webtoonCode") int webtoonCode, 
			@PathVariable("episodeNumber") int episodeNumber) {
		
		WebtoonDTO webtoonDTO = webtoonService.selectWebtoon(webtoonCode);

		request.setAttribute("webtoonDTO", webtoonDTO);
		request.setAttribute("episodeNumber", episodeNumber);
		return "webtoon/episodeUpload";
	}
	
	/**
	 * 에피소드 수정
	 */
	@RequestMapping("modifyEpisode/{episodeSequence}")
	public String modifyEpsode(HttpServletRequest request, @PathVariable int episodeSequence) {
		
		return "webtoon/modifyEpisode";
	}
}