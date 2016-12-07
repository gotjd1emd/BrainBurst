package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.WebtoonDTO;

public interface AuthorDAO {
	/**
	 * ������ ����ڰ� �۰��� ����(WEBTOON ���̺��� NICKNAME�� USER_INFOMATION ���̺��� NICKNAME�� ����)
	 * ����� ����
	 */
	List<WebtoonDTO> getMyWebtoon(String nickname);
}
