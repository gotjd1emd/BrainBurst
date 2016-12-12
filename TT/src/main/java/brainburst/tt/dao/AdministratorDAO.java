package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;



public interface AdministratorDAO {

	/**
	 * 包府磊 其捞瘤 蜡历包府
	 * return type : List<UserDTO>
	 * parameter Type : 绝澜
	 * sql : select email, nickname, phone, password, cash_Point, user_level, name, gender, birth_date from user_information 
	 * */
	public List<UserDTO> userManage();
	
	
	/**
	 * 包府磊 其捞瘤 昆坯包府
	 * return type : list<WebtoonDTO>
	 * sql : SELECT WEBTOON_NAME, WEBTOON_LEVEL, WEBTOON_STATE, CATEGORY_name, PENALTY, NICKNAME, FUNDING_PERIOD, SUMMARY 
	 * FROM join WEBTOON and category using(category_code)
	 * */
	public List<WebtoonDTO> webtoonManage();
}
