package brainburst.tt.service;

import brainburst.tt.dto.AdditionalInfoDTO;
import brainburst.tt.dto.UserDTO;

public interface UserService {

	/**
	 * User Login ���
	 * ���� Ÿ�� : UserDTO
	 * Parameter : Email, Password
	 * */
	public UserDTO login(String email, String password);
	
	/**
	 * signUp ��� - ȸ������
	 * ���� Ÿ�� : void
	 * Parameter : UserDTO
	 * */
	public void signUp(UserDTO userDto);
	
	/**
	 * �߰� ���� ���� ���
	 * ���� Ÿ�� : void
	 * Parameter : AdditionalInfoDTO
	 * */
	public void addtionInfo(AdditionalInfoDTO additionalInfoDTO);
}
