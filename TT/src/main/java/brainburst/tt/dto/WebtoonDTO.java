package brainburst.tt.dto;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class WebtoonDTO {
	private int webtoonCode;
	private String webtoonName;
	private String webtoonLevel;
	private String webtoonState;
	private String categoryCode;
	private String penalty;
	private String nickname;
	private int fundingPeriod;
	private String summary;
	private String webtoonThumbnail;
	
	private MultipartFile webtoonThumbnailFile;
	
	private int subscriptionSequence;
	public int getSubscriptionSequence() {
		return subscriptionSequence;
	}
	public void setSubscriptionSequence(int subscriptionSequence) {
		this.subscriptionSequence = subscriptionSequence;
	}

	private CategoryDTO categoryDTO;
	
	public WebtoonDTO() {
		System.out.println("webtoonDTO 기본 생성자 호출");
	}

	public WebtoonDTO(int webtoonCode, String webtoonName, String webtoonLevel, String webtoonState,
			String categoryCode, String penalty, String author, int fundingPeriod, String summary) {
		this.webtoonCode = webtoonCode;
		this.webtoonName = webtoonName;
		this.webtoonLevel = webtoonLevel;
		this.webtoonState = webtoonState;
		this.categoryCode = categoryCode;
		this.penalty = penalty;
		this.nickname = author;
		this.fundingPeriod = fundingPeriod;
		this.summary = summary;
		System.out.println("webtoonDTO 전체 생성자 호출");
	}
	
	
	
	public WebtoonDTO(int webtoonCode, String webtoonName, String webtoonLevel, String webtoonState,
			String categoryCode, String penalty, String nickname, int fundingPeriod, String summary,
			CategoryDTO categoryDTO) {
		this.webtoonCode = webtoonCode;
		this.webtoonName = webtoonName;
		this.webtoonLevel = webtoonLevel;
		this.webtoonState = webtoonState;
		this.categoryCode = categoryCode;
		this.penalty = penalty;
		this.nickname = nickname;
		this.fundingPeriod = fundingPeriod;
		this.summary = summary;
		this.categoryDTO = categoryDTO;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public CategoryDTO getCategoryDTO() {
		return categoryDTO;
	}

	public void setCategoryDTO(CategoryDTO categoryDTO) {
		this.categoryDTO = categoryDTO;
	}

	public int getWebtoonCode() {
		return webtoonCode;
	}

	public void setWebtoonCode(int webtoonCode) {
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
		return nickname;
	}

	public void setAuthor(String author) {
		this.nickname = author;
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
	public String getWebtoonThumbnail() {
		return webtoonThumbnail;
	}
	public void setWebtoonThumbnail(String webtoonThumbnail) {
		this.webtoonThumbnail = webtoonThumbnail;
	}
	
	public MultipartFile getWebtoonThumbnailFile() {
		return webtoonThumbnailFile;
	}
	
	public void setWebtoonThumbnailFile(MultipartFile webtoonThumbnailFile) {
		this.webtoonThumbnailFile = webtoonThumbnailFile;
	}

	@Override
	public String toString() {
		return "WebtoonDTO [webtoonCode=" + webtoonCode + ", webtoonName=" + webtoonName + ", webtoonLevel="
				+ webtoonLevel + ", webtoonState=" + webtoonState + ", categoryCode=" + categoryCode + ", penalty="
				+ penalty + ", nickname=" + nickname + ", fundingPeriod=" + fundingPeriod + ", summary=" + summary
				+", webtoonThumbnail="+ webtoonThumbnail +", categoryDTO=" + categoryDTO +",subscriptionSequence :"+subscriptionSequence+"]";
	}
	public WebtoonDTO(int webtoonCode, String webtoonName, String webtoonLevel, String webtoonState,
			String categoryCode, String penalty, String nickname, int fundingPeriod, String summary,
			String webtoonThumbnail, int subscriptionSequence, CategoryDTO categoryDTO) {
		super();
		this.webtoonCode = webtoonCode;
		this.webtoonName = webtoonName;
		this.webtoonLevel = webtoonLevel;
		this.webtoonState = webtoonState;
		this.categoryCode = categoryCode;
		this.penalty = penalty;
		this.nickname = nickname;
		this.fundingPeriod = fundingPeriod;
		this.summary = summary;
		this.webtoonThumbnail = webtoonThumbnail;
		this.subscriptionSequence = subscriptionSequence;
		this.categoryDTO = categoryDTO;
	}
}
