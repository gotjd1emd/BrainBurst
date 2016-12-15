package brainburst.tt.service;

import java.util.List;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface AuthorService {
	/**
	 * 웹툰중 사용자가 작가인 웹툰(WEBTOON 테이블의 NICKNAME과 USER_INFOMATION 테이블의 NICKNAME이 같은)중,
	 * 연재중인 목록을 리턴
	 * @param nickname 사용자의 닉네임
	 * @return 사용자의 연재중인 웹툰목록
	 */
	List<WebtoonDTO> getSerialWebtoon(String nickname);
	
	/**
	 * 웹툰중 사용자가 작가인 웹툰(WEBTOON 테이블의 NICKNAME과 USER_INFOMATION 테이블의 NICKNAME이 같은)중,
	 * 완결된 목록을 리턴
	 */
	List<WebtoonDTO> getCompleteWebtoon(String nickname);
	
	/**
	 * 작품등록
	 * 사용자가 작성한 정보로 사용자의 작품을 등록
	 * @param webtoonDTO 뷰에서 보내온 웹툰정보가 담긴 DTO
	 * @param episodeDTO 뷰에서 보내온 첫화 정보가 담긴 DTO
	 * @return 성공여부 1:성공 0:실패
	 */
	int addSeries (WebtoonDTO webtoonDTO, EpisodeDTO episodeDTO);
	
	/**
	 * 작품수정
	 * 사용자가 작성한 정보로 사용자의 작품정보 수정
	 * @param webtoonDTO 뷰에서 보내온 웹툰정보가 담긴 DTO
	 * @return 성공여부 1:성공 0:실패
	 */
	int updateSeries (WebtoonDTO webtoonDTO);
	
	/**
	 * 웹툰상태
	 * @param webtoonCode 뷰에서 보내온 수정하려는 웹툰의 웹툰코드
	 * @param state 수정하려는 상태
	 * @return 성공여부 1:성공 0:실패
	 */
	int setSeriesState (String webtoonCode, String state);
	
	/**
	 * 작가페이지만들기
	 * @param email
	 * @return
	 */
	UserDTO madeAuthorPage (UserDTO userDTO);
}
