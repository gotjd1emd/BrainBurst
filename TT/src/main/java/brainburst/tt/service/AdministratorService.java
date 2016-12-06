package brainburst.tt.service;

import java.util.List;

import brainburst.tt.dto.ApplicationForPayWebtoonDTO;
import brainburst.tt.dto.UserDTO;

public interface AdministratorService {

	
	
	UserDTO adminLogin(String email, String password);
	
	List<ApplicationForPayWebtoonDTO> searchForPayWebtoonList();
	
	
	
}
