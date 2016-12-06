package brainburst.tt.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import brainburst.tt.dto.ApplicationForPayWebtoonDTO;
import brainburst.tt.dto.UserDTO;

@Repository
public class AdministratorDAOImpl implements AdministratorDAO {

	
	@Autowired
	private SqlSession sqlSession; 	
	@Autowired
	private ApplicationForPayWebtoonDTO applicationForPayWebtoonDTO;
	
	@Override
	public UserDTO adminLogin(String email, String password) {
	
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		map.put("password", password);
		
		UserDTO adminAccount	= sqlSession.selectOne("adminPayWebtoonMapper.adminLogin",map);
		
		return adminAccount;

	
	}
		
	
	
	@Override
	public List<ApplicationForPayWebtoonDTO> searchForPayWebtoonList() {
		
	 List<ApplicationForPayWebtoonDTO> forPayWebtoonlist = sqlSession.selectList("adminPayWebtoonMapper.searchForPayWebtoonList");
		
		return forPayWebtoonlist;
	}

}
