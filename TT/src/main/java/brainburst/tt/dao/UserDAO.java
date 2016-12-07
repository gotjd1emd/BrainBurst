package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.AdditionalInfoDTO;
import brainburst.tt.dto.CashHistoryDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface UserDAO {
	/**
	 * �ߺ�üũ ����
	 * return Ÿ�� : int
	 * parameter �� : String
	 * sql : select email from user_information where email = #{email}
	 * ��� : 
	 * 		���� �����ϸ� 0  ==> �ߺ��� ���̵� , ȸ������ �Ұ�
	 * 		���� ������ 1  ==>  �ߺ�üũ �Ϸ�, ȸ������ ����
	 * */
	public int checkId(String email);

	/**
	 * Login ���
	 * return Ÿ�� : UserDTO
	 * parameter �� : UserDTO
	 * sql : select email, nickname, phone, password, cash_Point, level, name, gender, birth_Date
	 * 			from user_information
	 * ��� : �̸��ϰ� ��й�ȣ�� üũ
	 * */
	public UserDTO login(UserDTO userDTO);
	
	/**
	 * ��й�ȣã��
	 * return Ÿ�� : String password
	 * parameter �� : UserDTO
	 * sql : select password from user_information where email = #{email} and phone=#{phone} and name=#{name}
	 * ��� :  �̸���, ��ȭ��ȣ, �̸����� �˻�
	 * */
	public String findPassword(UserDTO userDTO);
	
	/**
	 * �̸���(���̵�)ã��
	 * return Ÿ�� : String email
	 * parameter �� : UserDTO
	 * sql : select email from user_information where phone=#{phone} and name=#{name}
	 * ��� : �̸�, ��ȭ��ȣ���� �˻�
	 * */
	public String findEmail(UserDTO userDTO);
	
	/**
	 * SignUp ��� - ȸ������
	 * returnŸ�� : int
	 * parameter �� : String
	 * sql : insert into user_information values ( #{email}, #{nickname}, #{phone}, #{password},
	 * 						#{cashPoint}, #{level}, #{name}, #{gender}, #{birthDate} )
	 * ��� :
	 * 		1 ==> ���ԿϷ�
	 * 		0 ==> ���Խ���
	 * */
	public int signUp(String email);

	/**
	 * �߰� ���� �Է� ���
	 * return Ÿ�� : int
	 * parameter �� : additionalInfoDTO
	 * sql : insert into additional_info values (#{email}, #{accountPassword}, #{accountNumber}, #{identificationCard})
	 * ��� : �߰� ���� �Է�
	 * 		1  ==> ���ԿϷ�
	 * 		0  ==> ���Խ���
	 * */
	public int addtionalInfo(AdditionalInfoDTO additionalInfoDTO);
	
	/**
	 * ���� ���� �� ��й�ȣȮ��
	 *  return : UserDTO
	 *  parameterType : UserDTO
	 *  sql : select email, password from user_information where email = #{email} and password = #{password}
	 *  ��� : �̸��ϰ� ��й�ȣ�� ��ġ���� Ȯ��
	 *  	ȸ�� Ż���, ȸ������ ������,
	 *		2���� ��й�ȣ Ȯ��
	 *		1 ==> ��� ��ȣ ��ġ
	 *		0 ==> ����ġ
	 * */
	public int userCheckByPassword(UserDTO userDTO);
	
	/**
	 * ȸ��Ż��
	 * return Ÿ�� : int
	 * parameterType : UserDTO
	 * sql : delete from user_information where email = #{email}
	 * ��� : �̸��ϰ� ��й�ȣ�� Ȯ��
	 * 		Ż�� Ŭ���� password Ȯ�� �� email�� �ش��ϴ� ���� ��������
	 * 		1 ==> Ż�𼺰�
	 * 		0 ==> Ż�����
	 * */
	public int userDelete(String email);
	
	/**
	 * ȸ����������
	 * return Ÿ�� : UserDto
	 * parameterType :  UserDTO
	 * sql : update user_information set password=#{password}, phone=#{phone}
	 * ��� : password Ȯ�� �� email�� �ش��ϴ� ���� ���� ���� ( �н�����, ��ȭ��ȣ )
	 * */
	public int userUpdate(UserDTO userDTO);
	
	/**
	 * ȸ���������
	 * return Ÿ�� : List<WebtoonDTO>
	 * parameterType : String
	 * sql : select webtoon_name, author, webtoon_state, webtoon_thumbnail
	 * 		from subscription join webtoon
	 * 		using (webtoon_code)
	 * 		where email = #{email}
	 * ��� : ������ ������ �̸�, �۰�, ����, �������� ������ DTO�� ���� �� 
	 * 		List�� �����Ͽ� return
	 * */
	public List<WebtoonDTO> showListSubscription(String email);
	
	/**
	 * �����ϱ�
	 * return Ÿ�� : int
	 * parameterType : webtoonDTO
	 * sql : insert into subscription values (#{email}, #{webtoonCode})
	 * ��� : �̸��ϰ� �����ڵ���
	 * 		���ɿ� ���� �������� ��ư�� Ŭ���Ͽ� �����ϱ�
	 * 		1 ==> �����Ϸ�
	 * 		0 ==> ��������
	 * */
	public int applySubscription(WebtoonDTO webtoonDTO);
	
	/**
	 * ��������
	 * return Ÿ�� : int
	 * parameterType : webtoonDTO
	 * sql : delete from subscription where email = #{email} and webtoon_code = #{webtoonCode}
	 * ��� : �̸���, �����ڵ��̿�
	 * 		�ش� �������� ���� ��ư ��ü
	 * 		1 ==> �����Ϸ�
	 * 		0 ==> ��������
	 * */
	public int deleteSubscription(WebtoonDTO webtoonDTO);
	
	/**
	 * ȸ�� T ����
	 * return Ÿ�� : List<THistoryDTO>
	 * parameterType : String email
	 * sql : select account_day, cash_point, content, trade_state from T_history
	 * 			where email=#{email}
	 * ��� : ȸ�� T ���� ��ü ��ȸ
	 * */
	public List<CashHistoryDTO> showListCashHistory(String email);
	
	/**
	 * ȸ�� T ����
	 * return Ÿ�� : int
	 * parameter Type : int cashPoint
	 * sql : update user_information set cash_point = #{cashPoint}+#{plusCashPoint}
	 * ��� : ���� T ����Ʈ�� �Է¹��� T ����Ʈ�� ���� ����  cashPoint�� �޾� update ��Ų��
	 * 		1 ==> �����Ϸ�
	 * 		2 ==> ��������
	 * */
	public int CashCharge(int cashPoint);
	
	/**
	 * ȸ�� �۰� ��û
	 * return Ÿ�� : UserDTO
	 * parameter Type : String email
	 * sql : update user_information set level = "�Ϲ��۰�" where email=#{email}
	 * ��� : �Ϲ� �۰� ��û�� ������ level�� �Ϲ��۰��� �±�
	 * */
	public UserDTO applyAuthor(String email);
	
	
}
