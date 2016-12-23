package brainburst.tt.dao;

import java.util.List;

import brainburst.tt.dto.AdditionalInfoDTO;
import brainburst.tt.dto.EpisodeDTO;
import brainburst.tt.dto.ImageDTO;
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
	String selectCategoryName(int webtoonCode);
	
	/**
	 * ���Ǽҵ� ���ε�
	 * @param episodeDTO
	 * @return
	 */
	int episodeUpload(EpisodeDTO episodeDTO);
	
	/**
	 * ���ε��� ���Ǽҵ� �������ѹ� ��������
	 * @param webtoonCode
	 * @param episodeNumber
	 * @return
	 */
	int selectEpisodeSequence(int webtoonCode, int episodeNumber);
	
	/**
	 * ���Ǽҵ� �̹��� ����
	 * @param imageDTO
	 * @return
	 */
	int insertEpisodeImage(ImageDTO imageDTO);
	
	/**
	 * ���Ǽҵ� ���̺� ����
	 * @param episodeDTO
	 * @return
	 */
	int modifyEpisode(EpisodeDTO episodeDTO);
	
	/**
	 * ���Ǽҵ� �̹��� ����
	 * @param imageDTO
	 * @return
	 */
	int modifyImage(ImageDTO imageDTO);
	
	/**
	 * ���Ǽҵ� �̹��� ����
	 * @param imageDTO
	 * @return
	 */
	int deleteImage(ImageDTO imageDTO);
	
	/**
	 * ���� ���
	 * @param webtoonDTO
	 * @return
	 */
	int registerWebtoon(WebtoonDTO webtoonDTO);
	
	/**
	 * ���� ����
	 * @param webtoonDTO
	 * @return
	 */
	int modifyWebtoon(WebtoonDTO webtoonDTO);
	
	/**
	 * ���� �ڵ忡 �´� �������� ã��
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
	 * �ֱ� ����� �ڽ��� ������ �����ڵ�
	 * @param nickname
	 * @return
	 */
	int lastMyWebtoonCode(String nickname);

	/**
	 * 
	 * @param nickname
	 * @return
	 */
	List<WebtoonDTO> selectMyWebtoon(String nickname);
	
	/**
	 * �۰� �߰����� �˻�
	 * */
	AdditionalInfoDTO selectAdditionalInfo(String email);
	
	/**
	 * �۰� �߰����� �߰�
	 * */
	int insertAdditionalInfo(AdditionalInfoDTO additionalInfoDTO);
	
	/**
	 * �۰� �߰����� ����
	 * */
	int updateadditionalInfo(AdditionalInfoDTO additionalInfoDTO);
}
