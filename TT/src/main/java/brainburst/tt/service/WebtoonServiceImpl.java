package brainburst.tt.service;

import java.util.List;

import org.springframework.stereotype.Service;

import brainburst.tt.dao.WebtoonDAO;
import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.WebtoonDTO;

@Service
public class WebtoonServiceImpl implements WebtoonService {
	
	private WebtoonDAO webtoonDAO;

	@Override
	public List<WebtoonDTO> selectWebtoonByLevel(String webtoonLevel, String categoryCode) {
		return webtoonDAO.selectWebtoonByLevel(webtoonLevel, categoryCode);
	}

	@Override
	public List<WebtoonDTO> searchByKeyword(String keyword) {
		return webtoonDAO.searchByKeyword(keyword);
	}

	@Override
	public Boolean checkNickname(int webtoonCode) {
		return webtoonDAO.checkNickname(webtoonCode);
	}
	
	@Override
	public List<EpisodeDTO> selectAllEpisode(int webtoonCode) {
		return webtoonDAO.selectAllEpisode(webtoonCode);
	}

	@Override
	public List<String> selectImg(int episodeSequence) {
		return webtoonDAO.selectImg(episodeSequence);
	}

	@Override
	public int addSubscription(String email, String webtoonCode) {
		return webtoonDAO.addSubscription(email, webtoonCode);
	}
	
	@Override
	public int addRecommend(String email, int epicsodeSequence) {
		return webtoonDAO.addRecommend(email, epicsodeSequence);
	}
}
