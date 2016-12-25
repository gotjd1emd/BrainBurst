package brainburst.tt.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import brainburst.tt.dao.AdministratorDAO;
import brainburst.tt.dto.FundApplyDTO;
import brainburst.tt.dto.ReportDTO;
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

	@Override
	public int applyDelete(int webtoonCode) {
		return administratorDAO.applyDelete(webtoonCode);
	}

	@Override
	public List<ReportDTO> reportManage() {
		return administratorDAO.reportManage();
	}

	@Override
	public int reportDelete(int reportSequence) {
		return administratorDAO.reportDelete(reportSequence);
	}

	@Override
	public List<Integer> userCount() {
		List<Integer> userCount = new ArrayList<Integer>();
		String[] userLevel = {"독자", "작가", "펀딩작가"};
		String[] gender = {"남", "여"};
		for(int i = 0; i < 6; i++) {
			if(i<3) {
				userCount.add(administratorDAO.userLevelCount(userLevel[i]));
			}else if(i<5) {
				userCount.add(administratorDAO.genderCount(gender[i-3]));
			}else {
				userCount.add(administratorDAO.userCount());
			}
		}
		
		return userCount;
	}
}
