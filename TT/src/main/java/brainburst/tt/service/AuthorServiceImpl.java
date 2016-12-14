package brainburst.tt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import brainburst.tt.dao.AuthorDAO;
import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.WebtoonDTO;

@Service
public class AuthorServiceImpl implements AuthorService {
	@Autowired
	private AuthorDAO authorDAO;  
	
	@Override
	public List<WebtoonDTO> getSerialWebtoon(String nickname) {
		return authorDAO.getMyWebtoon(nickname, "serial");
	}

	@Override
	public List<WebtoonDTO> getCompleteWebtoon(String nickname) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addSeries(WebtoonDTO webtoonDTO, EpisodeDTO episodeDTO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateSeries(WebtoonDTO webtoonDTO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int setSeriesState(String webtoonCode, String state) {
		// TODO Auto-generated method stub
		return 0;
	}


}
