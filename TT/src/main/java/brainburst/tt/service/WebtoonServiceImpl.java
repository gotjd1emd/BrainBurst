package brainburst.tt.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import brainburst.tt.dao.UserDAO;
import brainburst.tt.dao.WebtoonDAO;
import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.FundDTO;
import brainburst.tt.dto.ReportDTO;
import brainburst.tt.dto.WebtoonDTO;

@Service
@Transactional
public class WebtoonServiceImpl implements WebtoonService {
	@Autowired
	private WebtoonDAO webtoonDAO;
	@Autowired
	private UserDAO userDAO;

	@Override
	public List<WebtoonDTO> selectWebtoonByLevel(String webtoonLevel, String categoryCode, String email) {
		return webtoonDAO.selectWebtoonByLevel(webtoonLevel, categoryCode, email);
	}

	@Override
	public List<WebtoonDTO> searchByKeyword(String keyword, String email) {
		return webtoonDAO.searchByKeyword(keyword, email);
	}

	@Override
	public Boolean checkNickname(int webtoonCode, String nickname) {
		return webtoonDAO.checkNickname(webtoonCode, nickname);
	}
	
	@Override
	public List<EpisodeDTO> selectAllEpisode(int webtoonCode) {
		return webtoonDAO.selectAllEpisode(webtoonCode);
	}

	@Override
	public List<String> selectImg(int episodeSequence) {
		webtoonDAO.increaseHits(episodeSequence);
		return webtoonDAO.selectImg(episodeSequence);
	}

	@Override
	public List<WebtoonDTO> addSubscription(String email, int webtoonCode, String command) {
		if (command.equals("add")) {
			System.out.println("---------------------추가---------------------------");
			if (webtoonDAO.isSubscription(email, webtoonCode)) {
				webtoonDAO.addSubscription(email, webtoonCode);
				return userDAO.showListSubscription(email);
			}
		} else if (command.equals("del")) {
			System.out.println("---------------------삭제---------------------------");
			webtoonDAO.delSubscription(email, webtoonCode);
			return userDAO.showListSubscription(email);
		}
		
		return null;
	}
	
	@Override
	public int addRecommend(String email, int epicsodeSequence) {
		if (webtoonDAO.isRecommended(email, epicsodeSequence)) {
			webtoonDAO.addRecommend(email, epicsodeSequence);
			webtoonDAO.updateRecommendation(epicsodeSequence);
			return webtoonDAO.selectNumsBySequence(epicsodeSequence).getRecommendation();
		}
		return -1;
	}

	@Override
	public int addReport(ReportDTO reportDTO) {
		return webtoonDAO.addReport(reportDTO);
	}

	@Override
	public WebtoonDTO selecltWebtoonByCode(int episodeSequence) {
		return webtoonDAO.selecltWebtoonByCode(episodeSequence);
	}

	@Override
	public EpisodeDTO selectNumsBySequence(int episodeSequence) {
		return webtoonDAO.selectNumsBySequence(episodeSequence);
	}
	
	@Override
	public WebtoonDTO selectWebtoon(int webtoonCode, String email) {
		return webtoonDAO.selectWebtoon(webtoonCode, email);
	}
	
	@Override
	public Map<String, Object> modifyEpisodePage(int episodeSequence) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		WebtoonDTO webtoonDTO = webtoonDAO.selecltWebtoonByCode(episodeSequence);
		EpisodeDTO episodeDTO = webtoonDAO.selectNumsBySequence(episodeSequence);
		List<String> imageList = webtoonDAO.selectImg(episodeSequence);
		String thumbnailPath = episodeDTO.getThumbnail();
		
		for(int i = 0; i < imageList.size(); i++) {
			String[] path = imageList.get(i).split("/");
			imageList.set(i, path[path.length-1]);
		}
		
		if(episodeDTO.getThumbnail() != null) {
			String[] path = episodeDTO.getThumbnail().split("/");
			episodeDTO.setThumbnail(path[path.length-1]);
		}
		
		map.put("webtoonDTO", webtoonDTO);
		map.put("imageList", imageList);
		map.put("episodeDTO", episodeDTO);
		map.put("thumbnailPath", thumbnailPath);
		
		return map;
	}

	@Override
	public List<WebtoonDTO> selectMyWebtoon(String nickname) {
		return webtoonDAO.selectMyWebtoon(nickname);
	}

	@Override
	public List<WebtoonDTO> selectMyCompleteWebtoon(String nickname) {
		return webtoonDAO.selectMyCompleteWebtoon(nickname);
	}

	@Override
	public int webtoonStateChange(WebtoonDTO webtoonDTO) {
		return webtoonDAO.webtoonStateChange(webtoonDTO);
	}
	
	@Override
	public Map<String, Object> fundingEpisodeList(int webtoonCode) {
		List<EpisodeDTO> episodeList = webtoonDAO.selectFundingWebtoonEpisode(webtoonCode);
		FundDTO fundDTO = webtoonDAO.selectCurrentFundingEpisode(webtoonCode);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("episodeList", episodeList);
		map.put("fundDTO", fundDTO);
		
		return map;
	}
	
	@Override
	public Map<String, Object> myFundingEpisodeList(int webtoonCode) {
		List<EpisodeDTO> episodeList = webtoonDAO.selectMyFundingEpisodeList(webtoonCode);
		FundDTO fundDTO = webtoonDAO.selectCurrentFundingEpisode(webtoonCode);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("episodeList", episodeList);
		map.put("fundDTO", fundDTO);
		
		return map;
	}
	
	@Override
	public FundDTO selectCurrentFundingEpisode(int webtoonCode) {
		return webtoonDAO.selectCurrentFundingEpisode(webtoonCode);
	}
	
	@Override
	public int fundEpisodeCheck(int webtoonCode) {
		return webtoonDAO.fundEpisodeCheck(webtoonCode);
	}
}
