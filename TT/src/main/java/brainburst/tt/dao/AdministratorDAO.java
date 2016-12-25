package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.FundApplyDTO;
import brainburst.tt.dto.ReportDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;



public interface AdministratorDAO {

	/**
	 * ������ ������ ��������
	 * return type : List<UserDTO>
	 * parameter Type : ����
	 * sql : select email, nickname, phone, password, cash_Point, user_level, name, gender, birth_date from user_information 
	 * */
	public List<UserDTO> userManage();
	
	
	/**
	 * ������ ������ ��������
	 * return type : list<WebtoonDTO>
	 * sql : SELECT WEBTOON_NAME, WEBTOON_LEVEL, WEBTOON_STATE, CATEGORY_name, PENALTY, NICKNAME, FUNDING_PERIOD, SUMMARY 
	 * FROM join WEBTOON and category using(category_code)
	 * */
	public List<WebtoonDTO> webtoonManage();
	
	/**
	 * userSnow�ϱ�
	 * */
	public int userSnow(String email);
	
	/**
	 * userMelt�ϱ�
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
	 * �ݵ���û ����Ʈ ���
	 * */
	public List<FundApplyDTO> fundApplyManage();
	
	/**
	 * �Ű� ����Ʈ ���
	 * */
	public List<ReportDTO> reportManage();
	
	/**
	 * ��������
	 * @param email
	 * @param level
	 * @return
	 */
	public int userLevel(String email, String level);
	
	/**
	 * ��û �����
	 * @param webtoonCode
	 * @return
	 */
	public int applyDelete(int webtoonCode);
	
	/**
	 * �Ű��� �����
	 * @param reportSequence
	 * @return
	 */
	public int reportDelete(int reportSequence);
	
	/**
	 * ���� ������ �� ���ϱ�
	 * @param column
	 * @param value
	 * @return
	 */
	public int userLevelCount(String userLevel);
	
	/**
	 * ���� �� ���ϱ�
	 * @param gender
	 * @return
	 */
	int genderCount(String gender);
	
	/**
	 * �� ������
	 * @return
	 */
	int userCount();
}
