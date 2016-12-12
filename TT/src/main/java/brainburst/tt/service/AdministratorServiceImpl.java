package brainburst.tt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import brainburst.tt.dao.AdministratorDAO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

@Service
public class AdministratorServiceImpl implements AdministratorService{

	@Autowired
	private AdministratorDAO administratorDAO;
	
	@Override
	public List<UserDTO> userManage() {
		System.out.println("userList Service");
		List<UserDTO> userList = administratorDAO.userManage();
		return userList;
	}

	@Override
	public List<WebtoonDTO> webtoonManage() {
		List<WebtoonDTO> webtoonList = administratorDAO.webtoonManage();
		
		System.out.println("Service webtoonList : "+webtoonList);

		return webtoonList;
	}

}
