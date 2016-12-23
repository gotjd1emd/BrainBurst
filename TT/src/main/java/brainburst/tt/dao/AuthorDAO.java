package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.AdditionalInfoDTO;
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
	String selectCategoryName(int webtoonCode);
	
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
	int selectEpisodeSequence(int webtoonCode, int episodeNumber);
	
	/**
	 * 에피소드 이미지 저장
	 * @param imageDTO
	 * @return
	 */
	int insertEpisodeImage(ImageDTO imageDTO);
	
	/**
	 * 에피소드 테이블 수정
	 * @param episodeDTO
	 * @return
	 */
	int modifyEpisode(EpisodeDTO episodeDTO);
	
	/**
	 * 에피소드 이미지 수정
	 * @param imageDTO
	 * @return
	 */
	int modifyImage(ImageDTO imageDTO);
	
	/**
	 * 에피소드 이미지 삭제
	 * @param imageDTO
	 * @return
	 */
	int deleteImage(ImageDTO imageDTO);
	
	/**
	 * 웹툰 등록
	 * @param webtoonDTO
	 * @return
	 */
	int registerWebtoon(WebtoonDTO webtoonDTO);
	
	/**
	 * 웹툰 수정
	 * @param webtoonDTO
	 * @return
	 */
	int modifyWebtoon(WebtoonDTO webtoonDTO);
	
	/**
	 * 웹툰 코드에 맞는 웹툰정보 찾기
	 * @param webtoonCode
	 * @return
	 */
	WebtoonDTO selectWebtoon(int webtoonCode);
	
	/**
	 * 카테고리 코드로 카테고리 이름 가져오기
	 * @param categoryCode
	 * @return
	 */
	String getCategoryName(String categoryCode);
	
	/**
	 * 최근 등록한 자신의 웹툰의 웹툰코드
	 * @param nickname
	 * @return
	 */
	int lastMyWebtoonCode(String nickname);

	/**
	 * 
	 * @param nickname
	 * @return
	 */
	List<WebtoonDTO> selectMyWebtoon(String nickname);
	
	/**
	 * 작가 추가정보 검색
	 * */
	AdditionalInfoDTO selectAdditionalInfo(String email);
	
	/**
	 * 작가 추가정보 추가
	 * */
	int insertAdditionalInfo(AdditionalInfoDTO additionalInfoDTO);
	
	/**
	 * 작가 추가정보 수정
	 * */
	int updateadditionalInfo(AdditionalInfoDTO additionalInfoDTO);
}
