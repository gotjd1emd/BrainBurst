package brainburst.tt.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.ReportDTO;
import brainburst.tt.dto.WebtoonDTO;

@Repository
public class WebtoonDAOImpl implements WebtoonDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<WebtoonDTO> selectWebtoonByLevel(String webtoonLevel, String categoryCode, String email) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("webtoonLevel", webtoonLevel);
		map.put("categoryCode", categoryCode);
		map.put("email", email);
		return sqlSession.selectList("webtoonMapper.selectWebtoonByLevel", map);
	}

	@Override
	public List<WebtoonDTO> searchByKeyword(String keyword) {
		keyword = "%"+keyword+"%";
		return sqlSession.selectList("webtoonMapper.searchByKeyword", keyword);
	}

	@Override
	public Boolean checkNickname(int webtoonCode, String nickname) {
		if (sqlSession.selectOne("webtoonMapper.checkNickname", webtoonCode).equals(nickname)) {
			return true;
		}
		return false;
	}

	@Override
	public List<EpisodeDTO> selectAllEpisode(int webtoonCode) {
		return sqlSession.selectList("webtoonMapper.selectAllEpisode", webtoonCode);
	}

	@Override
	public List<String> selectImg(int epicsodeSequence) {
		return sqlSession.selectList("webtoonMapper.selectImg", Integer.toString(epicsodeSequence));
	}

	@Override
	public int addSubscription(String email, int webtoonCode) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		map.put("webtoonCode", Integer.toString(webtoonCode));
		return sqlSession.insert("webtoonMapper.addSubscription", map);
	}

	@Override
	public int addRecommend(String email, int epicsodeSequence) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		map.put("epicsodeSequence", Integer.toString(epicsodeSequence));
		return sqlSession.insert("webtoonMapper.addRecommend", map);
	}

	@Override
	public int addReport(ReportDTO reportDTO) {
		return sqlSession.insert("webtoonMapper.addSubscription", reportDTO);
	}

	@Override
	public WebtoonDTO selecltWebtoonByCode(int episodeSequence) {
		return sqlSession.selectOne("webtoonMapper.selectWebtoonByCode", episodeSequence);
	}

	@Override
	public EpisodeDTO selectNumsBySequence(int episodeSequence) {
		return sqlSession.selectOne("webtoonMapper.selectNumsBySequence", episodeSequence);
	}

	@Override
	public int updateRecommendation(int episodeSequence) {
		return sqlSession.update("webtoonMapper.updateRecommendation", episodeSequence);
	}

	@Override
	public Boolean isRecommended(String email, int episodeSequence) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		map.put("episodeSequence", Integer.toString(episodeSequence));
		if (sqlSession.selectOne("webtoonMapper.isRecommended", map)==null) {
			return true;
		}
		return false;
	}

	@Override
	public Boolean isSubscription(String email, int webtoonCode) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		map.put("episodeSequence", Integer.toString(webtoonCode));
		if (sqlSession.selectOne("webtoonMapper.isRecommended", map)==null) {
			return true;
		}
		return false;
	}
	
}
