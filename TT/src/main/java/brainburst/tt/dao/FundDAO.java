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
	 * �ݵ��������� �����ڵ带 ã�´�.
	 * @return
	 */
	List<Integer> selectFundingWebtoonCode();
	
	/**
	 * �������� ������ ���ε尡 �ȵ� �����ڵ� ã�´�. select webtoon_code from episode 
	 * @param webtoonCode 						where webtoon_code = #{webtoonCode} and 
	 * @return 									fund_code != (select fund_code from fund where trunc(due_date) + 1 in #{date})
	 */
	int lateEpisode(int webtoonCode, String date);
	
	/**
	 * ���ε尡 ���� ������ �����Ű�� �г�Ƽ�� �߰��Ѵ�.
	 * @param webtoonCode
	 * @return update �����
	 */
	int webtoonPause(int webtoonCode);
	
	
	/**
	 * ������ �ȿ� ���Ǽҵ带 ���ε��� �ݵ����� ã�� select webtoon_code, episode_number from episode 
	 * @param webtoonCode 					where webtoon_code = #{webtoonCode} and 
	 * @return 								fund_code = (select fund_code from fund where trunc(due_date) + 2 in #{date})
	 */
	EpisodeDTO meetADeadlineWebtoon(int webtoonCode, String date);
	
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
	int selectEpisodeFund(int webtoonCode, int episodeNumber);
	
	/**
	 * �г�Ƽ�� �߰��Ѵ�.
	 * @param webtoonCode
	 * @return
	 */
	int addPenalty(int webtoonCode);
}
