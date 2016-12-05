package brainburst.tt.dao;

import brainburst.tt.dto.AdditionalInfoDTO;
import brainburst.tt.dto.UserDTO;

public class UserDAOImpl implements UserDAO{
	
	/**
	 * 로그인하기
	 * */
	@Override
	public UserDTO login(String email, String password) {
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
