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
		//������ ���� ���Ǽҵ� ���ε� ���ϸ� ������·� ���� and �г�Ƽ
		
		//������ �Ϸ�� �ݵ� ���̺� �ݵ�Ʃ�� �߰�
		
		//��ǥ�� ��ä������ �г�Ƽ 400T���� ������ �г�Ƽ
	}

}
