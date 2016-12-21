package brainburst.tt.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.ImageDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

@Repository
public class AuthorDAOImpl implements AuthorDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<WebtoonDTO> getMyWebtoon(String nickname, String webtoonState) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("nickname", nickname);
		map.put("webtoonState", webtoonState);
		return sqlSession.selectList("authorMapper.getMyWebtoon", map);
	}

	@Override
	public int madeAuthorPage(UserDTO userDTO) {
		return sqlSession.update("authorMapper.madeAuthorPage", userDTO.getEmail());
	}

	@Override
	public UserDTO updateUserInfo(UserDTO userDTO) {
		return sqlSession.selectOne("userMapper.login", userDTO);
	}
	
	@Override
	public String selectCategoryName(int webtoonCode) {
		return sqlSession.selectOne("authorMapper.categoryName", webtoonCode);
	}
	
	@Override
	public int episodeUpload(EpisodeDTO episodeDTO) {
		return sqlSession.insert("authorMapper.episodeUpload", episodeDTO);
	}
	
	@Override
	public int selectEpisodeSequence(int webtoonCode, int episodeNumber) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("webtoonCode", webtoonCode);
		map.put("episodeNumber", episodeNumber);
		
		return sqlSession.selectOne("authorMapper.episodeSequence", map);
	}
	
	@Override
	public int insertEpisodeImage(ImageDTO imageDTO) {
		return sqlSession.insert("authorMapper.episodeImageUpload", imageDTO);
	}
	
	@Override
	public int modifyEpisode(EpisodeDTO episodeDTO) {
		return sqlSession.update("authorMapper.modifyEpisode", episodeDTO);
	}
	
	@Override
	public int modifyImage(ImageDTO imageDTO) {
		return sqlSession.update("authorMapper.modifyImage", imageDTO);
	}
	
	@Override
	public int deleteImage(ImageDTO imageDTO) {
		return sqlSession.delete("authorMapper.deleteImage", imageDTO);
	}
}