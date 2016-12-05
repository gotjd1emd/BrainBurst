package brainburst.tt.service;

import brainburst.tt.dto.AdditionalInfoDTO;
import brainburst.tt.dto.UserDTO;

public interface UserService {

	/**
	 * User Login 기능
	 * 리턴 타입 : UserDTO
	 * Parameter : Email, Password
	 * */
	public UserDTO login(String email, String password);
	
	/**
	 * signUp 기능 - 회원가입
	 * 리턴 타입 : void
	 * Parameter : UserDTO
	 * */
	public void signUp(UserDTO userDto);
	
	/**
	 * 추가 정보 기입 기능
	 * 리턴 타입 : void
	 * Parameter : AdditionalInfoDTO
	 * */
	public void addtionInfo(AdditionalInfoDTO additionalInfoDTO);
}
