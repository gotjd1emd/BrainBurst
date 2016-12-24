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
		System.out.println("EpisodeUploadDeadline 시작 ");
		//마감일 종일 에피소드 업로드 못하면 휴재상태로 변경 and 패널티
		int result = fundService.episodeTimeOutCheck();
		System.out.println("episodeTimeOutCheck result : " + result);
		//마감일 하루뒤 펀딩 테이블에 펀딩튜플 추가와 목표를 못채웠으면 패널티 400T보다 작으면 패널티
		result = fundService.startFunding();
		System.out.println("startFunding result : " + result);
	}*/
	@Scheduled(cron="0 48 15 * * *")
	public void scheduleRun() {
		System.out.println("EpisodeUploadDeadline 시작 ");
		//마감일 종일 에피소드 업로드 못하면 휴재상태로 변경 and 패널티
		int result = fundService.episodeTimeOutCheck();
		System.out.println("episodeTimeOutCheck result : " + result);
		//마감일 하루뒤 펀딩 테이블에 펀딩튜플 추가와 목표를 못채웠으면 패널티 400T보다 작으면 패널티
		result = fundService.startFunding();
		System.out.println("startFunding result : " + result);
	}
}
