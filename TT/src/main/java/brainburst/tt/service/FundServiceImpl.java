package brainburst.tt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import brainburst.tt.dao.FundDAO;
import brainburst.tt.dto.WebtoonDTO;

@Service
public class FundServiceImpl implements FundService {
	
	@Autowired
	private FundDAO funDAO;

	@Override
	public List<WebtoonDTO> fundPage(String nickname) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int episodeTimeOutCheck(String deadline) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int startFunding(String today) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int addPenalty(String today) {
		// TODO Auto-generated method stub
		return 0;
	}

}
