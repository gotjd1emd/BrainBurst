package brainburst.tt.dao;

import java.util.HashMap;
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
		System.out.println("userSnowDAO입니다");
		return sqlSession.update("adminMapper.userSnow", email);
	}

	@Override
	public int userMelt(String email) {
		System.out.println("userMeltDAO입니다");
		return sqlSession.update("adminMapper.userMelt", email);
	}

	@Override
	public int webtoonState(int webtoonCode, String state) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("webtoonCode", webtoonCode);
		map.put("state", state);
		return sqlSession.update("adminMapper.webtoonState", map);
	}

	@Override
	public int webtoonLevel(int webtoonCode, String level) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("webtoonCode", webtoonCode);
		map.put("level", level);
		return sqlSession.update("adminMapper.webtoonLevel", map);
	}
}
