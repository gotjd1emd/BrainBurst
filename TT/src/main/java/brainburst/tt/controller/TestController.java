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
	
	@RequestMapping("myWebtoon")
	public String bb() {
		
		return "main/myWebtoon";
	}
	
	@RequestMapping("episode/{episodeSequence}")
	public String episode() {
		
		return "main/episode";
	}
	
	@RequestMapping("modifyEpisode/{episodeSequence}")
	public String modifyEpisode() {
		
		return "main/modifyEpisode";
	}
	
}
