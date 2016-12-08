package brainburst.tt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("test")
public class TestController {

	@RequestMapping("webtoon")
	public String aa() {
		
		return "main/webtoon";
	}
	
	@RequestMapping("episode/{episodeSequence}")
	public String episode() {
		
		return "main/episode";
	}
	
}
