package brainburst.tt.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.FundDTO;
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
	public List<WebtoonDTO> searchByKeyword(String keyword, String email) {
		keyword = "%"+keyword+"%";
		Map<String, String> map = new HashMap<String, String>();
		map.put("keyword", keyword);
		map.put("email", email);
		
		
		return sqlSession.selectList("webtoonMapper.searchByKeyword", map);
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
	public List<String> selectImg(int episodeSequence) {
		return sqlSession.selectList("webtoonMapper.selectImg", episodeSequence);
	}
	
	@Override
	public int addSubscription(String email, int webtoonCode) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		map.put("webtoonCode", Integer.toString(webtoonCode));
		return sqlSession.insert("webtoonMapper.addSubscription", map);
	}

	@Override
	public int delSubscription(String email, int webtoonCode) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		map.put("webtoonCode", Integer.toString(webtoonCode));
		return sqlSession.delete("webtoonMapper.delSubscription", map);
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
		if (sqlSession.selectOne("webtoonMapper.isRecommended", map)!=null) {
			return false;
		}
		return true;
	}

	@Override
	public Boolean isSubscription(String email, int webtoonCode) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		map.put("webtoonCode", Integer.toString(webtoonCode));
		if (sqlSession.selectOne("webtoonMapper.isSubscription", map)!=null) {
			return false;
		}
		return true;
	}

	@Override
	public void increaseHits(int episodeSequence) {
		sqlSession.update("webtoonMapper.increaseHits", episodeSequence);
	}
	
	@Override
	public WebtoonDTO selectWebtoon(int webtoonCode, String email) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		map.put("webtoonCode", Integer.toString(webtoonCode));
		return sqlSession.selectOne("webtoonMapper.selectWebtoon", map);
	}

	@Override
	public List<WebtoonDTO> selectMyWebtoon(String nickname) {
		return sqlSession.selectList("webtoonMapper.selectMyWebtoon", nickname);
	}

	@Override
	public List<WebtoonDTO> selectMyCompleteWebtoon(String nickname) {
		return sqlSession.selectList("webtoonMapper.selectMyCompleteWebtoon", nickname);
	}

	@Override
	public int webtoonStateChange(WebtoonDTO webtoonDTO) {
		return sqlSession.update("webtoonMapper.webtoonStateChange", webtoonDTO);
	}

	@Override
	public List<EpisodeDTO> selectFundingWebtoonEpisode(int webtoonCode) {
		return sqlSession.selectList("webtoonMapper.selectFundingWebtoonEpisode", webtoonCode);
	}
	
	@Override
	public FundDTO selectCurrentFundingEpisode(int webtoonCode) {
		return sqlSession.selectOne("webtoonMapper.selectCurrentFundingEpisode", webtoonCode);
	}
	
	@Override
	public List<EpisodeDTO> selectMyFundingEpisodeList(int webtoonCode) {
		return sqlSession.selectList("webtoonMapper.selectMyFundingEpisodeList", webtoonCode);
	}
}
