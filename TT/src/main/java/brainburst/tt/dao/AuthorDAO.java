package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.ImageDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface AuthorDAO {
	/**
	 * 사용자의 웹툰목록 불러오기
	 * @param nickname 사용자닉네임
	 * @param webtoonState 웹툰상태(연재,완결)
	 * @return
	 */
	List<WebtoonDTO> getMyWebtoon(String nickname, String webtoonState);
	
	/**
	 * 작가페이지만들기
	 * @param email
	 * @return
	 */
	int madeAuthorPage(UserDTO dto);
	
	/**
	 * 유저정보갱신
	 * @param email
	 * @return
	 */
	UserDTO updateUserInfo(UserDTO dto);
	
	/**
	 * 카테고리이름 가져오기
	 * @param webtoonCode
	 * @return
	 */
	String selectCategoryName(String webtoonCode);
	
	/**
	 * 에피소드 업로드
	 * @param episodeDTO
	 * @return
	 */
	int episodeUpload(EpisodeDTO episodeDTO);
	
	/**
	 * 업로드한 에피소드 시퀀스넘버 가져오기
	 * @param webtoonCode
	 * @param episodeNumber
	 * @return
	 */
	int selectEpisodeSequence(String webtoonCode, int episodeNumber);
	
	/**
	 * 에피소드 이미지 저장
	 * @param imageDTO
	 * @return
	 */
	int insertEpisodeImage(ImageDTO imageDTO);
}
