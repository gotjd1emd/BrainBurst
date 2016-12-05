package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.AdditionalInfoDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface UserDAO {
	/**
	 * 중복체크 조건
	 * return 타입 : boolean
	 * parameter 값 : email
	 * sql : select email from user_information where email = #{email}
	 * 기능 : 
	 * 		값이 존재하면 1  ==> 중복된 아이디 , 회원가입 불가
	 * 		값이 없으면 0  ==>  중복체크 완료, 회원가입 가능
	 * */
	public int checkId(String email);

	/**
	 * Login 기능
	 * return 타입 : UserDTO
	 * parameter 값 : email, password
	 * sql : select email, nickname, phone, password, cash_Point, level, name, gender, birth_Date
	 * 			from user_information
	 * */
	public UserDTO login(String email, String passwords);
	
	/**
	 * SignUp 기능 - 회원가입
	 * return타입 : int
	 * parameter 값 : UserDTO
	 * sql : insert into user_information values ( #{email}, #{nickname}, #{phone}, #{password},
	 * 						#{cashPoint}, #{level}, #{name}, #{gender}, #{birthDate} )
	 * 기능 :
	 * 		1 ==> 가입완료
	 * 		0 ==> 가입실패
	 * */
	public int signUp(UserDTO userDto);

	/**
	 * 추가 정보 입력 기능
	 * return 타입 : int
	 * parameter 값 : additionalInfoDTO
	 * sql : insert into additional values (#{email}, #{accountPassword}, #{accountNumber}, #{identificationCard})
	 * 기능 : 추가 정보 입력
	 * 		1  ==> 기입완료
	 * 		0  ==> 가입실패
	 * */
	public int addtionalInfo(AdditionalInfoDTO additionalInfoDTO);
	
	/**
	 * 정보 수정 전 비밀번호확인
	 *  return : UserDTO
	 *  parameterType : email, password
	 *  sql : select email, password from user_information where email = #{email} and password = #{password}
	 *  기능 : 
	 *  	회원 탈퇴시, 회원정보 수정시,
	 *		2차로 비밀번호 확인
	 *		1 ==> 비밀 번호 일치
	 *		0 ==> 불일치
	 * */
	public int userCheckByPassword(String email, String password);
	
	/**
	 * 회원탈퇴
	 * return 타입 : int
	 * parameterType : email, password
	 * sql : delete from user_information where email = #{email}
	 * 기능 : 탈퇴 클릭시 password 확인 후 email에 해당하는 유저 정보삭제
	 * 		1 ==> 탈퇴성공
	 * 		0 ==> 탈퇴실패
	 * */
	public int userDelete(String email, String password);
	
	/**
	 * 회원정보수정
	 * return 타입 : UserDto
	 * parameterType :  UserDTO
	 * sql : update user_information set nickname=#{nickname}, password=#{password}, phone=#{phone}
	 * 기능 : password 확인 후 email에 해당하는 유저 정보 수정 ( 닉네임, 패스워드, 전화번호 )
	 * */
	public UserDTO userUpdate(UserDTO userDto);
	
	/**
	 * 회원구독관리
	 * return 타입 : void
	 * parameterType : void
	 * sql : select webtoon_name, author, webtoon_state, webtoon_thumbnail
	 * 		from subscription join webtoon
	 * 		using (webtoon_code)
	 * 		where email = #{email}
	 * 기능 : 구독한 웹툰의 이름, 작가, 상태, 섬네일을 가져와 DTO로 저장 후 
	 * 		List에 저장하여 return
	 * */
	public List<WebtoonDTO> userSubscription(String email);

	/**
	 * 회원 T 내역
	 * */
	
	/**
	 * 회원 T 충전
	 * */
	
	/**
	 * 회원 작가 신청
	 * */
}
