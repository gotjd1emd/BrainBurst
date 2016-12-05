package brainburst.tt.dao;

import brainburst.tt.dto.AdditionalInfoDTO;
import brainburst.tt.dto.UserDTO;

public interface UserDAO {
	/**
	 * �ߺ�üũ ����
	 * */
	public boolean checkId(String id);

	/**
	 * Login ���
	 * return Ÿ�� : UserDTO
	 * parameter �� : email, password
	 * sql : select nickname, phone, password, cash_Point, level, name, gender, birth_Date
	 * 			from user_infomation
	 * */
	public UserDTO login(String email, String passwords);

	/**
	 * SignUp ��� - ȸ������
	 * returnŸ�� : void
	 * parameter �� : UserDTO 
	 * */
	public void signUp(UserDTO userDto);

	/**
	 * Login ���
	 * return Ÿ�� : ???
	 * parameter �� : addtionalInfoDTO
	 * */
	public void addtionalInfo(AdditionalInfoDTO additionalInfoDTO);
}
