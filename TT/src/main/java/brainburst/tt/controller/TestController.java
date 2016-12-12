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
		return "webtoon/episode";
	}
	
	@RequestMapping("modifyEpisode/{episodeSequence}")
	public String modifyEpisode() {
		return "webtoon/modifyEpisode";
	}
}
