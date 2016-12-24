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
	 * 마감일이 지나고도 업로드가 안된 웹툰코드 찾는다. 
	 * @param webtoonCode 						
	 * @return 
	 */
	List<Integer> lateEpisode();
	
	/**
	 * 업로드가 늦은 웹툰을 휴재시키고 패널티를 추가한다.
	 * @param webtoonCode
	 * @return update 결과값
	 */
	int webtoonPause(int webtoonCode, String penalty);
	
	
	/**
	 * 마감일 안에 에피소드를 업로드한 펀딩웹툰 찾기 
	 * @param webtoonCode 
	 * @return 
	 */
	List<EpisodeDTO> meetADeadlineWebtoon();
	
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
	int selectEpisodeFund(int fundCode);
	
	/**
	 * 패널티를 추가한다.
	 * @param webtoonCode
	 * @return
	 */
	int addPenalty(int webtoonCode, String penalty);
	
	/**
	 * 해당 웹툰의 패널티를 찾는다.
	 * @param webtoonCode
	 * @return
	 */
	String selectPenalty(int webtoonCode);
}
