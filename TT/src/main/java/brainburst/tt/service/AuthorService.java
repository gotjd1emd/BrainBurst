package brainburst.tt.service;

import java.util.List;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.UserDTO;
import brainburst.tt.dto.WebtoonDTO;

public interface AuthorService {
	/**
	 * ������ ����ڰ� �۰��� ����(WEBTOON ���̺��� NICKNAME�� USER_INFOMATION ���̺��� NICKNAME�� ����)��,
	 * �������� ����� ����
	 * @param nickname ������� �г���
	 * @return ������� �������� �������
	 */
	List<WebtoonDTO> getSerialWebtoon(String nickname);
	
	/**
	 * ������ ����ڰ� �۰��� ����(WEBTOON ���̺��� NICKNAME�� USER_INFOMATION ���̺��� NICKNAME�� ����)��,
	 * �ϰ�� ����� ����
	 */
	List<WebtoonDTO> getCompleteWebtoon(String nickname);
	
	/**
	 * ��ǰ���
	 * ����ڰ� �ۼ��� ������ ������� ��ǰ�� ���
	 * @param webtoonDTO �信�� ������ ���������� ��� DTO
	 * @param episodeDTO �信�� ������ ùȭ ������ ��� DTO
	 * @return �������� 1:���� 0:����
	 */
	int addSeries (WebtoonDTO webtoonDTO, EpisodeDTO episodeDTO);
	
	/**
	 * ��ǰ����
	 * ����ڰ� �ۼ��� ������ ������� ��ǰ���� ����
	 * @param webtoonDTO �信�� ������ ���������� ��� DTO
	 * @return �������� 1:���� 0:����
	 */
	int updateSeries (WebtoonDTO webtoonDTO);
	
	/**
	 * ��������
	 * @param webtoonCode �信�� ������ �����Ϸ��� ������ �����ڵ�
	 * @param state �����Ϸ��� ����
	 * @return �������� 1:���� 0:����
	 */
	int setSeriesState (String webtoonCode, String state);
	
	/**
	 * �۰������������
	 * @param email
	 * @return
	 */
	UserDTO madeAuthorPage (UserDTO userDTO);
}
