package brainburst.tt.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import brainburst.tt.dto.AdditionalInfoDTO;
import brainburst.tt.dto.UserDTO;

@Repository
public class UserDAOImpl implements UserDAO{
	
	/*@Autowired
	private SqlSession sqlSession;*/
	
	/**
	 * 로그인하기
	 * */
	@Override
	public UserDTO login(String email, String password) {
//		sqlSession.selectOne("userMapper.login", );
		return null;
	}

	@Override
	public void signUp(UserDTO userDto) {
		
	}

	@Override
	public void addtionalInfo(AdditionalInfoDTO additionalInfoDTO) {
		
	}

	@Override
	public boolean checkId(String id) {
		return false;
	}

}
