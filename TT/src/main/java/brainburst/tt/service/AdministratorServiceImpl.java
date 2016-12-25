package brainburst.tt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import brainburst.tt.dao.AdministratorDAO;
import brainburst.tt.dto.FundApplyDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

@Service
@Transactional
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

	@Override
	public int userSnow(String email) {
		return administratorDAO.userSnow(email);
	}

	@Override
	public int userMelt(String email) {
		return administratorDAO.userMelt(email);
	}

	@Override
	public int webtoonState(int webtoonCode, String state) {
		return administratorDAO.webtoonState(webtoonCode, state);
	}

	@Override
	public int webtoonLevel(int webtoonCode, String level) {
		return administratorDAO.webtoonLevel(webtoonCode, level);
	}

	@Override
	public List<FundApplyDTO> fundApplyManage() {
		return administratorDAO.fundApplyManage();
	}

	@Override
	public int userLevel(String email, String level) {
		return administratorDAO.userLevel(email, level);
	}

}
