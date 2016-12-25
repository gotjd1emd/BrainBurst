package brainburst.tt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import brainburst.tt.dao.FundDAO;
import brainburst.tt.dao.WebtoonDAO;
import brainburst.tt.dto.CashHistoryDTO;
import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.FundDTO;
import brainburst.tt.dto.PayHistoryDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

@Service
@Transactional
public class FundServiceImpl implements FundService {
	
	@Autowired
	private FundDAO fundDAO;
	@Autowired
	private WebtoonDAO webtoonDAO;

	@Override
	public List<WebtoonDTO> fundPage(String nickname) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int episodeTimeOutCheck() {
		List<FundDTO> lateWebtoonList = fundDAO.lateEpisode();
		UserDTO userDTO = null;
		CashHistoryDTO cashHistoryDTO = new CashHistoryDTO();
		String webtoonName = "";
		String currentPenalty = "";
		int result = 0;
		
		for(FundDTO lateWebtoon : lateWebtoonList) {
			currentPenalty = fundDAO.selectPenalty(lateWebtoon.getWebtoonCode());
			
			if(currentPenalty.equals("green")) {
				currentPenalty = "yellow";
			}else if(currentPenalty.equals("yellow")) {
				currentPenalty = "red";
			}else {
				currentPenalty = "red";
			}
			System.out.println("episode fund : " + lateWebtoon.getEpisodeFund());
			webtoonName = fundDAO.selectWebtoonName(lateWebtoon.getWebtoonCode());
			userDTO = fundDAO.selectFundUserEmail(lateWebtoon.getWebtoonCode()); 
			userDTO.setCashPoint(userDTO.getCashPoint()+lateWebtoon.getEpisodeFund());
			cashHistoryDTO.setCashPoint(lateWebtoon.getEpisodeFund());
			cashHistoryDTO.setEmail(userDTO.getEmail());
			cashHistoryDTO.setTradeState("ÆÝµå");
			cashHistoryDTO.setContent(webtoonName + " " + lateWebtoon.getEpisodeNumber() + "È­ ÆÝµå°á°ú");
			
			fundDAO.insertCashHistory(cashHistoryDTO);
			fundDAO.updateUserCashPoint(userDTO);
			
			System.out.println("¸¶°¨ ¸ø¸ÂÃá À¥Å÷ ÄÚµå : " + lateWebtoon.getWebtoonCode());
			result = fundDAO.webtoonPause(lateWebtoon.getWebtoonCode(), currentPenalty);
		}
		
		return result;
	}

	@Override
	public int startFunding() {
		List<EpisodeDTO> serialWebtoonEpisode = fundDAO.meetADeadlineWebtoon();
		UserDTO userDTO = null;
		CashHistoryDTO cashHistoryDTO = new CashHistoryDTO();
		String currentPenalty = "";
		String webtoonName = "";
		int episodeFund = 0;
		int result = 0;
		
		for(EpisodeDTO episode : serialWebtoonEpisode) {
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
			webtoonName = fundDAO.selectWebtoonName(episode.getWebtoonCode());
			userDTO = fundDAO.selectFundUserEmail(episode.getWebtoonCode()); 
			userDTO.setCashPoint(userDTO.getCashPoint()+episodeFund);
			cashHistoryDTO.setCashPoint(episodeFund);
			cashHistoryDTO.setEmail(userDTO.getEmail());
			cashHistoryDTO.setTradeState("ÆÝµå");
			cashHistoryDTO.setContent(webtoonName + " " + episode.getEpisodeNumber() + "È­ ÆÝµå°á°ú");
			
			fundDAO.insertCashHistory(cashHistoryDTO);
			fundDAO.updateUserCashPoint(userDTO);
			
			System.out.println("¸¶°¨ÀÏÀ» ¸ÂÃá À¥Å÷ ÄÚµå : " + episode.getWebtoonCode());
			if(episodeFund < 400) {
				result = fundDAO.addPenalty(episode.getWebtoonCode(), currentPenalty);
			}
		}
		
		return result;
	}

	@Override
	public int joinFund(UserDTO userDTO, int cashPoint, int fundCode, String content) {
		userDTO.setCashPoint(userDTO.getCashPoint()-cashPoint);
		CashHistoryDTO cashHistoryDTO = new CashHistoryDTO(userDTO.getEmail(), null, cashPoint, content, "ÆÝµù");
		PayHistoryDTO payHistoryDTO = new PayHistoryDTO(userDTO.getEmail(), fundCode, cashPoint, null, content);
		int result = 0;
		
		result = fundDAO.updateUserCashPoint(userDTO);
		result = fundDAO.insertCashHistory(cashHistoryDTO);
		result = fundDAO.updateEpisodeFund(fundCode, cashPoint);
		
		PayHistoryDTO fundCheck = webtoonDAO.fundingCheck(userDTO.getEmail(), fundCode);
		
		if(fundCheck == null) {
			result = fundDAO.insertPayHistory(payHistoryDTO);
		}else {
			result = fundDAO.addPayHistoryCashPoint(payHistoryDTO);
		}
		
		return result;
	}
}
