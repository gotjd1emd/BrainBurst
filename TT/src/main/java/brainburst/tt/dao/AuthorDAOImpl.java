package brainburst.tt.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import brainburst.tt.dto.WebtoonDTO;

@Repository
public class AuthorDAOImpl implements AuthorDAO {
	private SqlSession sqlSession;
	
	@Override
	public List<WebtoonDTO> getMyWebtoon(String nickname) {
		
		return null;
	}
}