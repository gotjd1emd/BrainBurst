package brainburst.tt.dto;

public class FundDTO {
	private int fundCode;
	private int episodeFund;
	private int webtoonCode;
	private int episodeNumber;
	private String startDate;
	private String dueDate;
	
	
	public FundDTO() {
	}
	public FundDTO(int fundCode, int episodeFund, int webtoonCode, int episodeNumber, String startDate,
			String dueDate) {
		super();
		this.fundCode = fundCode;
		this.episodeFund = episodeFund;
		this.webtoonCode = webtoonCode;
		this.episodeNumber = episodeNumber;
		this.startDate = startDate;
		this.dueDate = dueDate;
	}
	public int getFundCode() {
		return fundCode;
	}
	public void setFundCode(int fundCode) {
		this.fundCode = fundCode;
	}
	public int getEpisodeFund() {
		return episodeFund;
	}
	public void setEpisodeFund(int episodeFund) {
		this.episodeFund = episodeFund;
	}
	public int getWebtoonCode() {
		return webtoonCode;
	}
	public void setWebtoonCode(int webtoonCode) {
		this.webtoonCode = webtoonCode;
	}
	public int getEpisodeNumber() {
		return episodeNumber;
	}
	public void setEpisodeNumber(int episodeNumber) {
		this.episodeNumber = episodeNumber;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getDueDate() {
		return dueDate;
	}
	public void setEndDate(String dueDate) {
		this.dueDate = dueDate;
	}
	
}
