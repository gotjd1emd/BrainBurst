package brainburst.tt.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

@Controller
public class AuthorContoller {
	/**
	 * ��ǰ�󼼺���
	 * �۰��� �ڽ��� �������� ���������� �󼼺��⸦ ������� ��ǰ������ ������ �ش��������� �̵�.
	 * @return webtoonDTO�� �ش� ��ǰ�� ������ ��� DTO
	 */
	@RequestMapping("")
	public ModelAndView showDetail(HttpServletRequest request) {
		String webtoonCode = (String) request.getAttribute("webtoonCode");
		List<WebtoonDTO> list = (List<WebtoonDTO>) request.getAttribute("webtoonlist");
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
//	@RequestMapping("")
//	public void letTheWorldBurn(HttpServletRequest request) {
//		HttpSession session = request.getSession();
//		UserDTO userDTO = (UserDTO) session.getAttribute("userDTO");
//		//���������� ���ڰ� �ƴҰ��(�ݵ��۰�, �۰��ΰ��!) �۰����������̵�.
//		if (!userDTO.getLevel().equals("����")) {
//			
//		} else {
//			//�������������̵�
//		}
//	}

/**
�۰���û ��ưŬ����,
UserController�� ���� ����.
*/

/**
�۰��������� ������ ������ Ŭ���� ��, ����Ϸ� ������ ������� ������ �̵�
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
