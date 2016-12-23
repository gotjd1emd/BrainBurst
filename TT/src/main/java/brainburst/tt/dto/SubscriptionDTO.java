package brainburst.tt.dto;

public class SubscriptionDTO {
	private int sequence;
	private String email;
	private String webtoonCode;
	private WebtoonDTO webtoonDTO;

	

	public SubscriptionDTO() {}

	public SubscriptionDTO(int sequence, String email, String webtoonCode, WebtoonDTO webtoonDTO) {
		this.sequence = sequence;
		this.email = email;
		this.webtoonCode = webtoonCode;
		this.webtoonDTO = webtoonDTO;
	}

	public int getSequence() {
		return sequence;
	}

	public void setSequence(int sequence) {
		this.sequence = sequence;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWebtoonCode() {
		return webtoonCode;
	}

	public void setWebtoonCode(String webtoonCode) {
		this.webtoonCode = webtoonCode;
	}

	public WebtoonDTO getWebtoonDTO() {
		return webtoonDTO;
	}

	public void setWebtoonDTO(WebtoonDTO webtoonDTO) {
		this.webtoonDTO = webtoonDTO;
	}

	@Override
	public String toString() {
		return "SubscriptionDTO [sequence=" + sequence + ", email=" + email + ", webtoonCode=" + webtoonCode
				+ ", webtoonDTO=" + webtoonDTO + "]";
	}
}
