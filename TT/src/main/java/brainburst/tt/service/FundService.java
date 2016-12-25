package brainburst.tt.service;

import java.util.List;

import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface FundService {
	/**
	 * 사용자의 펀딩중인 웹툰 목록로딩
	 * @param nickname 사용자의 이름
	 * @return 해당웹툰 리스트
	 */
	List<WebtoonDTO> fundPage(String nickname);
	
	/**
	 * 펀딩웹툰의 에피소드가 마감일 자정까지 업로드 되지 않을경우
	 * 해당 웹툰의 자동 휴재처리와 패널티 추가
	 * @param deadline
	 * @return
	 */
	int episodeTimeOutCheck();
	
	/**
	 * 마감일 하루뒤 펀딩 테이블에 펀딩튜플 추가와 목표미달 웹툰 패널티 추가
	 * @param today
	 * @return
	 */
	int startFunding();
	
	/**
	 * 펀딩 참여 
	 * @param email
	 * @param cashPoint
	 * @param fundCode
	 * @param content
	 * @return
	 */
	int joinFund(UserDTO userDTO, int cashPoint, int fundCode, String content);
}
