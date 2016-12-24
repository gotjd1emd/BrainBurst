package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface FundDAO {
	/**
	 * ������� �ݵ����� ���� ��Ϸε�
	 * @param nickname ������� �̸�
	 * @return �ش����� ����Ʈ
	 */
	List<WebtoonDTO> fundPage(String nickname);
	
	/**
	 * �������� ������ ���ε尡 �ȵ� �����ڵ� ã�´�. 
	 * @param webtoonCode 						
	 * @return 
	 */
	List<Integer> lateEpisode();
	
	/**
	 * ���ε尡 ���� ������ �����Ű�� �г�Ƽ�� �߰��Ѵ�.
	 * @param webtoonCode
	 * @return update �����
	 */
	int webtoonPause(int webtoonCode, String penalty);
	
	
	/**
	 * ������ �ȿ� ���Ǽҵ带 ���ε��� �ݵ����� ã�� 
	 * @param webtoonCode 
	 * @return 
	 */
	List<EpisodeDTO> meetADeadlineWebtoon();
	
	/**
	 * ���� ���Ǽҵ� �ݵ� ����
	 * @param webtoonCode
	 * @param episodeNumber
	 * @return insert �����
	 */
	int startFunding(int webtoonCode, int episodeNumber);
	
	/**
	 * ������ ���Ǽҵ��� �ݵ����� ã��
	 * @param webtoonCode
	 * @param episodeNumber
	 * @return episodeFund
	 */
	int selectEpisodeFund(int fundCode);
	
	/**
	 * �г�Ƽ�� �߰��Ѵ�.
	 * @param webtoonCode
	 * @return
	 */
	int addPenalty(int webtoonCode, String penalty);
	
	/**
	 * �ش� ������ �г�Ƽ�� ã�´�.
	 * @param webtoonCode
	 * @return
	 */
	String selectPenalty(int webtoonCode);
}
