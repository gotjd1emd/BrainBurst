package brainburst.tt.dto;

public class PaidApplyDTO {
	private String email;
	private int webtoonCode;
	public PaidApplyDTO() {
	}
	public PaidApplyDTO(String email, int webtoonCode) {
		this.email = email;
		this.webtoonCode = webtoonCode;
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
	
}
