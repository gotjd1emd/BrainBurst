package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.ReportDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface WebtoonDAO {
	/**
	 * WEBTOON_LEVEL�� CATEGORY�� �������� ���ǿ� �´� ������ϰ�������
	 * @param webtoonLevel (free[�Ϲ�], pund[�ݵ�], paid[����ȭ])
	 * @param categoryCode (���� �������)
	 * @return �˻��� �������� DTO�� ��� ����Ʈ
	 */
	List<WebtoonDTO> selectWebtoonByLevel(String webtoonLevel, String categoryCode, String email);
	
	/**
	 * keyword�� �ش��ϴ� ���� Ȥ�� Ű���忡 �ش��ϴ� �۰��� ������� ��������
	 * @param keyword �˻���
	 * @return �˻��� �������� DTO�� ��� ����Ʈ
	 */
	List<WebtoonDTO> searchByKeyword(String keyword, String email);
	
	/**
	 * WEBTOON_CODE�� �ش��ϴ� NICKNAME��ȸ�� ����ڿ� ��ġ���� ����
	 * @return ��ġ�ϸ� true, ����ġ�ϸ� false
	 */
	Boolean checkNickname(int webtoonCode, String nickname);

	/**
	 * WEBTOON_CODE�� �ش��ϴ� ��� ���Ǽҵ�� �ݵ����� ȭ ��������(�ݵ�����ȭ ã�� �����غ���...)
	 */
	List<EpisodeDTO> selectAllEpisode(int webtoonCode);
	
	/**
	 * EPISODE_SEQUENCE�� �ش��ϴ� �̹����� �ε�(����Ʈ�� ������ IMAGE_INDEX������)
	 */
	List<String> selectImg(int episodeSequence);
	
	/**
	 * �������̺� ���ڵ� �߰�.
	 * @param email ����� email
	 * @param webtoonCode �ش������ڵ�
	 * @return INSERT�������� 1:����, 0:����
	 */
	int addSubscription(String email ,int webtoonCode);
	
	int delSubscription(String email ,int webtoonCode);
	
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
	int addReport(ReportDTO reportDTO);
	
	/**
	 * ���Ǽҵ�������� �ش� ���Ǽҵ��� ���� DTOã�ƿ�
	 * @param episodeSequence
	 * @return
	 */
	WebtoonDTO selecltWebtoonByCode(int episodeSequence);
	
	/**
	 * ���Ǽҵ� �������� �ش� ���Ǽҵ带 �����´�.
	 * @param episodeSequence
	 * @return
	 */
	EpisodeDTO selectNumsBySequence(int episodeSequence);
	
	/**
	 * ���Ǽҵ� �������� �ش��ϴ� ���Ǽҵ��� ��õ������.
	 * @param episodeSequence
	 * @return
	 */
	int updateRecommendation(int episodeSequence);
	
	/**
	 * ��õ���̺� ��õ�޴��� ����Ȯ��
	 * @param email
	 * @param episodeSequence
	 * @return
	 */
	Boolean isRecommended(String email, int episodeSequence);
	
	/**
	 * ��������Ȯ��
	 * @param email
	 * @param webtoonCode
	 * @return
	 */
	Boolean isSubscription(String email, int webtoonCode);
	
	/**
	 * ��ȸ������
	 * @param episodeSequence
	 */
	void increaseHits (int episodeSequence);
	
	/**
	 * ���� �ڵ忡 �ش��ϴ� ���� ��������
	 * @param webtoonCode
	 * @return
	 */
	WebtoonDTO selectWebtoon(int webtoonCode, String email);
	
	/**
	 * �ڽ��� ��ǰã��(������,�ϰ�)
	 * @param webtoonState
	 * @param email
	 * @return
	 */
	List<WebtoonDTO> selectMyWebtoon(String webtoonState, String nickname);
	
	/**
	 * ���� ���� ����
	 * */
	int webtoonStateChange(WebtoonDTO webtoonDTO);
}
