package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface FundDAO {
	/**
	 * 사용자의 펀딩중인 웹툰 목록로딩
	 * @param nickname 사용자의 이름
	 * @return 해당웹툰 리스트
	 */
	List<WebtoonDTO> fundPage(String nickname);
	
	/**
	 * 펀딩웹툰들의 웹툰코드를 찾는다.
	 * @return
	 */
	List<Integer> selectFundingWebtoonCode();
	
	/**
	 * 마감일이 지나고도 업로드가 안된 웹툰코드 찾는다. select webtoon_code from episode 
	 * @param webtoonCode 						where webtoon_code = #{webtoonCode} and 
	 * @return 									fund_code != (select fund_code from fund where trunc(due_date) + 1 in #{date})
	 */
	int lateEpisode(int webtoonCode, String date);
	
	/**
	 * 업로드가 늦은 웹툰을 휴재시키고 패널티를 추가한다.
	 * @param webtoonCode
	 * @return update 결과값
	 */
	int webtoonPause(int webtoonCode);
	
	
	/**
	 * 마감일 안에 에피소드를 업로드한 펀딩웹툰 찾기 select webtoon_code, episode_number from episode 
	 * @param webtoonCode 					where webtoon_code = #{webtoonCode} and 
	 * @return 								fund_code = (select fund_code from fund where trunc(due_date) + 2 in #{date})
	 */
	EpisodeDTO meetADeadlineWebtoon(int webtoonCode, String date);
	
	/**
	 * 다음 에피소드 펀딩 시작
	 * @param webtoonCode
	 * @param episodeNumber
	 * @return insert 결과값
	 */
	int startFunding(int webtoonCode, int episodeNumber);
	
	/**
	 * 마감된 에피소드의 펀딩수량 찾기
	 * @param webtoonCode
	 * @param episodeNumber
	 * @return episodeFund
	 */
	int selectEpisodeFund(int webtoonCode, int episodeNumber);
	
	/**
	 * 패널티를 추가한다.
	 * @param webtoonCode
	 * @return
	 */
	int addPenalty(int webtoonCode);
}
