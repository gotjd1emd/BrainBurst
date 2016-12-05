package brainburst.tt.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import brainburst.tt.dto.AdditionalInfoDTO;
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
	public UserDTO login(String email, String passwords) {
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
	public int userCheckByPassword(String email, String password) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int userDelete(String email, String password) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserDTO userUpdate(UserDTO userDto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<WebtoonDTO> showListSubscription(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int applySubscription(String email, String webtoonCode) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteSubscription(String email, String webtoonCode) {
		// TODO Auto-generated method stub
		return 0;
	}
	

}
