package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.AdditionalInfoDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface UserDAO {
	/**
	 * �ߺ�üũ ����
	 * return Ÿ�� : boolean
	 * parameter �� : email
	 * sql : select email from user_information where email = #{email}
	 * ��� : 
	 * 		���� �����ϸ� 1  ==> �ߺ��� ���̵� , ȸ������ �Ұ�
	 * 		���� ������ 0  ==>  �ߺ�üũ �Ϸ�, ȸ������ ����
	 * */
	public int checkId(String email);

	/**
	 * Login ���
	 * return Ÿ�� : UserDTO
	 * parameter �� : email, password
	 * sql : select email, nickname, phone, password, cash_Point, level, name, gender, birth_Date
	 * 			from user_information
	 * */
	public UserDTO login(String email, String passwords);
	
	/**
	 * SignUp ��� - ȸ������
	 * returnŸ�� : int
	 * parameter �� : UserDTO
	 * sql : insert into user_information values ( #{email}, #{nickname}, #{phone}, #{password},
	 * 						#{cashPoint}, #{level}, #{name}, #{gender}, #{birthDate} )
	 * ��� :
	 * 		1 ==> ���ԿϷ�
	 * 		0 ==> ���Խ���
	 * */
	public int signUp(UserDTO userDto);

	/**
	 * �߰� ���� �Է� ���
	 * return Ÿ�� : int
	 * parameter �� : additionalInfoDTO
	 * sql : insert into additional values (#{email}, #{accountPassword}, #{accountNumber}, #{identificationCard})
	 * ��� : �߰� ���� �Է�
	 * 		1  ==> ���ԿϷ�
	 * 		0  ==> ���Խ���
	 * */
	public int addtionalInfo(AdditionalInfoDTO additionalInfoDTO);
	
	/**
	 * ���� ���� �� ��й�ȣȮ��
	 *  return : UserDTO
	 *  parameterType : email, password
	 *  sql : select email, password from user_information where email = #{email} and password = #{password}
	 *  ��� : 
	 *  	ȸ�� Ż���, ȸ������ ������,
	 *		2���� ��й�ȣ Ȯ��
	 *		1 ==> ��� ��ȣ ��ġ
	 *		0 ==> ����ġ
	 * */
	public int userCheckByPassword(String email, String password);
	
	/**
	 * ȸ��Ż��
	 * return Ÿ�� : int
	 * parameterType : email, password
	 * sql : delete from user_information where email = #{email}
	 * ��� : Ż�� Ŭ���� password Ȯ�� �� email�� �ش��ϴ� ���� ��������
	 * 		1 ==> Ż�𼺰�
	 * 		0 ==> Ż�����
	 * */
	public int userDelete(String email, String password);
	
	/**
	 * ȸ����������
	 * return Ÿ�� : UserDto
	 * parameterType :  UserDTO
	 * sql : update user_information set nickname=#{nickname}, password=#{password}, phone=#{phone}
	 * ��� : password Ȯ�� �� email�� �ش��ϴ� ���� ���� ���� ( �г���, �н�����, ��ȭ��ȣ )
	 * */
	public UserDTO userUpdate(UserDTO userDto);
	
	/**
	 * ȸ����������
	 * return Ÿ�� : void
	 * parameterType : void
	 * sql : select webtoon_name, author, webtoon_state, webtoon_thumbnail
	 * 		from subscription join webtoon
	 * 		using (webtoon_code)
	 * 		where email = #{email}
	 * ��� : ������ ������ �̸�, �۰�, ����, �������� ������ DTO�� ���� �� 
	 * 		List�� �����Ͽ� return
	 * */
	public List<WebtoonDTO> userSubscription(String email);

	/**
	 * ȸ�� T ����
	 * */
	
	/**
	 * ȸ�� T ����
	 * */
	
	/**
	 * ȸ�� �۰� ��û
	 * */
}
