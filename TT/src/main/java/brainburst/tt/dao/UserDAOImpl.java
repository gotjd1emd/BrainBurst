package brainburst.tt.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import brainburst.tt.dto.AdditionalInfoDTO;
import brainburst.tt.dto.CashHistoryDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

@Repository
public class UserDAOImpl implements UserDAO{

	@Override
	public int checkId(String email) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserDTO login(UserDTO userDTO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int signUp(UserDTO userDto) {
		// TODO Auto-generated method stub
		return 0;
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

	@Override
	public int userDelete(UserDTO userDTO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserDTO userUpdate(UserDTO userDTO) {
		// TODO Auto-generated method stub
		return null;
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
