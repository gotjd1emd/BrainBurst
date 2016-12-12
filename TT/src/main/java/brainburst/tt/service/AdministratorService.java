package brainburst.tt.service;

import brainburst.tt.dto.UserDTO;

public interface AdministratorService {

	UserDTO adminLogin(String email, String password);
	
}
