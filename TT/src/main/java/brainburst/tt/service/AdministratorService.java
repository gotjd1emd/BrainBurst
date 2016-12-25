package brainburst.tt.service;

import java.util.List;
import java.util.Map;

import brainburst.tt.dto.FundApplyDTO;
import brainburst.tt.dto.ReportDTO;
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
	
	/**
	 * ���� ���� update
	 * */
	
	public int webtoonState(int webtoonCode, String state);
	
	/**
	 * ���� level update
	 * */
	public int webtoonLevel(int webtoonCode, String level);
	
	/**
	 * ���� level update
	 * */
	public int userLevel(String email, String level);
	
	/**
	 * �ݵ���û ����Ʈ ���
	 * */
	public List<FundApplyDTO> fundApplyManage();
	
	/**
	 * �Ű� ����Ʈ ���
	 * */
	public List<ReportDTO> reportManage();
	
	/**
	 * �ݵ���û ����
	 * */
	public int applyDelete(int webtoonCode);
	
	/**
	 * �Ű��� ����
	 * @param reportSequence
	 * @return
	 */
	public int reportDelete(int reportSequence);
	
	/**
	 * ���� ��
	 * @return
	 */
	public List<Integer> userCount();
}
