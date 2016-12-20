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
	
	/**
	 * �ݵ������� ���Ǽҵ尡 ������ �������� ���ε� ���� �������
	 * �ش� ������ �ڵ� ����ó���� �г�Ƽ �߰�
	 * @param deadline
	 * @return
	 */
	int episodeTimeOutCheck(String deadline);
	
	/**
	 * ������ �Ϸ�� �ݵ� ���̺� �ݵ�Ʃ�� �߰�
	 * @param today
	 * @return
	 */
	int startFunding(String today);
	
	/**
	 * ��ǥ �ݵ����� ����ĥ��
	 * @param today
	 * @return
	 */
	int addPenalty(String today);
}
