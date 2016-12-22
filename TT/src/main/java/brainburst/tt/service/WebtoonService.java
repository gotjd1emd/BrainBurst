package brainburst.tt.service;

import java.util.List;
import java.util.Map;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.FundApplyDTO;
import brainburst.tt.dto.ReportDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface WebtoonService {
	/**
	 * WEBTOON_LEVEL�� CATEGORY�� �������� ���ǿ� �´� ������ϰ�������
	 * @param webtoonLevel (free[�Ϲ�], fund[�ݵ�], paid[����ȭ])
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
	List<WebtoonDTO> addSubscription(String email, int webtoonCode, String command);
	
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
	
	/**
	 * ���Ǽҵ�������� �ش� ���Ǽҵ��� ���� DTOã�ƿ�
	 * @param episodeSequence
	 * @return
	 */
	WebtoonDTO selecltWebtoonByCode(int episodeSequence);
	
	/**
	 * ���Ǽҵ� �������� �ش� ���Ǽҵ��� ��ȸ��, ��õ��, �۰��� �� ã�ƿ�
	 * @param episodeSequence
	 * @return
	 */
	EpisodeDTO selectNumsBySequence(int episodeSequence);
	
	/**
	 * ���� �ڵ忡 �ش��ϴ� ���� ���� ��������
	 * @param webtoonCode
	 * @return
	 */
	WebtoonDTO selectWebtoon(int webtoonCode, String email);
	
	/**
	 * ���Ǽҵ� ������������ �̵�
	 * @param episodeSquence
	 * @return
	 */
	Map<String, Object> modifyEpisodePage(int episodeSequence);
	
	/**
	 * �ڽ��� ��ǰã��(������)
	 * @param webtoonState
	 * @param nickname
	 * @return
	 */
	List<WebtoonDTO> selectMyWebtoon(String nickname);
	
	/**
	 * �ڽ��� ��ǰã��(�ϰ�)
	 * @param webtoonState
	 * @param nickname
	 * @return
	 */
	List<WebtoonDTO> selectMyCompleteWebtoon(String nickname);
	
	/**
	 * ���� ���� ����
	 * */
	int webtoonStateChange(WebtoonDTO webtoonDTO);
	
	/**
	 * ���ڰ� �ݵ������������� �̵�
	 * @param webtoonCode
	 * @return
	 */
	Map<String, Object> fundingEpisodeList(int webtoonCode);
}