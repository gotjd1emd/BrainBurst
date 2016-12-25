package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.FundApplyDTO;
import brainburst.tt.dto.ReportDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;



public interface AdministratorDAO {

	/**
	 * 관리자 페이지 유저관리
	 * return type : List<UserDTO>
	 * parameter Type : 없음
	 * sql : select email, nickname, phone, password, cash_Point, user_level, name, gender, birth_date from user_information 
	 * */
	public List<UserDTO> userManage();
	
	
	/**
	 * 관리자 페이지 웹툰관리
	 * return type : list<WebtoonDTO>
	 * sql : SELECT WEBTOON_NAME, WEBTOON_LEVEL, WEBTOON_STATE, CATEGORY_name, PENALTY, NICKNAME, FUNDING_PERIOD, SUMMARY 
	 * FROM join WEBTOON and category using(category_code)
	 * */
	public List<WebtoonDTO> webtoonManage();
	
	/**
	 * userSnow하기
	 * */
	public int userSnow(String email);
	
	/**
	 * userMelt하기
	 * */
	public int userMelt(String email);
	
	/**
	 * webtoon State update
	 * */
	public int webtoonState(int webtoonCode, String state);
	
	/**
	 * webtoon Level update
	 * */
	public int webtoonLevel(int webtoonCode, String level);
	
	/**
	 * 펀딩신청 리스트 출력
	 * */
	public List<FundApplyDTO> fundApplyManage();
	
	/**
	 * 신고 리스트 출력
	 * */
	public List<ReportDTO> reportManage();
	
	/**
	 * 유저레벨
	 * @param email
	 * @param level
	 * @return
	 */
	public int userLevel(String email, String level);
	
	/**
	 * 신청 지우기
	 * @param webtoonCode
	 * @return
	 */
	public int applyDelete(int webtoonCode);
	
	/**
	 * 신고목록 지우기
	 * @param reportSequence
	 * @return
	 */
	public int reportDelete(int reportSequence);
	
	/**
	 * 유저 레벨별 수 구하기
	 * @param column
	 * @param value
	 * @return
	 */
	public int userLevelCount(String userLevel);
	
	/**
	 * 성별 수 구하기
	 * @param gender
	 * @return
	 */
	int genderCount(String gender);
	
	/**
	 * 총 유저수
	 * @return
	 */
	int userCount();
}
