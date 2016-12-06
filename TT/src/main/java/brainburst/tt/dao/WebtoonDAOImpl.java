package brainburst.tt.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.WebtoonDTO;

public class WebtoonDAOImpl implements WebtoonDAO {
	
	private SqlSession sqlSession;
	
	@Override
	public List<WebtoonDTO> selectWebtoonByLevel(String webtoonLevel, String categoryCode) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("webtoonLevel", webtoonLevel);
		map.put("categoryCode", categoryCode);
		return sqlSession.selectList("webtoonMapper.selectWebtoonByLevel", map);
	}

	@Override
	public List<WebtoonDTO> searchByKeyword(String keyword) {
		return sqlSession.selectList("webtoonMapper.searchByKeyword", keyword);
	}

	@Override
	public Boolean checkNickname(String webtoonCode) {
		if (sqlSession.selectOne("webtoonMapper.checkNickname", webtoonCode) != null) {
			return true;
		}
		return false;
	}

	@Override
	public List<EpisodeDTO> selectAllEpisode(String webtoonCode) {
		return sqlSession.selectOne("webtoonMapper.checkNickname", webtoonCode);
	}

	@Override
	public List<String> selectImg(int epicsodeSequence) {
		
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
