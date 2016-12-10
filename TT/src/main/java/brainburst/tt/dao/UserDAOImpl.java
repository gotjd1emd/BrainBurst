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
	
	//���̵� �ߺ�üũ
	@Override
	public UserDTO checkId(String email) {
		return sqlSession.selectOne("userMapper.checkId", email);
	}

	//ȸ������
	@Override
	public int signUp(UserDTO userDTO) {
		System.out.println(userDTO);
		return sqlSession.insert("userMapper.signUp", userDTO);
	}

	//�α���
	@Override
	public UserDTO login(UserDTO userDTO) {
		return sqlSession.selectOne("userMapper.login", userDTO);
	}

	//�߰������Է�
	@Override
	public int addtionalInfo(AdditionalInfoDTO additionalInfoDTO) {
		return sqlSession.insert("userMapper.additionalInfo", additionalInfoDTO);
	}
	
	//ȸ������ ��������
	@Override
	public UserDTO userInfoSelect(String email) {
		return sqlSession.selectOne("userMapper.userInfoSelect", email);
	}

	//��й�ȣã��
	@Override
	public int userCheckByPassword(UserDTO userDTO) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	//��������
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
	
	//T ����
	@Override
	public int CashCharge(UserDTO userDTO) {
		System.out.println("cashCharge����");
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String findEmail(UserDTO userDTO) {
		// TODO Auto-generated method stub
		return null;
	}

}
