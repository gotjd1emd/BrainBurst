package brainburst.tt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import brainburst.tt.dao.UserDAO;
import brainburst.tt.dto.AdditionalInfoDTO;
import brainburst.tt.dto.UserDTO;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDAO userDAO;
	
	@Override
	public UserDTO login(String email, String password) {
		UserDTO userDto = userDAO.login(email, password);
		return userDto;
	}

	@Override
	public void signUp(UserDTO userDto) {
		
	}

	@Override
	public void addtionInfo(AdditionalInfoDTO additionalInfoDTO) {
		
	}
}
