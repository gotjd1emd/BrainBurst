package brainburst.tt.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import brainburst.tt.dao.UserDAO;
import brainburst.tt.dao.WebtoonDAO;
import brainburst.tt.dto.EpisodeDTO;
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
	public List<WebtoonDTO> searchByKeyword(String keyword) {
		return webtoonDAO.searchByKeyword(keyword);
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
	public List<WebtoonDTO> addSubscription(String email, int webtoonCode) {
		if (webtoonDAO.isSubscription(email, webtoonCode)) {
			webtoonDAO.addSubscription(email, webtoonCode);
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
	public WebtoonDTO selectWebtoon(int webtoonCode) {
		return webtoonDAO.selectWebtoon(webtoonCode);
	}
	
	@Override
	public Map<String, Object> modifyEpisodePage(int episodeSequence) {
		WebtoonDTO webtoonDTO = webtoonDAO.selecltWebtoonByCode(episodeSequence);
		List<String> imageList = webtoonDAO.selectImg(episodeSequence);
		EpisodeDTO episodeDTO = webtoonDAO.selectNumsBySequence(episodeSequence);
		return null;
	}
}
