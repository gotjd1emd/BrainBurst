package brainburst.tt.dto;

public class WebtoonDTO {
	private String webtoonCode;
	private String webtoonName;
	private String webtoonLevel;
	private String webtoonState;
	private String categoryCode;
	private String penalty;
	private String author;
	private int fundingPeriod;
	private String summary;
	
	public WebtoonDTO() {
		System.out.println("webtoonDTO 기본 생성자 호출");
	}

	public WebtoonDTO(String webtoonCode, String webtoonName, String webtoonLevel, String webtoonState,
			String categoryCode, String penalty, String author, int fundingPeriod, String summary) {
		this.webtoonCode = webtoonCode;
		this.webtoonName = webtoonName;
		this.webtoonLevel = webtoonLevel;
		this.webtoonState = webtoonState;
		this.categoryCode = categoryCode;
		this.penalty = penalty;
		this.author = author;
		this.fundingPeriod = fundingPeriod;
		this.summary = summary;
		System.out.println("webtoonDTO 전체 생성자 호출");
	}

	public String getWebtoonCode() {
		return webtoonCode;
	}

	public void setWebtoonCode(String webtoonCode) {
		this.webtoonCode = webtoonCode;
	}

	public String getWebtoonName() {
		return webtoonName;
	}

	public void setWebtoonName(String webtoonName) {
		this.webtoonName = webtoonName;
	}

	public String getWebtoonLevel() {
		return webtoonLevel;
	}

	public void setWebtoonLevel(String webtoonLevel) {
		this.webtoonLevel = webtoonLevel;
	}

	public String getWebtoonState() {
		return webtoonState;
	}

	public void setWebtoonState(String webtoonState) {
		this.webtoonState = webtoonState;
	}

	public String getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}

	public String getPenalty() {
		return penalty;
	}

	public void setPenalty(String penalty) {
		this.penalty = penalty;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getFundingPeriod() {
		return fundingPeriod;
	}

	public void setFundingPeriod(int fundingPeriod) {
		this.fundingPeriod = fundingPeriod;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}
}
