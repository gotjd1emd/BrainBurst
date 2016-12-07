package brainburst.tt.service;

import java.util.List;

import brainburst.tt.dto.WebtoonDTO;

public interface AuthorService {
	/**
	 * ������ ����ڰ� �۰��� ����(WEBTOON ���̺��� NICKNAME�� USER_INFOMATION ���̺��� NICKNAME�� ����)��,
	 * �������� ����� ����
	 */
	List<WebtoonDTO> getSerializedWebtoon(String nickname);
	
	/**
	 * ������ ����ڰ� �۰��� ����(WEBTOON ���̺��� NICKNAME�� USER_INFOMATION ���̺��� NICKNAME�� ����)��,
	 * �ϰ�� ����� ����
	 */
	List<WebtoonDTO> getConcludedWebtoon(String nickname);
}
