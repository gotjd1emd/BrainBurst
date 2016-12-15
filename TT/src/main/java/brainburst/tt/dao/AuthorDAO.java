package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface AuthorDAO {
	/**
	 * ������� ������� �ҷ�����
	 * @param nickname ����ڴг���
	 * @param webtoonState ��������(����,�ϰ�)
	 * @return
	 */
	List<WebtoonDTO> getMyWebtoon(String nickname, String webtoonState);
	
	/**
	 * �۰������������
	 * @param email
	 * @return
	 */
	int madeAuthorPage(UserDTO dto);
	
	/**
	 * ������������
	 * @param email
	 * @return
	 */
	UserDTO updateUserInfo(UserDTO dto);
	
	/**
	 * ī�װ��̸� ��������
	 * @param webtoonCode
	 * @return
	 */
	String selectCategoryName(String webtoonCode);
}
