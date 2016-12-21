package brainburst.tt.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		return sqlSession.selectList("fundMapper.selectFundingWebtoonCode");
	}

	@Override
	public int lateEpisode(int webtoonCode, String date) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("webtoonCode", webtoonCode);
		map.put("date", date);
		
		return sqlSession.selectOne("fundMapper.lateEpisode", map);
	}

	@Override
	public int webtoonPause(int webtoonCode, String penalty) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("webtoonCode", webtoonCode);
		map.put("penalty", penalty);
		
		return sqlSession.update("fundMapper.webtoonPause", map);
	}

	@Override
	public EpisodeDTO meetADeadlineWebtoon(int webtoonCode, String date) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("webtoonCode", webtoonCode);
		map.put("date", date);
		
		return sqlSession.selectOne("fundMapper.meetADeadlineWebtoon", map);
	}

	@Override
	public int startFunding(int webtoonCode, int episodeNumber) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("webtoonCode", webtoonCode);
		map.put("episodeNumber", episodeNumber);
		
		return sqlSession.insert("fundMapper.startFunding", map);
	}

	@Override
	public int selectEpisodeFund(int webtoonCode, int episodeNumber) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("webtoonCode", webtoonCode);
		map.put("episodeNumber", episodeNumber);
		
		return sqlSession.selectOne("fundMapper.selectEpisodeFund", map);
	}

	@Override
	public int addPenalty(int webtoonCode, String penalty) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("webtoonCode", webtoonCode);
		map.put("penalty", penalty);
		
		return sqlSession.update("fundMapper.addPenalty", map);
	}

	@Override
	public String selectPenalty(int webtoonCode) {
		return sqlSession.selectOne("fundMapper.selectPenalty", webtoonCode);
	}
}
