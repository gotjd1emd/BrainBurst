package brainburst.tt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import brainburst.tt.dao.AdministratorDAO;
import brainburst.tt.dto.ApplicationForPayWebtoonDTO;
import brainburst.tt.dto.UserDTO;

@Service
public class AdministratorServiceImpl implements AdministratorDAO {

	@Autowired
	private AdministratorDAO administratorDAO;
		
	
	
	@Override
	public UserDTO adminLogin(String email, String password) {
		// TODO Auto-generated method stub
		return administratorDAO.adminLogin(email, password);
	}
	
	@Override
	public List<ApplicationForPayWebtoonDTO> searchForPayWebtoonList() {
			
		return administratorDAO.searchForPayWebtoonList();
	}


	
	
}
