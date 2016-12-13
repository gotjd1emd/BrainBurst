package brainburst.tt.service;

import java.util.List;

import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface AdministratorService {

	/**
	 * ������ ������ ��������
	 * return type : userDTO
	 * parameter Type : ����
	 * */
	public List<UserDTO> userManage();
	
	/**
	 * ���� ���� ������
	 * return type : list<webtoonDTO>
	 * parameter type : ����
	 * */
	public List<WebtoonDTO> webtoonManage();
	
	/**
	 * ���� �޸�
	 * */
	public int userSnow(String email);
	
	/**
	 * ���� ���̱�
	 * */
	public int userMelt(String email);
}
