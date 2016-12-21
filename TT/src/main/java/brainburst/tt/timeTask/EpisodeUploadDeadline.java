package brainburst.tt.timeTask;

import java.util.TimerTask;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import brainburst.tt.service.FundService;

@Component 
public class EpisodeUploadDeadline extends TimerTask {
	
	@Autowired
	private FundService fundService;
	private String date;
	
	public EpisodeUploadDeadline() {
		// TODO Auto-generated constructor stub
	}
	
	public EpisodeUploadDeadline(String date) {
		this.date = date;
	}
	
	@Override
	public void run() {
		// TODO Auto-generated method stub
		System.out.println("EpisodeUploadDeadline : " + date);
		//������ ���� ���Ǽҵ� ���ε� ���ϸ� ������·� ���� and �г�Ƽ
		//int result = fundService.episodeTimeOutCheck(date);
		//System.out.println("episodeTimeOutCheck result : " + result);
		//������ �Ϸ�� �ݵ� ���̺� �ݵ�Ʃ�� �߰��� ��ǥ�� ��ä������ �г�Ƽ 400T���� ������ �г�Ƽ
		//result = fundService.startFunding(date);
		//System.out.println("startFunding result : " + result);
	}

}
