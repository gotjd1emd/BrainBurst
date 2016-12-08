package brainburst.tt.service;

import java.util.List;

import brainburst.tt.dto.WebtoonDTO;

public interface AuthorService {
	/**
	 * 웹툰중 사용자가 작가인 웹툰(WEBTOON 테이블의 NICKNAME과 USER_INFOMATION 테이블의 NICKNAME이 같은)중,
	 * 연재중인 목록을 리턴
	 */
	List<WebtoonDTO> getSerializedWebtoon(String nickname);
	
	/**
	 * 웹툰중 사용자가 작가인 웹툰(WEBTOON 테이블의 NICKNAME과 USER_INFOMATION 테이블의 NICKNAME이 같은)중,
	 * 완결된 목록을 리턴
	 */
	List<WebtoonDTO> getConcludedWebtoon(String nickname);
	
	/**
	 * 작품등록
	 * 사용자가 작성한 정보로 사용자의 작품을 등록
	 * @param webtoonDTO 뷰에서 보내온 웹툰정보가 담긴 DTO
	 * @return 성공여부 1:성공 0:실패
	 */
	int addSeries (WebtoonDTO webtoonDTO);
}
