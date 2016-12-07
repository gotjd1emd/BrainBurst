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
}
