package brainburst.tt.dto;

public class FundApplyDTO {
	
	private String email;
	private int webtoonCode;
	private int score;
	
	public FundApplyDTO(String email, int webtoonCode, int score) {
		this.email = email;
		this.webtoonCode = webtoonCode;
		this.score = score;
	}

	public FundApplyDTO() {
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getWebtoonCode() {
		return webtoonCode;
	}

	public void setWebtoonCode(int webtoonCode) {
		this.webtoonCode = webtoonCode;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}
	
}
