package brainburst.tt.service;

import java.util.List;

import brainburst.tt.dto.UserDTO;
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
	int episodeTimeOutCheck();
	
	/**
	 * ������ �Ϸ�� �ݵ� ���̺� �ݵ�Ʃ�� �߰��� ��ǥ�̴� ���� �г�Ƽ �߰�
	 * @param today
	 * @return
	 */
	int startFunding();
	
	/**
	 * �ݵ� ���� 
	 * @param email
	 * @param cashPoint
	 * @param fundCode
	 * @param content
	 * @return
	 */
	int joinFund(UserDTO userDTO, int cashPoint, int fundCode, String content);
}
