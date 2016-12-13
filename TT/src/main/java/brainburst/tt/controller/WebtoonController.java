package brainburst.tt.controller;

import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
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
	 * ī�װ��� �̵�
	 * @param webtoonLevel �������(�Ϲ�, �ݵ�, ����)
	 * @param category ī�װ�
	 * @return �˻��� ��� 
	 */
	@RequestMapping("{webtoonLevel}/{category}")
	public String selectWebtoonByLevel(HttpSession session, 
			@PathVariable("webtoonLevel") String webtoonLevel, 
			@PathVariable("category") String category) {
		if (category.equals("all")) {
			category = null;
		}
		List<WebtoonDTO> list = webtoonService.selectWebtoonByLevel(webtoonLevel, category);
		session.setAttribute("webtoonList", list);
		return "main/index";
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
	 * �������Ǽҵ��Ϻ���
	 * @param webtoonCode ������ ������ �����ڵ�
	 * @return ������� ���������Ǵ��� �ش��������� �˻��Ȱ������
	 */
	@RequestMapping("webtoonPage/{webtoonCode}")
	public ModelAndView selectAllEpisode(HttpServletRequest requset, @PathVariable("webtoonCode") int webtoonCode) {
		HttpSession session = requset.getSession();
		UserDTO dto = (UserDTO) session.getAttribute("userDTO");
		String nickname = "GUEST";
		if (dto!=null) {
			nickname = dto.getNickname();
		}
		String type = "webtoon/webtoon";
		//�ش� ������ ������� �����ϰ�� �۰��� ���������������� �̵�
		if (webtoonService.checkNickname(webtoonCode, nickname)) {
			type = "webtoon/myWebtoon";
		}
		List<EpisodeDTO> list = webtoonService.selectAllEpisode(webtoonCode);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName(type);
		//�������̵��� webtoonCode�� ���� ��������� �̸� request������ ����.
		modelAndView.addObject("webtoonCode", webtoonCode);
		modelAndView.addObject("episodeList", list);
		System.out.println(list);
		return modelAndView;
	}
	
	/**
	 * ���Ǽҵ庸��
	 * @param episodeSequence �ش翡�Ǽҵ��� ������
	 * @return �ش翡�Ǽҵ��� �̹����迭
	 */
	@RequestMapping("episodePage/{episodeValue}")
	public ModelAndView selectImg(HttpServletRequest requset, @PathVariable("episodeValue") String episodeValue) {
		StringTokenizer stringTokenizer = new StringTokenizer(episodeValue, "and");
		int episodeSequence = Integer.parseInt(stringTokenizer.nextToken());
		int episodeNumber = Integer.parseInt(stringTokenizer.nextToken());
		System.out.println(episodeSequence);
		System.out.println(episodeNumber);
		List<String> list = webtoonService.selectImg(episodeSequence);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("webtoon/episode");
		modelAndView.addObject("imageList", list);
		System.out.println(list);
		modelAndView.addObject("episodeSequence", episodeSequence);
		modelAndView.addObject("episodeNumber", episodeNumber);
		return modelAndView;
	}
	
	/**
	 * �����ϱ�
	 * �����ϱ� ��ư Ŭ���ϸ� requset�� �����ִ� �ش� ���� �ڵ�� session�� �ִ� ����� email�̿�
	 * �����ϱ� ���̺� �ش� ��ǰ ���ڵ����, ���� �񵿱�ȭ ������� ������� ����
	 * @param request
	 * @return �������� 1:���� , 0:����
	 */
	public void addSubscription(HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserDTO dto = (UserDTO) session.getAttribute("userDTO");
		String email = dto.getEmail();
		int webtoonCode = (Integer) request.getAttribute("webtoonCode");
		if (webtoonService.addSubscription(email, webtoonCode) > 0) {
			//���������� ����...?
		}
	}
	
	/**
	 * ��õ�ϱ�
	 * ��õ�ϱ� ��ư Ŭ��, requset�� �����ִ� �ش� ���� �ڵ�� session�� �ִ� ����� email�̿�
	 * ��õ�ϱ� ���̺� �ش� ��ǰ ���ڵ����, ���� �񵿱�ȭ ������� ��õ������
	 * @return �������� 1:���� , 0:���� 
	 */
	public void addRecommandation(HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserDTO dto = (UserDTO) session.getAttribute("userDTO");
		String email = dto.getEmail();
		int episodeSequence = (Integer) request.getAttribute("episodeSequence");
		
		if (webtoonService.addRecommend(email, episodeSequence) > 0) {
			//���������� ����...?
		}
	}

	/**
	 * �Ű�
	 * �Ű��ưŬ���ϸ� request�� �ִ� epicsode_sequence�� webtoonCode, session�� �ִ� ����� email�̿�
	 * �Ű� ���̺� �ش� ���ڵ� ����
	 * @content : �Ű���
	 * @return �������� 1:���� , 0:���� 
	 */
	public void addReport(HttpServletRequest request, String content) {
		HttpSession session = request.getSession();
		UserDTO dto = (UserDTO) session.getAttribute("userDTO");
		String email = dto.getEmail();
		int episodeSequence = (Integer) request.getAttribute("episodeSequence");
		int webtoonCode = (Integer) request.getAttribute("webtoonCode");
		ReportDTO reportDTO = new ReportDTO(content, email, webtoonCode, episodeSequence);
		if (webtoonService.addReport(reportDTO) > 0) {
			//���������� ����...?
		}
	}
	
	/**
	 * ���Ǽҵ� ������� ���ư���
	 * ������� ��ư Ŭ��, �������Ǽҵ��������� �̵�
	 * @return �������Ǽҵ��Ϻ���� �̵�
	 */
	@RequestMapping("list")
	public String backToList(HttpServletRequest request) {
		String webtoonCode = (String) request.getAttribute("webtoonCode");
		return "webtoonPage/{"+webtoonCode+"}";
	}
	
	/**
	 * ����,����ȭ �̵�
	 * @param direction [next]����ȭ, [prev]����ȭ
	 * @return �������Ǽҵ��Ϻ���� �̵�
	 */
	@RequestMapping("{direction}")
	public String prev(HttpServletRequest request, @PathVariable("direction") String direction) {
		//��ܿ��� ���Ǽҵ�ѹ��� �μ��� �޾ƿ´�.
		int episodeSequence = (Integer) request.getAttribute("episodeSequence");
		int episodeNumber = (Integer) request.getAttribute("episodeNumber");
		List<EpisodeDTO> dto = (List<EpisodeDTO>) request.getAttribute("episodeList");
		Iterator<EpisodeDTO> iterator= dto.iterator();
		//direction�� ���� ����ȭ, ����ȭ ���� ã�� ���Ǽҵ��ȣ�� ���ϰų� ������.
		if (direction.equals("next")) {
			episodeNumber++;
		} else {
			episodeNumber--;
		}
		//���Ǽҵ�DTO��Ͼȿ��� ���� ���Ǽҵ�ѹ��� �ش��ϴ� ���Ǽҵ� �������� ã��.
		while (iterator.hasNext()) {
			EpisodeDTO episodeDTO = (EpisodeDTO) iterator.next();
			if (episodeDTO.getEpisodeNumber() == (episodeNumber)) {
				episodeSequence = episodeDTO.getEpisodeSequence();
			}
		}
		return "episodePage/{"+episodeSequence+"}";
	}
}