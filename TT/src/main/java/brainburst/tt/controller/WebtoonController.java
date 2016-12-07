package brainburst.tt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.WebtoonDTO;
import brainburst.tt.service.WebtoonService;

@Controller
@RequestMapping("webtoon")
public class WebtoonController {
	@Autowired
	private WebtoonService webtoonService;
	
	/**
	 * �����������̵�
	 */
	@RequestMapping("/")
	public ModelAndView mainPage() {
		List<WebtoonDTO> list = webtoonService.selectWebtoonByLevel("punding", "all");
		return new ModelAndView("main/index", "webtoonlist", list);
	}

	/**
	 * ī�װ��� �̵�
	 * @param webtoonLevel �������(�Ϲ�, �ݵ�, ����)
	 * @param category ī�װ�
	 * @return �˻��� ��� 
	 */
	@RequestMapping("{webtoonLevel}/{category}")
	public ModelAndView concludedWebtoonByCategory(
			@PathVariable("webtoonLevel") String webtoonLevel, 
			@PathVariable("category") String category) {
		List<WebtoonDTO> list = webtoonService.selectWebtoonByLevel(webtoonLevel, category);
		return new ModelAndView("main/index", "webtoonlist", list);
	}
	
	/**
	 * �˻�
	 * @param keyword �˻���
	 * @return �˻��� ���
	 */
	@RequestMapping("search/{keyword}")
	public List<WebtoonDTO> searchByKeyword(@PathVariable("keyword") String keyword) {
		List<WebtoonDTO> list = webtoonService.searchByKeyword(keyword);
		return list;
	}
	
	/**
	 * �������Ǽҵ庸��
	 * @param webtoonCode ������ ������ �����ڵ�
	 * @return ������� ���������Ǵ��� �ش��������� �˻��Ȱ������
	 */
	@RequestMapping("webtoonPage/{webtoonCode}")
	public ModelAndView selectAllEpisode(@PathVariable("webtoonCode") String webtoonCode) {
		String type = "webtoon/reader";
		//�ش� ������ ������� �����ϰ�� �۰��� ���������������� �̵�
		if (webtoonService.checkNickname(webtoonCode)) {
			type = "webtoon/author";
		}
		List<EpisodeDTO> list = webtoonService.selectAllEpisode(webtoonCode);
		return new ModelAndView(type, "episodeList", list);
	}
	/**
	 * 
	 * @param episodeSequence �ش翡�Ǽҵ��� ������
	 * @return �ش翡�Ǽҵ��� �̹����迭
	 */
	@RequestMapping("episodePage/{episodeSequence)}")
	public ModelAndView selectImg(@PathVariable("episodePage") int episodeSequence) {
		List<String> list = webtoonService.selectImg(episodeSequence);
		return new ModelAndView("webtoon/episode", "image", list);
	}
	

/**
�����ϱ�.
�����ϱ� ��ư Ŭ���ϸ� requset�� �����ִ� �ش� ���� �ڵ�� session�� �ִ� ����� email�̿�
�����ϱ� ���̺� �ش� ��ǰ ���ڵ����, ���� �񵿱�ȭ ������� ������� ����
*/
/**
��õ�ϱ� ��ú���.
*/

/**
�Ű�
�Ű��ưŬ���ϸ� request�� �ִ� epicsode_sequence�� webtoonCode, session�� �ִ� ����� email�̿�
�Ű� ���̺� �ش� ���ڵ� ����
@content : �Ű���
*/

	
	/*
	 * ������� ���ư���
	*/

	/**
	��,����ȭ�̵�
	request�� �ִ� webtoonCode, episode_number�̿�, ���� episode_number�� ������ ������ �������̵�
	*/

}