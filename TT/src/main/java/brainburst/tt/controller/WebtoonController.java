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
	 * ī�װ��� �̵�
	 * @param webtoonLevel �������(�Ϲ�, �ݵ�, ����)
	 * @param category ī�װ�
	 * @return �˻��� ��� 
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
		System.out.println("selectWebtoonByLevelR�� �Դ�");
		System.out.println("catogory_code : " + category);
		System.out.println("webtoonLevel : " + webtoonLevel);
		List<WebtoonDTO> list = webtoonService.selectWebtoonByLevel(webtoonLevel, category, email);
		System.out.println(list.size());
		session.setAttribute("webtoonList", list);
		return list;
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
		//�ش� ������ ������� �����ϰ�� �۰��� ���������������� �̵�
		if (webtoonService.checkNickname(webtoonCode, nickname)) {
			type = "webtoon/myWebtoon";
		}
		List<EpisodeDTO> list = webtoonService.selectAllEpisode(webtoonCode);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName(type);
		//�������̵��Ҷ� ���� ����ϴ� ���� �̸� request������ ����.
		modelAndView.addObject("webtoonDTO", webtoonDTO);
		session.setAttribute("episodeList", list);
		return modelAndView;
	}
	
	/**
	 * ���Ǽҵ庸��
	 * @param episodeSequence �ش翡�Ǽҵ��� ������
	 * @return �ش翡�Ǽҵ��� �̹����迭
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
	 * �����ϱ�
	 * �����ϱ� ��ư Ŭ���ϸ� requset�� �����ִ� �ش� ���� �ڵ�� session�� �ִ� ����� email�̿�
	 * �����ϱ� ���̺� �ش� ��ǰ ���ڵ����, ���� �񵿱�ȭ ������� ������� ����
	 * @param request
	 * @return �������� 1:���� , 0:����
	 * @throws Exception 
	 */
	@RequestMapping("subscription/{webtoonCode}")
	@ResponseBody
	public List<WebtoonDTO> addSubscription(HttpServletRequest request, HttpSession session ,@PathVariable("webtoonCode") int webtoonCode){
		UserDTO dto = (UserDTO)request.getSession().getAttribute("userDTO");
		String email = dto.getEmail();
		System.out.println("������ email : "+email + "webtoonCode" + webtoonCode);
		List<WebtoonDTO> scriptionList = webtoonService.addSubscription(email, webtoonCode);
		System.out.println(scriptionList);
		if (scriptionList != null) {
			session.setAttribute("subScriptionList", scriptionList);
		}
		return scriptionList;
	}
	
	/**
	 * ��õ�ϱ�
	 * ��õ�ϱ� ��ư Ŭ��, requset�� �����ִ� �ش� ���� �ڵ�� session�� �ִ� ����� email�̿�
	 * ��õ�ϱ� ���̺� �ش� ��ǰ ���ڵ����, ���� �񵿱�ȭ ������� ��õ������
	 * @return �������� 1:���� , 0:���� 
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
	 * ���Ǽҵ���ε� ������ �̵�
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
	 * ���Ǽҵ� ����
	 */
	@RequestMapping("modifyEpisode/{episodeSequence}")
	public String modifyEpsode(HttpServletRequest request, @PathVariable int episodeSequence) {
		
		return "webtoon/modifyEpisode";
	}
}