package brainburst.tt.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
		String webtoonCode = (String) request.getAttribute("webtoonCode");
		List<WebtoonDTO> list = (List<WebtoonDTO>) request.getAttribute("webtoonList");
		WebtoonDTO dto = null;
		Iterator<WebtoonDTO> iterator = list.iterator();
		while (iterator.hasNext()) {
			WebtoonDTO webtoonDTO = (WebtoonDTO) iterator.next();
			if (webtoonDTO.getWebtoonCode().equals(webtoonCode)) {
				dto = webtoonDTO;
				break;
			}
		}
		return new ModelAndView("author/detail", "webtoonDTO", dto);
	}
/**
마이페이지에서 작가페이지 클릭할때,
USER_LEVEL(session에 있을가능성이 높음) 체크해서 작가일경우 자신의 연재중인 웹툰목록
가지고 작가페이지 연재중인웹툰탭으로 이동(처음페이지)
독자일경우 작가신청 페이지로이동
*/
	@RequestMapping("authorPage")
	public ModelAndView authorPage(HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserDTO userDTO = (UserDTO) session.getAttribute("userDTO");
		String userLevel = userDTO.getLevel();
		String nickname = userDTO.getNickname();
		//유저레벨이 독자가 아닐경우(펀딩작가, 작가인경우!) 작가페이지로이동.
		if (!userLevel.equals("독자")) {
			List<WebtoonDTO> list = authorService.getSerializedWebtoon(nickname);
			return new ModelAndView("author/authorDetail", "webtoonList", list);
		} else {
			//생성페이지로이동
			return new ModelAndView("madeAuthorPage");
		}
	}

	/**
	작가페이지의 마감된 웹툰탭 클릭할 때, 연재완료 상태의 웹툰목록 가지고 이동
	*/
	@RequestMapping("authorPage")
	public ModelAndView concludedWebtoonPage(HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserDTO userDTO = (UserDTO) session.getAttribute("userDTO");
		String nickname = userDTO.getNickname();
		return null;
	}
	
/**
작가신청 버튼클릭시,
UserController에 있음 보류.
*/



/**
작품등록
*/

/**
작품수정
*/

/**
작품상태변경
*/
}
