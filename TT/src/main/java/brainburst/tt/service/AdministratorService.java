package brainburst.tt.service;

import java.util.List;

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
}
