package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface WebtoonDAO {
	/**
	 * WEBTOON_LEVEL�� CATEGORY�� �������� ���ǿ� �´� ������ϰ�������
	 */
	List<WebtoonDTO> selectWebtoonByLevel(String webtoonLevel, String category);
	
	/**
	 * �Էµ� keyword�� �˻��� ����Ȥ�� �˻��� �۰��� ������� ��������
	 */
	List<WebtoonDTO> searchByKeyword(String keyword);
	
	/**
	 * WEBTOON_CODE�� �ش��ϴ� NICKNAME��ȸ�� ����ڿ� ��ġ���� ����
	 * @return ��ġ�ϸ� true, ����ġ�ϸ� false
	 */
	Boolean checkNickname(String webtoonCode);

	/**
	 * WEBTOON_CODE�� �ش��ϴ� ��� ���Ǽҵ�� �ݵ����� ȭ ��������(�ݵ�����ȭ ã�� �����غ���...)
	 */
	List<EpisodeDTO> selectAllEpisode(String webtoonCode);
	
	/**
	 * EPISODE_SEQUENCE�� �ش��ϴ� �̹����� �ε�(����Ʈ�� ������ IMAGE_INDEX������)
	 */
	List<String> selectImg(String epicsodeSequence);
	
	/**
	 * �������̺� ���ڵ� �߰�.
	 * @param email ����� email
	 * @param webtoonCode �ش������ڵ�
	 * @return INSERT�������� 1:����, 0:����
	 */
	int addSubscription(String email ,String webtoonCode);
	
	/**
	 * ��õ���̺� ���ڵ��߰�.
	 * @param email ����� email
	 * @param epicsodeSequence �ش翡�Ǽҵ��� ���Ǽҵ������
	 * @return INSERT�������� 1:����, 0:����
	 */
	int addRecommend(String email, int epicsodeSequence);
	
	/**
	 * �Ű����̺� ���ڵ��߰�.
	 * @param email ����� email
	 * @param webtoonCode �ش������� �����ڵ�
	 * @param epicsodeSequence �ش翡�Ǽҵ��� ���Ǽҵ������
	 * @return INSERT�������� 1:���� 0:����
	 */
	int addReport(String email, String webtoonCode, int epicsodeSequence);
}
