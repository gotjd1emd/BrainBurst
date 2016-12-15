package brainburst.tt.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}