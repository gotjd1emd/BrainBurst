package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.ApplicationForPayWebtoonDTO;
import brainburst.tt.dto.UserDTO;



public interface AdministratorDAO {

	
	/**
	 * admin 로그인 (보류)
	 * email,password, name
	 * 
	 * */
	UserDTO adminLogin(String email, String password);
	
	
	/**
	 * 유료화 신청 관리
	 * */
	List<ApplicationForPayWebtoonDTO> searchForPayWebtoonList();
	
	
	/**
	 * 유료화 신청 update
	 * */
	
	

	/**
	 * 웹툰 관리 list
	 * */

	
	
	/**
	 * 웹툰 상태 신청 관리 
	 * 		(연재, 휴재, 블라인드, 연재완료)	 
	 * */

	
	/**
	 * 
	 * 웹툰 상태 update 
	 * 
	 * */	
	
	
	/**
	 * 신고 목록 list 출력
	 * */	
	
	
	/**
	 *신고관리(처리) update 
	 * 

	 * */
	
	
	/**
	 * 회계처리(이 달 의 총 충전 T, 금액) 
	 * */
	
	/**
	 * 회계처리(달 별 누계 )
	 * 
	 * */
}
