package brainburst.tt.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;
import brainburst.tt.service.FundService;

@Controller
@RequestMapping("fund")
public class FundController {
	
	@Autowired
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
	* �ݵ� ����
	* @price : �Էµ� �ݵ��ݾ�
	*/
	@RequestMapping("joinFund")
	@ResponseBody
	public String joinFund(HttpServletRequest request, int cashPoint, int fundCode, String content) {
		UserDTO userDTO = (UserDTO)request.getSession().getAttribute("userDTO");
		System.out.println("cashPoint : " + cashPoint);
		System.out.println("fundCode : " + fundCode);
		System.out.println("content : " + content);
		String message = "";
		
		int result = fundService.joinFund(userDTO, cashPoint, fundCode, content);
		
		if(result == 0) {
			message = "fail";
		}else {
			message = "success";
		}
		
		return message;
	}
}
