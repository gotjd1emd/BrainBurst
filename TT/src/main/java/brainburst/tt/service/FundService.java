package brainburst.tt.service;

import java.util.List;

import brainburst.tt.dto.WebtoonDTO;

public interface FundService {
	/**
	 * ������� �ݵ����� ���� ��Ϸε�
	 * @param nickname ������� �̸�
	 * @return �ش����� ����Ʈ
	 */
	List<WebtoonDTO> fundPage(String nickname);
}
