package brainburst.tt.dao;

import java.util.List;

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
}
