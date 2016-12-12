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
public class WebtoonDAOImpl implements WebtoonDAO {
	@Autowired
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
	public Boolean checkNickname(int webtoonCode) {
		if (sqlSession.selectOne("webtoonMapper.checkNickname", webtoonCode) != null) {
			return true;
		}
		return false;
	}

	@Override
	public List<EpisodeDTO> selectAllEpisode(int webtoonCode) {
		return sqlSession.selectOne("webtoonMapper.selectAllEpisode", webtoonCode);
	}

	@Override
	public List<String> selectImg(int epicsodeSequence) {
		return sqlSession.selectOne("webtoonMapper.selectImg", epicsodeSequence);
	}

	@Override
	public int addSubscription(String email, String webtoonCode) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		map.put("webtoonCode", webtoonCode);
		return sqlSession.insert("webtoonMapper.addSubscription", map);
	}

	@Override
	public int addRecommend(String email, int epicsodeSequence) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		//스트링으로 변경해서 넣었는데 오류발생시 수정요망
		map.put("webtoonCode", Integer.toString(epicsodeSequence));
		return sqlSession.insert("webtoonMapper.addSubscription", map);
	}

	@Override
	public int addReport(String content, String email, String webtoonCode, int epicsodeSequence) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("content", content);
		map.put("email", email);
		map.put("webtoonCode", webtoonCode);
		map.put("epicsodeSequence", Integer.toString(epicsodeSequence));
		return sqlSession.insert("webtoonMapper.addReport", map);
	}

}
