package brainburst.tt.dao;

import java.util.List;

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
}
