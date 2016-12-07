package brainburst.tt.service;

import java.util.List;

import org.springframework.stereotype.Service;

import brainburst.tt.dto.WebtoonDTO;

@Service
public class AuthorServiceImpl implements AuthorService {
	/**
	 * 내 웹툰 상세보기
	 */
	@Override
	public List<WebtoonDTO> getMyWebtoon(String nickname) {
		return null;
	}
}
