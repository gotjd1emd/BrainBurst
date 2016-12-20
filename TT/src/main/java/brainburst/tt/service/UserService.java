package brainburst.tt.service;

import java.util.List;

import brainburst.tt.dto.AdditionalInfoDTO;
import brainburst.tt.dto.CashHistoryDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface UserService {

	/**
	 * Login ���
	 * return Ÿ�� : UserDTO
	 * parameter �� : UserDTO
	 * ��� : �̸��ϰ� ��й�ȣ�� üũ
	 * */
	public UserDTO login(UserDTO userDTO);
	
	/**
	 * ��й�ȣã��
	 * return Ÿ�� : String password
	 * parameter �� : UserDTO
	 * ��� :  �̸���, ��ȭ��ȣ, �̸����� �˻�
	 * */
	public String findPassword(UserDTO userDTO);
	
	/**
	 * �̸���(���̵�)ã��
	 * return Ÿ�� : String email
	 * parameter �� : UserDTO
	 * ��� : �̸�, ��ȭ��ȣ���� �˻�
	 * */
	public String findEmail(UserDTO userDTO);
	
	/**
	 * SignUp ��� - ȸ������
	 * returnŸ�� : int
	 * parameter �� : UserDTO
	 * ��� :
	 * 		1 ==> ���ԿϷ�
	 * 		0 ==> ���Խ���
	 * */
	public int signUp(UserDTO userDTO);

	/**
	 * �߰� ���� �Է� ���
	 * return Ÿ�� : int
	 * parameter �� : additionalInfoDTO
	 * ��� : �߰� ���� �Է�
	 * 		1  ==> ���ԿϷ�
	 * 		0  ==> ���Խ���
	 * */
	public int addtionalInfo(AdditionalInfoDTO additionalInfoDTO);
	
	/**
	 * ȸ��Ż��
	 * return Ÿ�� : int
	 * parameterType : UserDTO
	 * ��� : �̸��ϰ� ��й�ȣ�� Ȯ��
	 * 		Ż�� Ŭ���� password Ȯ�� �� email�� �ش��ϴ� ���� ��������
	 * 		1 ==> Ż�𼺰�
	 * 		0 ==> Ż�����
	 * */
	public int userDelete(UserDTO userDTO);
	
	/**
	 * ȸ����������
	 * return Ÿ�� : UserDto
	 * parameterType :  UserDTO
	 * ��� : password Ȯ�� �� email�� �ش��ϴ� ���� ���� ���� ( �г���, �н�����, ��ȭ��ȣ )
	 * */
	public UserDTO userUpdate(UserDTO userDTO);
	
	/**
	 * ȸ���������
	 * return Ÿ�� : List<WebtoonDTO>
	 * parameterType : String
	 * ��� : ������ ������ �̸�, �۰�, ����, �������� ������ DTO�� ���� �� 
	 * 		List�� �����Ͽ� return
	 * */
	public List<WebtoonDTO> showListSubscription(String email);
	
	/**
	 * �����ϱ�
	 * return Ÿ�� : int
	 * parameterType : webtoonDTO
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
	 * ��� : ȸ�� T ���� ��ü ��ȸ
	 * */
	public List<CashHistoryDTO> showListCashHistory(String email);
	
	/**
	 * ȸ�� T ����
	 * return Ÿ�� : int
	 * parameter Type : int cashPoint
	 * ��� : ���� T ����Ʈ�� �Է¹��� T ����Ʈ�� ���� ����  cashPoint�� �޾� update ��Ų��
	 * 		1 ==> �����Ϸ�
	 * 		2 ==> ��������
	 * */
	public int CashCharge(UserDTO userDTO, CashHistoryDTO cashHistoryDTO);
	
	/**
	 * ȸ�� �۰� ��û
	 * return Ÿ�� : UserDTO
	 * parameter Type : String email
	 * ��� : �Ϲ� �۰� ��û�� ������ level�� �Ϲ��۰��� �±�
	 * */
	public UserDTO applyAuthor(String email);
	
	/**
	 * �̸��� üũ
	 * return Ÿ�� : int
	 * paramter Type : String email
	 * ��� : ���̵� üũ�Ѵ�.
	 * */
	public int emailCheck(String email);
}
