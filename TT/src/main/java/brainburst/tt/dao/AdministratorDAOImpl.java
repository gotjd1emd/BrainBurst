package brainburst.tt.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

@Repository
public class AdministratorDAOImpl implements AdministratorDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<UserDTO> userManage() {
		System.out.println("userDTO");
		return sqlSession.selectList("adminMapper.userManage");
	}

	@Override
	public List<WebtoonDTO> webtoonManage() {
		return sqlSession.selectList("adminMapper.webtoonManage");
	}

	@Override
	public int userSnow(String email) {
		return sqlSession.update("adminMapper.userSnow", email);
	} 	
}
