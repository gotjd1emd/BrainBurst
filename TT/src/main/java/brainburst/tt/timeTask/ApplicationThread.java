package brainburst.tt.timeTask;

import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

public class ApplicationThread extends Thread {

	public ApplicationThread() {
		System.out.println("ApplicationThread Ω√¿€");
	}
	
	@Override
	public void run() {
		while(true) {
			Date date = new Date();
			String today = (date.getYear()+1900) + "/" + (date.getMonth()+1) + "/" + date.getDate();
			
			//Timer t = new Timer(true);
			//TimerTask episodeDeadlineCheck = new EpisodeUploadDeadline();
			
			//t.schedule(episodeDeadlineCheck, new Date("2016/12/23 21:00:00"));
			System.out.println(date);
			try {
				sleep(1000*60*60*24);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
}
