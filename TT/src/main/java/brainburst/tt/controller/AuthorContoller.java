package brainburst.tt.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.ImageDTO;
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
	 * �������������� �۰��������� Ŭ���Ҷ�,
	 * �۰��ϰ�� �۰����������̵�, �����ϰ�� �۰������� Ȱ��ȭ��ư���� �̵�(�⺻��)
	 */
	@RequestMapping("authorPage")
	public ModelAndView authorPage(HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserDTO userDTO = (UserDTO) session.getAttribute("userDTO");
		String userLevel = userDTO.getLevel();
		String nickname = userDTO.getNickname();
		String viewName = "myInfo/authorPromotion";
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("nickname", nickname);
		//���������� ���ڰ� �ƴҰ��(�ݵ��۰�, �۰��ΰ��!) �۰����������̵�.
		if (!userLevel.equals("����")) {
			//������� �г������� �������� ������� ��������
			System.out.println("�г���:"+nickname);
			List<WebtoonDTO> list = authorService.getSerialWebtoon(nickname);
			System.out.println(list);
			session.setAttribute("webtoonList", list);
			//�̵��� ���̸� ����
			viewName = "myInfo/authorpage";
		}
		modelAndView.setViewName(viewName);
		return modelAndView;
	}

	/**
	�۰��������� ������ ������ Ŭ���� ��, ����Ϸ� ������ ������� ������ �̵�
	*/
	@RequestMapping("complete")
	public ModelAndView concludedWebtoonPage(HttpServletRequest request, String nickname) {
		List<WebtoonDTO> list = authorService.getCompleteWebtoon(nickname);
		return new ModelAndView("author/completeList", "webtoonList", list);
	}

	/**
	��ǰ���
	����ϸ� ������ ������ �������̺� ����
	���� �۰��������� ���������������� �̵�
	*/
	public String addSeries(HttpServletRequest request) {
		//�信�� ������ ��������
		WebtoonDTO webtoonDTO = (WebtoonDTO) request.getAttribute("dto");
		EpisodeDTO episodeDTO = (EpisodeDTO) request.getAttribute("dto2");
		authorService.addSeries(webtoonDTO, episodeDTO);
		return "author/authorPage";
	}
	
	/**
	��ǰ����
	������ �ش� ��ǰ�� ������������ �̵�
	*/
	public String updateSeries(HttpServletRequest request) {
		WebtoonDTO webtoonDTO = (WebtoonDTO) request.getAttribute("dto");
		int webtoonCode = webtoonDTO.getWebtoonCode();
		authorService.updateSeries(webtoonDTO);
		return "webtoonPage/"+webtoonCode;
	}
	
	/**
	��ǰ���º���
	*/
	public String setSeriesState(HttpServletRequest request, String state) {
		//��Թ޴°�...?
		String webtoonCode = null;
		authorService.setSeriesState(webtoonCode, state);
		return "author/authorPage";
	}
	
	/**
	 * ���Ǽҵ���ε�
	 */
	@RequestMapping("episodeUpload")
	public String uploadEpisode(HttpServletRequest request, EpisodeDTO episodeDTO) throws Exception {
		List<MultipartFile> images = episodeDTO.getImage();
		List<ImageDTO> imageList = new ArrayList<ImageDTO>();
		
		String categoryName = authorService.selectCategoryName(episodeDTO.getWebtoonCode());
		System.out.println("categoryName: " + categoryName);
		String path = request.getSession().getServletContext().getRealPath("/");
		String dbPath = "/webtoon/";
		path += "/resources" + dbPath;
		
		if(episodeDTO.getThumbnailFile().getSize() == 0) {
			episodeDTO.setThumbnail(null);
		}else {
			episodeDTO.setThumbnail(dbPath + "episodeThumbnail/"
						+ episodeDTO.getThumbnailFile().getOriginalFilename());
			episodeDTO.getThumbnailFile().transferTo(new File(path + "episodeThumbnail/"
					+ episodeDTO.getThumbnailFile().getOriginalFilename()));
		}
		int index = 0;
		for(int i = 0; i < images.size(); i++) {
			if(images.get(i).getSize() != 0) {
				imageList.add(new ImageDTO(index++, -1, dbPath+categoryName+"/"+images.get(i).getOriginalFilename()));
				images.get(i).transferTo(new File(path+categoryName+"/"+images.get(i).getOriginalFilename()));
			}
		}

		System.out.println("image index : " + imageList.size());
		
		authorService.episodeUpload(episodeDTO, imageList);
		
		return "redirect:/webtoon/webtoonPage/"+episodeDTO.getWebtoonCode();
	}
	
	/**
	 * �۰������������
	 * @return
	 */
	@RequestMapping("madeAuthorPage")
	public String madeAuthorPage(HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserDTO userDTO = (UserDTO) session.getAttribute("userDTO");
		session.setAttribute("userDTO", authorService.madeAuthorPage(userDTO));
		List<WebtoonDTO> list = authorService.getSerialWebtoon(userDTO.getNickname());
		session.setAttribute("webtoonList", list);
		return "myInfo/authorpage";
	}
}