package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.WebtoonDTO;

public interface FundDAO {
	/**
	 * ������� �ݵ����� ���� ��Ϸε�
	 * @param nickname ������� �̸�
	 * @return �ش����� ����Ʈ
	 */
	List<WebtoonDTO> fundPage(String nickname);
}
