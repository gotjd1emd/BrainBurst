package brainburst.tt.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import brainburst.tt.dto.WebtoonDTO;

@Controller
public class AuthorContoller {
	/**
	 * ��ǰ�󼼺���
	 * �۰��� �ڽ��� �������� ���������� �󼼺��⸦ ������� ��ǰ������ ������ �ش��������� �̵�.
	 * @return webtoonDTO�� �ش� ��ǰ�� ������ ��� DTO
	 */
	public ModelAndView showDetail(HttpServletRequest request) {
		String webtoonCode = (String) request.getAttribute("webtoonCode");
		List<WebtoonDTO> list = (List<WebtoonDTO>) request.getAttribute("webtoonlist");
		WebtoonDTO dto = null;
		Iterator<WebtoonDTO> iterator = list.iterator();
		while (iterator.hasNext()) {
			WebtoonDTO webtoonDTO = (WebtoonDTO) iterator.next();
			if (webtoonDTO.getWebtoonCode() == webtoonCode) {
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
	public void wtf() {
		
	}

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
