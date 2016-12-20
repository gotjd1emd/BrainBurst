package brainburst.tt.timeTask;

import java.util.TimerTask;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import brainburst.tt.service.FundService;

@Component 
public class EpisodeUploadDeadline extends TimerTask {
	
	@Autowired
	private FundService fundService;
	
	@Override
	public void run() {
		// TODO Auto-generated method stub
		System.out.println("EpisodeUploadDeadline");
		//마감일 종일 에피소드 업로드 못하면 휴재상태로 변경 and 패널티
		
		//마감일 하루뒤 펀딩 테이블에 펀딩튜플 추가
		
		//목표를 못채웠으면 패널티 400T보다 작으면 패널티
	}

}
