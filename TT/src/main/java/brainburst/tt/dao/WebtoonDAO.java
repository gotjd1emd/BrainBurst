package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.ReportDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface WebtoonDAO {
	/**
	 * WEBTOON_LEVEL과 CATEGORY를 조건으로 조건에 맞는 웹툰목록가져오기
	 * @param webtoonLevel (free[일반], pund[펀딩], paid[유로화])
	 * @param categoryCode (미정 수정요망)
	 * @return 검색된 웹툰들의 DTO가 담긴 리스트
	 */
	List<WebtoonDTO> selectWebtoonByLevel(String webtoonLevel, String categoryCode, String email);
	
	/**
	 * keyword에 해당하는 웹툰 혹은 키워드에 해당하는 작가의 웹툰목록 가져오기
	 * @param keyword 검색어
	 * @return 검색된 웹툰들의 DTO가 담긴 리스트
	 */
	List<WebtoonDTO> searchByKeyword(String keyword, String email);
	
	/**
	 * WEBTOON_CODE에 해당하는 NICKNAME조회후 사용자와 일치여부 리턴
	 * @return 일치하면 true, 불일치하면 false
	 */
	Boolean checkNickname(int webtoonCode, String nickname);

	/**
	 * WEBTOON_CODE에 해당하는 모든 에피소드와 펀딩중인 화 가져오기(펀딩중인화 찾기 생각해볼것...)
	 */
	List<EpisodeDTO> selectAllEpisode(int webtoonCode);
	
	/**
	 * EPISODE_SEQUENCE에 해당하는 이미지를 로딩(리스트에 넣을때 IMAGE_INDEX순으로)
	 */
	List<String> selectImg(int episodeSequence);
	
	/**
	 * 구독테이블에 레코드 추가.
	 * @param email 사용자 email
	 * @param webtoonCode 해당웹툰코드
	 * @return INSERT성공여부 1:성공, 0:실패
	 */
	int addSubscription(String email ,int webtoonCode);
	
	int delSubscription(String email ,int webtoonCode);
	
	/**
	 * 추천테이블에 레코드추가.
	 * @param email 사용자 email
	 * @param epicsodeSequence 해당에피소드의 에피소드시퀸스
	 * @return INSERT성공여부 1:성공, 0:실패
	 */
	int addRecommend(String email, int epicsodeSequence);
	
	/**
	 * 신고테이블에 레코드추가.
	 * @param email 사용자 email
	 * @param webtoonCode 해당웹툰의 웹툰코드
	 * @param epicsodeSequence 해당에피소드의 에피소드시퀸스
	 * @return INSERT성공여부 1:성공 0:실패
	 */
	int addReport(ReportDTO reportDTO);
	
	/**
	 * 에피소드시퀸스로 해당 에피소드의 웹툰 DTO찾아옴
	 * @param episodeSequence
	 * @return
	 */
	WebtoonDTO selecltWebtoonByCode(int episodeSequence);
	
	/**
	 * 에피소드 시퀸스로 해당 에피소드를 가져온다.
	 * @param episodeSequence
	 * @return
	 */
	EpisodeDTO selectNumsBySequence(int episodeSequence);
	
	/**
	 * 에피소드 시퀸스에 해당하는 에피소드의 추천수증가.
	 * @param episodeSequence
	 * @return
	 */
	int updateRecommendation(int episodeSequence);
	
	/**
	 * 추천테이블에 추천햇는지 여부확인
	 * @param email
	 * @param episodeSequence
	 * @return
	 */
	Boolean isRecommended(String email, int episodeSequence);
	
	/**
	 * 구독여부확인
	 * @param email
	 * @param webtoonCode
	 * @return
	 */
	Boolean isSubscription(String email, int webtoonCode);
	
	/**
	 * 조회수증가
	 * @param episodeSequence
	 */
	void increaseHits (int episodeSequence);
	
	/**
	 * 웹툰 코드에 해당하는 웹툰 가져오기
	 * @param webtoonCode
	 * @return
	 */
	WebtoonDTO selectWebtoon(int webtoonCode, String email);
	
	/**
	 * 자신의 작품찾기(연재중,완결)
	 * @param webtoonState
	 * @param email
	 * @return
	 */
	List<WebtoonDTO> selectMyWebtoon(String webtoonState, String nickname);
	
	/**
	 * 웹툰 상태 변경
	 * */
	int webtoonStateChange(WebtoonDTO webtoonDTO);
}
