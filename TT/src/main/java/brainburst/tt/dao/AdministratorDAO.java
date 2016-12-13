package brainburst.tt.dao;

import java.util.List;

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
}
