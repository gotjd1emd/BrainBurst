package brainburst.tt.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.FundDTO;
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
		session.setAttribute("tapType", webtoonLevel);
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
		if(category.equals("all")){
			category = null;
		}
		System.out.println("selectWebtoonByLevelR�� �Դ�");
		System.out.println("catogory_code : " + category);
		System.out.println("webtoonLevel : " + webtoonLevel);
		List<WebtoonDTO> list = webtoonService.selectWebtoonByLevel(webtoonLevel, category, email);
		System.out.println(list);
		session.setAttribute("webtoonList", list);
		return list;
	}
	
	/**
	 * �˻�
	 * @param keyword �˻���
	 * @return �˻��� ���
	 */
	@RequestMapping("search/{keyword}")
	@ResponseBody
	public List<WebtoonDTO> searchByKeyword(HttpSession session, @PathVariable("keyword") String keyword) {
		UserDTO userDTO = (UserDTO) session.getAttribute("userDTO");
		String email = null;
		if(userDTO != null) {
			email = userDTO.getEmail();
		}
		List<WebtoonDTO> list = webtoonService.searchByKeyword(keyword, email);
		System.out.println(list);
		System.out.println(list.size());
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
		Map<String, Object> map = null;
		List<EpisodeDTO> list = null;
		FundDTO fundDTO = null;
		
		String nickname = "GUEST";
		String type = "webtoon/webtoon";
		String email = null;
		if (dto!=null) {
			nickname = dto.getNickname();
			email = dto.getEmail();
		}
		
		WebtoonDTO webtoonDTO = webtoonService.selectWebtoon(webtoonCode, email);
		
		//�ش� ������ ������� �����ϰ�� �۰��� ���������������� �̵�
		if (webtoonService.checkNickname(webtoonCode, nickname)) {
			type = "webtoon/myWebtoon";
			//�۰��� ���������� ��Ʈ�ѷ�
			if(webtoonDTO.getWebtoonLevel().equals("funding")) {
				map = webtoonService.myFundingEpisodeList(webtoonCode);
				list = (List<EpisodeDTO>)map.get("episodeList");
				fundDTO = (FundDTO)map.get("fundDTO");
			}else {
				list = webtoonService.selectAllEpisode(webtoonCode);
			}
		}else {
			//���ڿ� ���������� ��Ʈ�ѷ�
			/*
			 * �������°� ����ε�� �����߻�
			 */
			if (webtoonDTO.getWebtoonState().equals("blind")) {
				/*���߿� �ִ´�!*/
			}
			
			if(webtoonDTO.getWebtoonLevel().equals("funding")) {
				map = webtoonService.fundingEpisodeList(webtoonCode);
				list = (List<EpisodeDTO>)map.get("episodeList");
				fundDTO = (FundDTO)map.get("fundDTO");
			}else {
				list = webtoonService.selectAllEpisode(webtoonCode);
			}
		}

		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName(type);
		//�������̵��Ҷ� ���� ����ϴ� ���� �̸� request������ ����.
		modelAndView.addObject("webtoonDTO", webtoonDTO);
		session.setAttribute("episodeList", list);
		modelAndView.addObject("fundDTO", fundDTO);
		
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
	@RequestMapping("subscription/{command}/{webtoonCode}")
	@ResponseBody
	public List<WebtoonDTO> addSubscription(HttpServletRequest request, HttpSession session ,
			@PathVariable("command") String command, @PathVariable("webtoonCode") String webtoonCode){
		String[] webtoonCodeA = webtoonCode.split("_");
		UserDTO dto = (UserDTO)request.getSession().getAttribute("userDTO");
		String email = dto.getEmail();
		System.out.println("������ email : "+email + "webtoonCode" + webtoonCode);
		List<WebtoonDTO> scriptionList = webtoonService.addSubscription(email, Integer.parseInt(webtoonCodeA[0]), command);
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
	 * ���Ǽҵ���ε� ������ �̵�
	 */
	@RequestMapping("episodeUploadPage/{webtoonCode}/{episodeNumber}")
	public String episodeUploadPage(HttpServletRequest request, @PathVariable("webtoonCode") int webtoonCode, 
			@PathVariable("episodeNumber") int episodeNumber) {
		
		WebtoonDTO webtoonDTO = webtoonService.selectWebtoon(webtoonCode, null);

		request.setAttribute("webtoonDTO", webtoonDTO);
		request.setAttribute("episodeNumber", episodeNumber);
		return "webtoon/episodeUpload";
	}
	
	/**
	 * ���Ǽҵ� ���� ������ �̵�
	 */
	@RequestMapping("modifyEpisode/{episodeSequence}")
	public String modifyEpsodePage(HttpServletRequest request, @PathVariable int episodeSequence) {
		Map<String, Object> map = webtoonService.modifyEpisodePage(episodeSequence);
		System.out.println("episode sequence : " + episodeSequence);
		List<String> imageList = (List<String>)map.get("imageList");
		request.setAttribute("webtoonDTO", (WebtoonDTO)map.get("webtoonDTO"));
		request.setAttribute("episodeDTO", (EpisodeDTO)map.get("episodeDTO"));
		request.setAttribute("imageList", imageList);
		request.setAttribute("thumbnailPath", (String)map.get("thumbnailPath"));
		request.setAttribute("imageListSize", imageList.size());
		
		for(String str : (List<String>)map.get("imageList")) {
			System.out.println("image Path : " + str);
		}
		
		return "webtoon/modifyEpisode";
	}
	
	/**
	 * ī�װ��� ���� ����
	 * */
	@RequestMapping("selectMyWebtoon/{webtoonState}")
	@ResponseBody
	public List<WebtoonDTO> selectMyWebtoon(HttpSession session, @PathVariable("webtoonState") String webtoonState) {
		UserDTO userDTO = (UserDTO) session.getAttribute("userDTO");
		System.out.println("selectMyWebtoon�� �Դ�");
		List<WebtoonDTO> list = null;
		if (webtoonState.equals("serial")) {
			list = webtoonService.selectMyWebtoon(userDTO.getNickname());
			session.setAttribute("serialWebtoonList", list);
		} else if (webtoonState.equals("complete")) {
			list = webtoonService.selectMyCompleteWebtoon(userDTO.getNickname());
			session.setAttribute("completeWebtoonList", list);
		}
		System.out.println(list.size());
		
		return list;
	}
	
	/**
	 * ������ ���º���
	 * */
	@RequestMapping("webtoonStateChange")
	public String webtoonStateChange(WebtoonDTO webtoonDTO, HttpSession session){
		webtoonService.webtoonStateChange(webtoonDTO);
		UserDTO userDTO = (UserDTO) session.getAttribute("userDTO");
		/*
		 * �������º���� ���氡���� ������ϰ�������
		 * (������ webtoonList�� ���÷� ���Ͽ��� ����� ����Ʈ�� ��µ��� �����Ƿ�,
		 * ���ǿ� mylist�� ���ο� ����� �־��ش�.)
		 */  
		List<WebtoonDTO> list2 = webtoonService.selectMyWebtoon(userDTO.getNickname());
		session.setAttribute("mylist", list2);
		return "myInfo/authorpage";
	}
}