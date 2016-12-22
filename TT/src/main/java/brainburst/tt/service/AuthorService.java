package brainburst.tt.service;

import java.util.List;
import java.util.Map;

import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.ImageDTO;
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
	 * @param List<ImageDTO> ���Ǽҵ��� �̹��������� ��� DTO
	 * @return �������� 1:���� 0:����
	 */
	int addSeries (WebtoonDTO webtoonDTO, EpisodeDTO episodeDTO, List<ImageDTO> imageList);
	
	/**
	 * ��ǰ����
	 * ����ڰ� �ۼ��� ������ ������� ��ǰ���� ����
	 * @param webtoonDTO �信�� ������ ���������� ��� DTO
	 * @return �������� 1:���� 0:����
	 */
	int modifyWebtoon(WebtoonDTO webtoonDTO);
	
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
	
	/**
	 * Category Name ��������
	 */
	String selectCategoryName(int webtoonCode);
	
	/**
	 * ���Ǽҵ� ���ε�
	 * @param episodeDTO
	 * @param imageList
	 * @return
	 */
	int episodeUpload(EpisodeDTO episodeDTO, List<ImageDTO> imageList);
	
	/**
	 * ���Ǽҵ� ����
	 * @param episodeDTO
	 * @param imageList
	 * @return
	 */
	int modifyEpisode(EpisodeDTO episodeDTO, Map<String, List<ImageDTO>> imageList);
	
	/**
	 * �����ڵ忡 �ش��ϴ� �������� ã��
	 * @param webtoonCode
	 * @return
	 */
	WebtoonDTO selectWebtoon(int webtoonCode);
	
	/**
	 * ī�װ� �ڵ�� ī�װ� �̸� ��������
	 * @param categoryCode
	 * @return
	 */
	String getCategoryName(String categoryCode);
	
	/**
	 * 
	 * @param nickname
	 * @return
	 */
	List<WebtoonDTO> selectMyWebtoon(String nickname);

}
