package brainburst.tt.dto;

public class FundApplyDTO {
	
	private int applyFundSequence;
	private String email;
	private int webtoonCode;
	private int score;
	
	public FundApplyDTO(int applyFundSequence, String email, int webtoonCode, int score) {
		this.email = email;
		this.webtoonCode = webtoonCode;
		this.score = score;
		this.applyFundSequence = applyFundSequence;
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

	public int getApplyFundSequence() {
		return applyFundSequence;
	}

	public void setApplyFundSequence(int applyFundSequence) {
		this.applyFundSequence = applyFundSequence;
	}
	
}
