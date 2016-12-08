package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.WebtoonDTO;

public interface PundDAO {
	/**
	 * 사용자의 펀딩중인 웹툰 목록로딩
	 * @param nickname 사용자의 이름
	 * @return 해당웹툰 리스트
	 */
	List<WebtoonDTO> pundPage(String nickname);
}
