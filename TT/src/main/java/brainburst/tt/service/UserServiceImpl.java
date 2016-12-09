package brainburst.tt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import brainburst.tt.dao.UserDAO;
import brainburst.tt.dto.AdditionalInfoDTO;
import brainburst.tt.dto.CashHistoryDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

@Service
@Transactional
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDAO userDAO;
		
	//회원가입
	@Override
	public int signUp(UserDTO userDTO){
		int result = 0;
		// 아이디 체크 ( 중복체크 후 가입 가능 상태시 result에 1저장)
		result = userDAO.checkId(userDTO.getEmail());
		
		System.out.println("중복체크완료");
		
		if(result==1){
			//회원가입 ( 완료시 result에 1저장)
			result = userDAO.signUp(userDTO);
		}
		return result;
	}
	
	//로그인
	@Override
	public UserDTO login(UserDTO userDTO) {
		return userDAO.login(userDTO);
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

	@Override
	public int userDelete(UserDTO userDTO) {
		return userDAO.userDelete(userDTO.getEmail());
	}

	@Override
	public int addtionalInfo(AdditionalInfoDTO additionalInfoDTO) {
		return userDAO.addtionalInfo(additionalInfoDTO);
	}


	@Override
	public UserDTO userUpdate(UserDTO userDTO) {
		int result = userDAO.userUpdate(userDTO);

		return userDAO.userInfoSelect(userDTO.getEmail());
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
	
}
