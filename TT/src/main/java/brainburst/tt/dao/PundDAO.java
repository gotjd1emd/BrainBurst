package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.WebtoonDTO;

public interface PundDAO {
	/**
	 * ������� �ݵ����� ���� ��Ϸε�
	 * @param nickname ������� �̸�
	 * @return �ش����� ����Ʈ
	 */
	List<WebtoonDTO> pundPage(String nickname);
}
