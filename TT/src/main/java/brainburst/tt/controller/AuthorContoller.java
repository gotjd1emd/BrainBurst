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
	 * ��ǰ�󼼺���
	 * �۰��� �ڽ��� �������� ���������� �󼼺��⸦ ������� ��ǰ������ ������ �ش��������� �̵�.
	 * @return webtoonDTO�� �ش� ��ǰ�� ������ ��� DTO
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
�������������� �۰������� Ŭ���Ҷ�,
USER_LEVEL(session�� �������ɼ��� ����) üũ�ؼ� �۰��ϰ�� �ڽ��� �������� �������
������ �۰������� ������������������ �̵�(ó��������)
�����ϰ�� �۰���û ���������̵�
*/
	@RequestMapping("authorPage")
	public ModelAndView authorPage(HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserDTO userDTO = (UserDTO) session.getAttribute("userDTO");
		String userLevel = userDTO.getLevel();
		String nickname = userDTO.getNickname();
		//���������� ���ڰ� �ƴҰ��(�ݵ��۰�, �۰��ΰ��!) �۰����������̵�.
		if (!userLevel.equals("����")) {
			List<WebtoonDTO> list = authorService.getSerializedWebtoon(nickname);
			return new ModelAndView("author/authorDetail", "webtoonList", list);
		} else {
			//�������������̵�
			return new ModelAndView("madeAuthorPage");
		}
	}

	/**
	�۰��������� ������ ������ Ŭ���� ��, ����Ϸ� ������ ������� ������ �̵�
	*/
	@RequestMapping("authorPage")
	public ModelAndView concludedWebtoonPage(HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserDTO userDTO = (UserDTO) session.getAttribute("userDTO");
		String nickname = userDTO.getNickname();
		return null;
	}
	
/**
�۰���û ��ưŬ����,
UserController�� ���� ����.
*/



/**
��ǰ���
*/

/**
��ǰ����
*/

/**
��ǰ���º���
*/
}
