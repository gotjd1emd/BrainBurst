package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.ApplicationForPayWebtoonDTO;
import brainburst.tt.dto.UserDTO;



public interface AdministratorDAO {

	
	/**
	 * admin �α��� (����)
	 * email,password, name
	 * 
	 * */
	UserDTO adminLogin(String email, String password);
	
	
	/**
	 * ����ȭ ��û ����
	 * */
	List<ApplicationForPayWebtoonDTO> searchForPayWebtoonList();
	
	
	/**
	 * ����ȭ ��û update
	 * */
	
	

	/**
	 * ���� ���� list
	 * */

	
	
	/**
	 * ���� ���� ��û ���� 
	 * 		(����, ����, ����ε�, ����Ϸ�)	 
	 * */

	
	/**
	 * 
	 * ���� ���� update 
	 * 
	 * */	
	
	
	/**
	 * �Ű� ��� list ���
	 * */	
	
	
	/**
	 *�Ű����(ó��) update 
	 * 

	 * */
	
	
	/**
	 * ȸ��ó��(�� �� �� �� ���� T, �ݾ�) 
	 * */
	
	/**
	 * ȸ��ó��(�� �� ���� )
	 * 
	 * */
}
