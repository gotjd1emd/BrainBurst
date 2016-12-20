package brainburst.tt.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.WebtoonDTO;

@Repository
public class FundDAOImpl implements FundDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<WebtoonDTO> fundPage(String nickname) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Integer> selectFundingWebtoonCode() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int lateEpisode(int webtoonCode, String date) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int webtoonPause(int webtoonCode) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public EpisodeDTO meetADeadlineWebtoon(int webtoonCode, String date) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int startFunding(int webtoonCode, int episodeNumber) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectEpisodeFund(int webtoonCode, int episodeNumber) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int addPenalty(int webtoonCode) {
		// TODO Auto-generated method stub
		return 0;
	}

}
