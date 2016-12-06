package brainburst.tt.dto;

public class EpisodeDTO {
	int episodeSequence;
	String webtoonCode;
	int episodeNumber;
	int hits;
	int recommendation;
	String uploadDate;
	String episodeTitle;
	String nicknameWord;
	String thumbnail;
	int fundCode;
	public EpisodeDTO() {
		System.out.println("EpisodeDTO 기본 생성자 호출");
	}
	public EpisodeDTO(int episodeSequence, String webtoonCode, int episodeNumber, int hits, int recommendation,
			String uploadDate, String episodeTitle, String nicknameWord, String thumbnail, int fundCode) {
		System.out.println("EpisodeDTO 전체 생성자 호출");
		this.episodeSequence = episodeSequence;
		this.webtoonCode = webtoonCode;
		this.episodeNumber = episodeNumber;
		this.hits = hits;
		this.recommendation = recommendation;
		this.uploadDate = uploadDate;
		this.episodeTitle = episodeTitle;
		this.nicknameWord = nicknameWord;
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
	public String getNicknameWord() {
		return nicknameWord;
	}
	public void setNicknameWord(String nicknameWord) {
		this.nicknameWord = nicknameWord;
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
	
}
