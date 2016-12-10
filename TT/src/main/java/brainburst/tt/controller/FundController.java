package brainburst.tt.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.WebtoonDTO;
import brainburst.tt.service.FundService;

@Controller
@RequestMapping("Fund")
public class FundController {
	
	private FundService fundService;
	/**
	�۰��������� �ݵ������� Ŭ���� ��, �ݵ������� ���� ���, 
	���������Ǽҵ��� �ݵ����� ������ ������ �̵�,
	 */
	@RequestMapping("fundPage")
	public ModelAndView fundPage(HttpServletRequest request, String nickname) {
		List<WebtoonDTO> list = fundService.fundPage(nickname);
		return new ModelAndView("fund/fundPage", "webtoonList", list);
	}
	
	/**
	�ݵ��������� ��ǰ�� ��������,
	�ش� ��ǰ�� ���Ǽҵ��ϰ� ���Ǽҵ帶�� �ݵ������� ������ �ϴܿ� �񵿱�ȭ������� �ѷ���
	*/
	@RequestMapping("{webtoonCode}")
	public List<EpisodeDTO> showEpisodes(@PathVariable("webtoonCode") String webtoonCode) {
		List<EpisodeDTO> list = null;
		return list;
	}
	
	/**
	�ݵ�Ȱ��ȭ(�ݵ���������)���
	����...�������غ���
	*/
	@RequestMapping("startfund")
	public void startfund() {
		
	}
	
	/**
	�ݵ��������� ����Ŭ���� ������ ���̾˷α׿��� �ݵ���û��
	@price : �Էµ� �ݵ��ݾ�
	*/
	@RequestMapping()
	public void joinfund(int price) {
		String email = null;
		
	}
}