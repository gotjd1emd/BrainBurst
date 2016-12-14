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
import brainburst.tt.service.AuthorService;

@Controller
@RequestMapping("author")
public class AuthorContoller {
	@Autowired
	private AuthorService authorService;
	/**
	 * 작품상세보기
	 * 작가가 자신의 웹툰보기 페이지에서 상세보기를 누를경우 작품정보를 가지고 해당페이지로 이동.
	 * @return webtoonDTO는 해당 작품의 정보가 담긴 DTO
	 */
	@RequestMapping("showDetail")
	public ModelAndView showDetail(HttpServletRequest request) {
		int webtoonCode = (Integer) request.getAttribute("webtoonCode");
		List<WebtoonDTO> list = (List<WebtoonDTO>) request.getAttribute("webtoonList");
		WebtoonDTO dto = null;
		Iterator<WebtoonDTO> iterator = list.iterator();
		while (iterator.hasNext()) {
			WebtoonDTO webtoonDTO = (WebtoonDTO) iterator.next();
			if (webtoonDTO.getWebtoonCode()==webtoonCode) {
				dto = webtoonDTO;
				break;
			}
		}
		return new ModelAndView("author/detail", "webtoonDTO", dto);
	}

	/**
	 * 마이페이지에서 작가페이지를 클릭할때,
	 * 작가일경우 작가페이지로이동, 독자일경우 작가페이지 활성화버튼으로 이동(기본값)
	 */
	@RequestMapping("authorPage")
	public ModelAndView authorPage(HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserDTO userDTO = (UserDTO) session.getAttribute("userDTO");
		String userLevel = userDTO.getLevel();
		String nickname = userDTO.getNickname();
		String viewName = "madeAuthorPage";
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("nickname", nickname);
		
		//유저레벨이 독자가 아닐경우(펀딩작가, 작가인경우!) 작가페이지로이동.
		if (!userLevel.equals("독자")) {
			//사용자의 닉네임으로 연제중인 웹툰목록 가져오기
			List<WebtoonDTO> list = authorService.getSerialWebtoon(nickname);
			modelAndView.addObject("webtoonList", list);
			//이동할 뷰이름 변경
			viewName = "author/authorDetail";
		}
		modelAndView.setViewName(viewName);
		return modelAndView;
	}

	/**
	작가페이지의 마감된 웹툰탭 클릭할 때, 연재완료 상태의 웹툰목록 가지고 이동
	*/
	@RequestMapping("complete")
	public ModelAndView concludedWebtoonPage(HttpServletRequest request, String nickname) {
		List<WebtoonDTO> list = authorService.getCompleteWebtoon(nickname);
		return new ModelAndView("author/completeList", "webtoonList", list);
	}

	/**
	작품등록
	등록하면 정보값 가지고 웹툰테이블 생성
	이후 작가페이지의 연재중웹툰탭으로 이동
	*/
	public String addSeries(HttpServletRequest request) {
		//뷰에서 보내는 웹툰정보
		WebtoonDTO webtoonDTO = (WebtoonDTO) request.getAttribute("dto");
		EpisodeDTO episodeDTO = (EpisodeDTO) request.getAttribute("dto2");
		authorService.addSeries(webtoonDTO, episodeDTO);
		return "author/authorPage";
	}
	
	/**
	작품수정
	수정후 해당 작품의 웹툰페이지로 이동
	*/
	public String updateSeries(HttpServletRequest request) {
		WebtoonDTO webtoonDTO = (WebtoonDTO) request.getAttribute("dto");
		int webtoonCode = webtoonDTO.getWebtoonCode();
		authorService.updateSeries(webtoonDTO);
		return "webtoonPage/"+webtoonCode;
	}
	
	/**
	작품상태변경
	*/
	public String setSeriesState(HttpServletRequest request, String state) {
		//어떻게받는가...?
		String webtoonCode = null;
		authorService.setSeriesState(webtoonCode, state);
		return "author/authorPage";
	}
	
	/**
	 * 에피소드업로드
	 */
	public void uploadEpisode(HttpServletRequest request, EpisodeDTO episodeDTO) {
		
	}
	
	/**
	 * 에피소드 수정
	 */
	@RequestMapping("modifyEpisode/{episodeSequence}")
	public String modifyEpsode(HttpServletRequest request, @PathVariable int episodeSequence) {
		
		return "webtoon/modifyEpisode";
	}
}