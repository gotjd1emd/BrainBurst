package brainburst.tt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import brainburst.tt.dao.UserDAO;
import brainburst.tt.dto.AdditionalInfoDTO;
import brainburst.tt.dto.CashHistoryDTO;
import brainburst.tt.dto.FundApplyDTO;
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
		System.out.println("중복체크할 email : "+userDTO.getEmail());
		// 아이디 체크 ( 중복체크 후 가입 가능 상태시 result에 1저장)
		if(userDAO.checkId(userDTO.getEmail())==null){
			System.out.println("중복체크 후 결과 : "+userDTO.getEmail());
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
	public String findEmail(UserDTO userDTO) {
		return userDAO.findEmail(userDTO);
	}
	
	@Override
	public String findPassword(UserDTO userDTO) {
		return userDAO.findPassword(userDTO);
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
		userDAO.userUpdate(userDTO);

		return userDAO.userInfoSelect(userDTO.getEmail());
	}

	@Override
	public List<WebtoonDTO> showListSubscription(String email) {
		return userDAO.showListSubscription(email);
	}

	@Override
	public int applySubscription(WebtoonDTO webtoonDTO) {
		
		return 0;
	}

	@Override
	public int deleteSubscription(WebtoonDTO webtoonDTO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<CashHistoryDTO> showListCashHistory(String email) {
		return userDAO.showListCashHistory(email);
	}

	//T충전하기
	@Override
	public int CashCharge(UserDTO userDTO, CashHistoryDTO cashHistoryDTO) {
		userDAO.CashCharge(userDTO);
		System.out.println("충전완료");
		return userDAO.CashHistoryInsert(cashHistoryDTO);
	}

	@Override
	public UserDTO applyAuthor(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int emailCheck(String email) {
		int result;
		UserDTO userDTO = userDAO.checkId(email);
		if(userDTO == null){
			result = 0;
		}else{
			result = 1;
		}
		return result;
	}

	@Override
	public int nickNameCheck(String nickname) {
		int result;
		String nickName = userDAO.nickNameCheck(nickname);
		if(nickName==null){
			result = 0;
		}else{
			result = 1;
		}
		return result;
	}

	@Override
	public int fundApply(FundApplyDTO fundApplyDTO) {
		return userDAO.fundApply(fundApplyDTO);
	}
}
