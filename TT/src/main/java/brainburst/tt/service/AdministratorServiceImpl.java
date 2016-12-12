package brainburst.tt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import brainburst.tt.dao.AdministratorDAO;
import brainburst.tt.dto.UserDTO;

@Service
public class AdministratorServiceImpl implements AdministratorService{

	@Autowired
	private AdministratorDAO administratorDAO;
	
	@Override
	public UserDTO adminLogin(String email, String password) {
		return administratorDAO.adminLogin(email, password);
	}

}
