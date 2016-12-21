package brainburst.tt.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import brainburst.tt.dao.AuthorDAO;
import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.ImageDTO;
import brainburst.tt.dto.UserDTO;
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
	public int addSeries(WebtoonDTO webtoonDTO, EpisodeDTO episodeDTO, List<ImageDTO> imageList) {
		int result = 0;
		
		result = authorDAO.registerWebtoon(webtoonDTO);
		result = authorDAO.episodeUpload(episodeDTO);
		int episodeSequence = authorDAO.selectEpisodeSequence(episodeDTO.getWebtoonCode(), episodeDTO.getEpisodeNumber());
		
		for(ImageDTO image : imageList) {
			image.setEpisodeSequence(episodeSequence);
			result = authorDAO.insertEpisodeImage(image);
		}
		
		return result;
	}

	@Override
	public int modifyWebtoon(WebtoonDTO webtoonDTO) {
		return authorDAO.modifyWebtoon(webtoonDTO);
	}

	@Override
	public int setSeriesState(String webtoonCode, String state) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserDTO madeAuthorPage(UserDTO userDTO) {
		authorDAO.madeAuthorPage(userDTO);
		return authorDAO.updateUserInfo(userDTO);
	}
	
	@Override
	public String selectCategoryName(int webtoonCode) {
		return authorDAO.selectCategoryName(webtoonCode);
	}
	
	@Override
	public int episodeUpload(EpisodeDTO episodeDTO, List<ImageDTO> imageList) {
		int result = 0;
		result = authorDAO.episodeUpload(episodeDTO);
		int episodeSequence = authorDAO.selectEpisodeSequence(episodeDTO.getWebtoonCode(), episodeDTO.getEpisodeNumber());
		
		for(ImageDTO image : imageList) {
			image.setEpisodeSequence(episodeSequence);
			result = authorDAO.insertEpisodeImage(image);
		}
		
		return result;
	}
	
	@Override
	public int modifyEpisode(EpisodeDTO episodeDTO, Map<String, List<ImageDTO>> imageList) {
		int result = 0;
		result = authorDAO.modifyEpisode(episodeDTO);
		
		for(ImageDTO image : imageList.get("modifyImageList")) {
			result = authorDAO.modifyImage(image);
		}
		
		for(ImageDTO image : imageList.get("addImageList")) {
			result = authorDAO.insertEpisodeImage(image);
		}
		
		for(ImageDTO image : imageList.get("deleteImageList")) {
			result = authorDAO.deleteImage(image);
		}
		
		return result;
	}
	
	@Override
	public WebtoonDTO selectWebtoon(int webtoonCode) {
		return authorDAO.selectWebtoon(webtoonCode);
	}
	
	@Override
	public List<WebtoonDTO> selectMyWebtoon(String nickname) {
		return authorDAO.selectMyWebtoon(nickname);
	}
}
