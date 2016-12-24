package brainburst.tt.timeTask;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import brainburst.tt.service.FundService;

@Component
public class EpisodeUploadDeadline  {
	
	@Autowired
	private FundService fundService;
	
	public EpisodeUploadDeadline() {
		// TODO Auto-generated constructor stub
	}
	
	/*@Override
	public void run() {
		// TODO Auto-generated method stub
		System.out.println("EpisodeUploadDeadline ���� ");
		//������ ���� ���Ǽҵ� ���ε� ���ϸ� ������·� ���� and �г�Ƽ
		int result = fundService.episodeTimeOutCheck();
		System.out.println("episodeTimeOutCheck result : " + result);
		//������ �Ϸ�� �ݵ� ���̺� �ݵ�Ʃ�� �߰��� ��ǥ�� ��ä������ �г�Ƽ 400T���� ������ �г�Ƽ
		result = fundService.startFunding();
		System.out.println("startFunding result : " + result);
	}*/
	@Scheduled(cron="0 48 15 * * *")
	public void scheduleRun() {
		System.out.println("EpisodeUploadDeadline ���� ");
		//������ ���� ���Ǽҵ� ���ε� ���ϸ� ������·� ���� and �г�Ƽ
		int result = fundService.episodeTimeOutCheck();
		System.out.println("episodeTimeOutCheck result : " + result);
		//������ �Ϸ�� �ݵ� ���̺� �ݵ�Ʃ�� �߰��� ��ǥ�� ��ä������ �г�Ƽ 400T���� ������ �г�Ƽ
		result = fundService.startFunding();
		System.out.println("startFunding result : " + result);
	}
}
