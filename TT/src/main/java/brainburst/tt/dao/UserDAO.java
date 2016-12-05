package brainburst.tt.dao;

import brainburst.tt.dto.AdditionalInfoDTO;
import brainburst.tt.dto.UserDTO;

public interface UserDAO {
	/**
	 * 중복체크 조건
	 * */
	public boolean checkId(String id);

	/**
	 * Login 기능
	 * return 타입 : UserDTO
	 * parameter 값 : email, password
	 * sql : select nickname, phone, password, cash_Point, level, name, gender, birth_Date
	 * 			from user_infomation
	 * */
	public UserDTO login(String email, String passwords);

	/**
	 * SignUp 기능 - 회원가입
	 * return타입 : void
	 * parameter 값 : UserDTO 
	 * */
	public void signUp(UserDTO userDto);

	/**
	 * Login 기능
	 * return 타입 : ???
	 * parameter 값 : addtionalInfoDTO
	 * */
	public void addtionalInfo(AdditionalInfoDTO additionalInfoDTO);
}
