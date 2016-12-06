package brainburst.tt.service;

import java.util.List;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface WebtoonService {
	List<WebtoonDTO> selectWebtoonByLevel(String webtoonLevel, String categoryCode);
	List<WebtoonDTO> searchByKeyword(String keyword);
	Boolean checkNickname(String webtoonCode);
	List<EpisodeDTO> selectAllEpisode(String webtoonCode);
	List<String> selectImg(int episodeSequence);
}