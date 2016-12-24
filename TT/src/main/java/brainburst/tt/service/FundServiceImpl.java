package brainburst.tt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import brainburst.tt.dao.FundDAO;
import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.WebtoonDTO;

@Service
@Transactional
public class FundServiceImpl implements FundService {
	
	@Autowired
	private FundDAO fundDAO;

	@Override
	public List<WebtoonDTO> fundPage(String nickname) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int episodeTimeOutCheck() {
		List<Integer> lateWebtoonCodeList = fundDAO.lateEpisode();
		String currentPenalty = "";
		int result = 0;
		
		for(int lateWebtoonCode : lateWebtoonCodeList) {
			currentPenalty = fundDAO.selectPenalty(lateWebtoonCode);
			
			if(currentPenalty.equals("green")) {
				currentPenalty = "yellow";
			}else if(currentPenalty.equals("yellow")) {
				currentPenalty = "red";
			}else {
				currentPenalty = "red";
			}
			System.out.println("¸¶°¨ ¸ø¸ÂÃá À¥Å÷ ÄÚµå : " + lateWebtoonCode);
			result = fundDAO.webtoonPause(lateWebtoonCode, currentPenalty);
		}
		
		return result;
	}

	@Override
	public int startFunding() {
		List<EpisodeDTO> serialWebtoonEpisodee = fundDAO.meetADeadlineWebtoon();
		String currentPenalty = "";
		int episodeFund = 0;
		int result = 0;
		
		for(EpisodeDTO episode : serialWebtoonEpisodee) {
			currentPenalty = fundDAO.selectPenalty(episode.getWebtoonCode());
			
			if(currentPenalty.equals("green")) {
				currentPenalty = "yellow";
			}else if(currentPenalty.equals("yellow")) {
				currentPenalty = "red";
			}else {
				currentPenalty = "red";
			}
			
			result = fundDAO.startFunding(episode.getWebtoonCode(), 
						episode.getEpisodeNumber()+1);
			
			episodeFund = fundDAO.selectEpisodeFund(episode.getFundCode());
			System.out.println("¸¶°¨ÀÏÀ» ¸ÂÃá À¥Å÷ ÄÚµå : " + episode.getWebtoonCode());
			if(episodeFund < 400) {
				result = fundDAO.addPenalty(episode.getWebtoonCode(), currentPenalty);
			}
		}
		
		return result;
	}

}
