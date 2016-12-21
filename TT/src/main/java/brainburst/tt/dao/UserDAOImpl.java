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
	public UserDTO checkId(String email) {
		return sqlSession.selectOne("userMapper.checkId", email);
	}

	//회원가입
	@Override
	public int signUp(UserDTO userDTO) {
		System.out.println(userDTO);
		return sqlSession.insert("userMapper.signUp", userDTO);
	}

	//로그인
	@Override
	public UserDTO login(UserDTO userDTO) {
		return sqlSession.selectOne("userMapper.login", userDTO);
	}

	//추가정보입력
	@Override
	public int addtionalInfo(AdditionalInfoDTO additionalInfoDTO) {
		return sqlSession.insert("userMapper.additionalInfo", additionalInfoDTO);
	}
	
	//회원정보 가져오기
	@Override
	public UserDTO userInfoSelect(String email) {
		return sqlSession.selectOne("userMapper.userInfoSelect", email);
	}

	//비밀번호찾기
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
		return sqlSession.selectList("userMapper.showListSubscription", email);
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
		return sqlSession.selectList("userMapper.THistoryList", email);
	}
	
	//T 충전
	@Override
	public int CashCharge(UserDTO userDTO) {
		System.out.println("cashCharge직전");
		return sqlSession.update("userMapper.cashCharge", userDTO);
	}

	//CashHistory insert
	@Override
	public int CashHistoryInsert(CashHistoryDTO cashHistoryDTO) {
		return sqlSession.insert("userMapper.cashHistoryInsert", cashHistoryDTO);
	}

	@Override
	public UserDTO applyAuthor(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String findPassword(UserDTO userDTO) {
		String password = sqlSession.selectOne("userMapper.findPassword", userDTO);
		return password;
	}

	@Override
	public String findEmail(UserDTO userDTO) {
		String email = sqlSession.selectOne("userMapper.findEmail", userDTO);
		System.out.println(email);
		return email;
	}
	
	//닉네임 체크
	@Override
	public String nickNameCheck(String nickname) {
		return sqlSession.selectOne("checkNickName", nickname);
	}

}
