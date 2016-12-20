package brainburst.tt.service;

import java.util.List;

import brainburst.tt.dto.AdditionalInfoDTO;
import brainburst.tt.dto.CashHistoryDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface UserService {

	/**
	 * Login 기능
	 * return 타입 : UserDTO
	 * parameter 값 : UserDTO
	 * 기능 : 이메일과 비밀번호로 체크
	 * */
	public UserDTO login(UserDTO userDTO);
	
	/**
	 * 비밀번호찾기
	 * return 타입 : String password
	 * parameter 값 : UserDTO
	 * 기능 :  이메일, 전화번호, 이름으로 검색
	 * */
	public String findPassword(UserDTO userDTO);
	
	/**
	 * 이메일(아이디)찾기
	 * return 타입 : String email
	 * parameter 값 : UserDTO
	 * 기능 : 이름, 전화번호으로 검색
	 * */
	public String findEmail(UserDTO userDTO);
	
	/**
	 * SignUp 기능 - 회원가입
	 * return타입 : int
	 * parameter 값 : UserDTO
	 * 기능 :
	 * 		1 ==> 가입완료
	 * 		0 ==> 가입실패
	 * */
	public int signUp(UserDTO userDTO);

	/**
	 * 추가 정보 입력 기능
	 * return 타입 : int
	 * parameter 값 : additionalInfoDTO
	 * 기능 : 추가 정보 입력
	 * 		1  ==> 기입완료
	 * 		0  ==> 가입실패
	 * */
	public int addtionalInfo(AdditionalInfoDTO additionalInfoDTO);
	
	/**
	 * 회원탈퇴
	 * return 타입 : int
	 * parameterType : UserDTO
	 * 기능 : 이메일과 비밀번호로 확인
	 * 		탈퇴 클릭시 password 확인 후 email에 해당하는 유저 정보삭제
	 * 		1 ==> 탈퇴성공
	 * 		0 ==> 탈퇴실패
	 * */
	public int userDelete(UserDTO userDTO);
	
	/**
	 * 회원정보수정
	 * return 타입 : UserDto
	 * parameterType :  UserDTO
	 * 기능 : password 확인 후 email에 해당하는 유저 정보 수정 ( 닉네임, 패스워드, 전화번호 )
	 * */
	public UserDTO userUpdate(UserDTO userDTO);
	
	/**
	 * 회원구독목록
	 * return 타입 : List<WebtoonDTO>
	 * parameterType : String
	 * 기능 : 구독한 웹툰의 이름, 작가, 상태, 섬네일을 가져와 DTO로 저장 후 
	 * 		List에 저장하여 return
	 * */
	public List<WebtoonDTO> showListSubscription(String email);
	
	/**
	 * 구독하기
	 * return 타입 : int
	 * parameterType : webtoonDTO
	 * 기능 : 이메일과 웹툰코드사용
	 * 		관심에 가는 웹툰에서 버튼을 클릭하여 구독하기
	 * 		1 ==> 구독완료
	 * 		0 ==> 구독실패
	 * */
	public int applySubscription(WebtoonDTO webtoonDTO);
	
	/**
	 * 구독삭제
	 * return 타입 : int
	 * parameterType : webtoonDTO
	 * 기능 : 이메일, 웹툰코드이용
	 * 		해당 웹툰에서 구독 버튼 해체
	 * 		1 ==> 삭제완료
	 * 		0 ==> 삭제실패
	 * */
	public int deleteSubscription(WebtoonDTO webtoonDTO);
	
	/**
	 * 회원 T 내역
	 * return 타입 : List<THistoryDTO>
	 * parameterType : String email
	 * 기능 : 회원 T 내역 전체 조회
	 * */
	public List<CashHistoryDTO> showListCashHistory(String email);
	
	/**
	 * 회원 T 충전
	 * return 타입 : int
	 * parameter Type : int cashPoint
	 * 기능 : 현재 T 포인트와 입력받은 T 포인트를 합한 값을  cashPoint로 받아 update 시킨다
	 * 		1 ==> 충전완료
	 * 		2 ==> 충전실패
	 * */
	public int CashCharge(UserDTO userDTO, CashHistoryDTO cashHistoryDTO);
	
	/**
	 * 회원 작가 신청
	 * return 타입 : UserDTO
	 * parameter Type : String email
	 * 기능 : 일반 작가 신청시 유저의 level을 일반작가로 승급
	 * */
	public UserDTO applyAuthor(String email);
	
	/**
	 * 이메일 체크
	 * return 타입 : int
	 * paramter Type : String email
	 * 기능 : 아이디를 체크한다.
	 * */
	public int emailCheck(String email);
}
