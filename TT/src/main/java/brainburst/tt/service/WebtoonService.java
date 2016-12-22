package brainburst.tt.service;

import java.util.List;
import java.util.Map;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.FundApplyDTO;
import brainburst.tt.dto.ReportDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface WebtoonService {
	/**
	 * WEBTOON_LEVEL과 CATEGORY를 조건으로 조건에 맞는 웹툰목록가져오기
	 * @param webtoonLevel (free[일반], fund[펀딩], paid[유로화])
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
	 * 사용자가 연재한 웹툰인지 확인하기위한 닉네임체크
	 * @param webtoonCode
	 * @return
	 */
	Boolean checkNickname(int webtoonCode, String nickname);
	
	/**
	 * 해당 웹툰의 모든에피소드 불러오기
	 * @param webtoonCode
	 * @return
	 */
	List<EpisodeDTO> selectAllEpisode(int webtoonCode);
	
	/**
	 * 해당 에피소드의 이미지불러오기
	 * @param episodeSequence
	 * @return
	 */
	List<String> selectImg(int episodeSequence);
	
	/**
	 * 구독하기
	 * 추천하기 버튼 클릭, requset에 남아있는 해당 웹툰 코드와 session에 있는 사용자 email이용
	 * 추천하기 테이블에 해당 작품 레코드삽입, 이후 비동기화 통신으로 추천수변경
	 * @return 성공여부 1:성공 , 0:실패 
	 */
	List<WebtoonDTO> addSubscription(String email, int webtoonCode, String command);
	
	/**
	 * 추천하기
	 * @param email
	 * @param epicsodeSequence
	 * @return
	 */
	int addRecommend(String email, int epicsodeSequence);
	
	/**
	 * 너님 리폿!
	 * @param reportDTO
	 * @return
	 */
	int addReport(ReportDTO reportDTO);
	
	/**
	 * 에피소드시퀸스로 해당 에피소드의 웹툰 DTO찾아옴
	 * @param episodeSequence
	 * @return
	 */
	WebtoonDTO selecltWebtoonByCode(int episodeSequence);
	
	/**
	 * 에피소드 시퀸스로 해당 에피소드의 조회수, 추천수, 작가의 말 찾아옴
	 * @param episodeSequence
	 * @return
	 */
	EpisodeDTO selectNumsBySequence(int episodeSequence);
	
	/**
	 * 웹툰 코드에 해당하는 웹툰 정보 가져오기
	 * @param webtoonCode
	 * @return
	 */
	WebtoonDTO selectWebtoon(int webtoonCode, String email);
	
	/**
	 * 에피소드 수정페이지로 이동
	 * @param episodeSquence
	 * @return
	 */
	Map<String, Object> modifyEpisodePage(int episodeSequence);
	
	/**
	 * 자신의 작품찾기(연재중)
	 * @param webtoonState
	 * @param nickname
	 * @return
	 */
	List<WebtoonDTO> selectMyWebtoon(String nickname);
	
	/**
	 * 자신의 작품찾기(완결)
	 * @param webtoonState
	 * @param nickname
	 * @return
	 */
	List<WebtoonDTO> selectMyCompleteWebtoon(String nickname);
	
	/**
	 * 웹툰 상태 변경
	 * */
	int webtoonStateChange(WebtoonDTO webtoonDTO);
	
	/**
	 * 독자가 펀딩웹툰페이지로 이동
	 * @param webtoonCode
	 * @return
	 */
	Map<String, Object> fundingEpisodeList(int webtoonCode);
}