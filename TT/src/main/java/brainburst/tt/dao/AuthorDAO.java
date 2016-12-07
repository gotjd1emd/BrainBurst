package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.WebtoonDTO;

public interface AuthorDAO {
	/**
	 * 웹툰중 사용자가 작가인 웹툰(WEBTOON 테이블의 NICKNAME과 USER_INFOMATION 테이블의 NICKNAME이 같은)
	 * 목록을 리턴
	 */
	List<WebtoonDTO> getMyWebtoon(String nickname);
}
