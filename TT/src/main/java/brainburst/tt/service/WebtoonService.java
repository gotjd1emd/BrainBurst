package brainburst.tt.service;

import java.util.List;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.ReportDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface WebtoonService {
	/**
	 * WEBTOON_LEVEL�� CATEGORY�� �������� ���ǿ� �´� ������ϰ�������
	 * @param webtoonLevel (free[�Ϲ�], pund[�ݵ�], paid[����ȭ])
	 * @param categoryCode (���� �������)
	 * @return �˻��� �������� DTO�� ��� ����Ʈ
	 */
	List<WebtoonDTO> selectWebtoonByLevel(String webtoonLevel, String categoryCode);
	
	/**
	 * keyword�� �ش��ϴ� ���� Ȥ�� Ű���忡 �ش��ϴ� �۰��� ������� ��������
	 * @param keyword �˻���
	 * @return �˻��� �������� DTO�� ��� ����Ʈ
	 */
	List<WebtoonDTO> searchByKeyword(String keyword);
	/**
	 * ����ڰ� ������ �������� Ȯ���ϱ����� �г���üũ
	 * @param webtoonCode
	 * @return
	 */
	Boolean checkNickname(int webtoonCode, String nickname);
	
	/**
	 * �ش� ������ ��翡�Ǽҵ� �ҷ�����
	 * @param webtoonCode
	 * @return
	 */
	List<EpisodeDTO> selectAllEpisode(int webtoonCode);
	
	/**
	 * �ش� ���Ǽҵ��� �̹����ҷ�����
	 * @param episodeSequence
	 * @return
	 */
	List<String> selectImg(int episodeSequence);
	
	/**
	 * �����ϱ�
	 * ��õ�ϱ� ��ư Ŭ��, requset�� �����ִ� �ش� ���� �ڵ�� session�� �ִ� ����� email�̿�
	 * ��õ�ϱ� ���̺� �ش� ��ǰ ���ڵ����, ���� �񵿱�ȭ ������� ��õ������
	 * @return �������� 1:���� , 0:���� 
	 */
	int addSubscription(String email, int webtoonCode);
	
	/**
	 * ��õ�ϱ�
	 * @param email
	 * @param epicsodeSequence
	 * @return
	 */
	int addRecommend(String email, int epicsodeSequence);
	
	/**
	 * �ʴ� ����!
	 * @param reportDTO
	 * @return
	 */
	int addReport(ReportDTO reportDTO);
}