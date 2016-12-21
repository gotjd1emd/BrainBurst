package brainburst.tt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import brainburst.tt.dao.FundDAO;
import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.WebtoonDTO;

@Service
public class FundServiceImpl implements FundService {
	
	@Autowired
	private FundDAO fundDAO;

	@Override
	public List<WebtoonDTO> fundPage(String nickname) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int episodeTimeOutCheck(String deadline) {
		List<Integer> fundWebtoonCode = fundDAO.selectFundingWebtoonCode();
		int lateWebtoonCode = 0;
		String currentPenalty = "";
		int result = 0;
		
		for(int webtoonCode : fundWebtoonCode) {
			lateWebtoonCode = fundDAO.lateEpisode(webtoonCode, deadline);
			currentPenalty = fundDAO.selectPenalty(lateWebtoonCode);
			
			if(currentPenalty.equals("green")) {
				currentPenalty = "yellow";
			}else if(currentPenalty.equals("yellow")) {
				currentPenalty = "red";
			}else {
				currentPenalty = "red";
			}
			
			result = fundDAO.webtoonPause(lateWebtoonCode, currentPenalty);
		}
		
		return result;
	}

	@Override
	public int startFunding(String today) {
		List<Integer> fundWebtoonCode = fundDAO.selectFundingWebtoonCode();
		EpisodeDTO serialWebtoonEpisode = null;
		String currentPenalty = "";
		int episodeFund = 0;
		int result = 0;
		
		for(int webtoonCode : fundWebtoonCode) {
			serialWebtoonEpisode = fundDAO.meetADeadlineWebtoon(webtoonCode, today);
			currentPenalty = fundDAO.selectPenalty(serialWebtoonEpisode.getWebtoonCode());
			
			if(currentPenalty.equals("green")) {
				currentPenalty = "yellow";
			}else if(currentPenalty.equals("yellow")) {
				currentPenalty = "red";
			}else {
				currentPenalty = "red";
			}
			
			result = fundDAO.startFunding(serialWebtoonEpisode.getWebtoonCode(), 
						serialWebtoonEpisode.getEpisodeNumber()+1);
			
			episodeFund = fundDAO.selectEpisodeFund(serialWebtoonEpisode.getWebtoonCode(), 
							serialWebtoonEpisode.getEpisodeNumber()+1);
			
			if(episodeFund < 400) {
				result = fundDAO.addPenalty(serialWebtoonEpisode.getWebtoonCode(), currentPenalty);
			}
		}
		
		return result;
	}

}
