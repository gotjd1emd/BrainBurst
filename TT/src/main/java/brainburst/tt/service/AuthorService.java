package brainburst.tt.service;

import java.util.List;

import brainburst.tt.dto.WebtoonDTO;

public interface AuthorService {
	/**
	 * ������ ����ڰ� �۰��� ����(WEBTOON ���̺��� NICKNAME�� USER_INFOMATION ���̺��� NICKNAME�� ����)
	 * ����� ����
	 */
	List<WebtoonDTO> getMyWebtoon(String nickname);
}
