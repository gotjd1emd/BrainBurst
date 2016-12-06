package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.WebtoonDTO;

public class WebtoonDAOImpl implements WebtoonDAO {

	@Override
	public List<WebtoonDTO> selectWebtoonByLevel(String webtoonLevel, String category) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<WebtoonDTO> searchByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean checkNickname(String webtoonCode) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<EpisodeDTO> selectAllEpisode(String webtoonCode) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<String> selectImg(String epicsodeSequence) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addSubscription(String email, String webtoonCode) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int addRecommend(String email, int epicsodeSequence) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int addReport(String email, String webtoonCode, int epicsodeSequence) {
		// TODO Auto-generated method stub
		return 0;
	}

}
