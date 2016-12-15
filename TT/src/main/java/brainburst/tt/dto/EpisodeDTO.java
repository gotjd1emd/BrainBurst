package brainburst.tt.dto;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class EpisodeDTO {
	private int episodeSequence;
	private String webtoonCode;
	private int episodeNumber;
	private int hits;
	private int recommendation;
	private String uploadDate;
	private String episodeTitle;
	private String authorWord;
	private String thumbnail;
	private int fundCode;
	
	private MultipartFile thumbnailFile;
	//private List<ImageDTO> image;
	private List<MultipartFile> image;
	
	public EpisodeDTO() {
		System.out.println("EpisodeDTO 기본 생성자 호출");
	}
	public EpisodeDTO(int episodeSequence, String webtoonCode, int episodeNumber, int hits, int recommendation,
			String uploadDate, String episodeTitle, String authorWord, String thumbnail, int fundCode) {
		System.out.println("EpisodeDTO 전체 생성자 호출");
		this.episodeSequence = episodeSequence;
		this.webtoonCode = webtoonCode;
		this.episodeNumber = episodeNumber;
		this.hits = hits;
		this.recommendation = recommendation;
		this.uploadDate = uploadDate;
		this.episodeTitle = episodeTitle;
		this.authorWord = authorWord;
		this.thumbnail = thumbnail;
		this.fundCode = fundCode;
	}
	public int getEpisodeSequence() {
		return episodeSequence;
	}
	public void setEpisodeSequence(int episodeSequence) {
		this.episodeSequence = episodeSequence;
	}
	public String getWebtoonCode() {
		return webtoonCode;
	}
	public void setWebtoonCode(String webtoonCode) {
		this.webtoonCode = webtoonCode;
	}
	public int getEpisodeNumber() {
		return episodeNumber;
	}
	public void setEpisodeNumber(int episodeNumber) {
		this.episodeNumber = episodeNumber;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public int getRecommendation() {
		return recommendation;
	}
	public void setRecommendation(int recommendation) {
		this.recommendation = recommendation;
	}
	public String getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(String uploadDate) {
		this.uploadDate = uploadDate;
	}
	public String getEpisodeTitle() {
		return episodeTitle;
	}
	public void setEpisodeTitle(String episodeTitle) {
		this.episodeTitle = episodeTitle;
	}
	public String getAuthorWord() {
		return authorWord;
	}
	public void setAuthorWord(String authorWord) {
		this.authorWord = authorWord;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public int getFundCode() {
		return fundCode;
	}
	public void setFundCode(int fundCode) {
		this.fundCode = fundCode;
	}
	
	public MultipartFile getThumbnailFile() {
		return thumbnailFile;
	}
	
	public void setThumbnailFile(MultipartFile thumbnailFile) {
		this.thumbnailFile = thumbnailFile;
	}
	
	public List<MultipartFile> getImage() {
		return image;
	}

	public void setImage(List<MultipartFile> image) {
		this.image = image;
	}
}
