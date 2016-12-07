package brainburst.tt.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import brainburst.tt.dto.AdditionalInfoDTO;
import brainburst.tt.dto.CashHistoryDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

@Repository
public class UserDAOImpl implements UserDAO{
	
	@Autowired
	private SqlSession sqlSession; 
	
	private UserDTO userDTO;
	
	//아이디 중복체크
	@Override
	public int checkId(String email) {
		int result = 0;
		
		userDTO = sqlSession.selectOne("userMapper.checkId", email);
		
		if(userDTO != null){
			result = 1;
		}
		
		return result;
	}

	//회원가입
	@Override
	public int signUp(String email) {
		return sqlSession.insert("userMapper.signUp", email);
	}

	//로그인
	@Override
	public UserDTO login(UserDTO userDTO) {
		return sqlSession.selectOne("userMapper.login", userDTO);
	}


	@Override
	public int addtionalInfo(AdditionalInfoDTO additionalInfoDTO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int userCheckByPassword(UserDTO userDTO) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	//유저삭제
	@Override
	public int userDelete(String email) {
		return sqlSession.delete("userMapper.userDelete", email);
 	}

	@Override
	public int userUpdate(UserDTO userDTO) {
		return sqlSession.update("userMapper.userUpdate", userDTO);
	}

	@Override
	public List<WebtoonDTO> showListSubscription(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int applySubscription(WebtoonDTO webtoonDTO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteSubscription(WebtoonDTO webtoonDTO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<CashHistoryDTO> showListCashHistory(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int CashCharge(int cashPoint) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserDTO applyAuthor(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String findPassword(UserDTO userDTO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String findEmail(UserDTO userDTO) {
		// TODO Auto-generated method stub
		return null;
	}


}
