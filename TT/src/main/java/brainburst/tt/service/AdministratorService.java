package brainburst.tt.service;

import java.util.List;
import java.util.Map;

import brainburst.tt.dto.FundApplyDTO;
import brainburst.tt.dto.ReportDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface AdministratorService {

	/**
	 * 관리자 페이지 유저관리
	 * return type : userDTO
	 * parameter Type : 없음
	 * */
	public List<UserDTO> userManage();
	
	/**
	 * 웹툰 관리 페이지
	 * return type : list<webtoonDTO>
	 * parameter type : 없음
	 * */
	public List<WebtoonDTO> webtoonManage();
	
	/**
	 * 계정 휴먼
	 * */
	public int userSnow(String email);
	
	/**
	 * 계정 녹이기
	 * */
	public int userMelt(String email);
	
	/**
	 * 웹툰 상태 update
	 * */
	
	public int webtoonState(int webtoonCode, String state);
	
	/**
	 * 웹툰 level update
	 * */
	public int webtoonLevel(int webtoonCode, String level);
	
	/**
	 * 유저 level update
	 * */
	public int userLevel(String email, String level);
	
	/**
	 * 펀딩신청 리스트 출력
	 * */
	public List<FundApplyDTO> fundApplyManage();
	
	/**
	 * 신고 리스트 출력
	 * */
	public List<ReportDTO> reportManage();
	
	/**
	 * 펀딩신청 삭제
	 * */
	public int applyDelete(int webtoonCode);
	
	/**
	 * 신고목록 삭제
	 * @param reportSequence
	 * @return
	 */
	public int reportDelete(int reportSequence);
	
	/**
	 * 유저 수
	 * @return
	 */
	public List<Integer> userCount();
}
