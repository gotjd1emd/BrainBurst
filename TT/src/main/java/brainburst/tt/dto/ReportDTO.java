package brainburst.tt.dto;

import org.springframework.stereotype.Component;

@Component
public class ReportDTO {
	private int reportSequence;
	private String content;
	private String email;
	private int webtoonCode;
	private int episodeSequence;
	
	public int getReportSequence() {
		return reportSequence;
	}
	public void setReportSequence(int reportSequence) {
		this.reportSequence = reportSequence;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	
	public int getEpisodeSequence() {
		return episodeSequence;
	}
	public void setEpisodeSequence(int episodeSequence) {
		this.episodeSequence = episodeSequence;
	}
	public ReportDTO(String content, String email, int webtoonCode, int episodeSequence) {
		super();
		this.content = content;
		this.email = email;
		this.webtoonCode = webtoonCode;
		this.episodeSequence = episodeSequence;
	}
	public ReportDTO(int reportSequence,String content, String email, int webtoonCode, int episodeSequence) {
		super();
		this.reportSequence = reportSequence;
		this.content = content;
		this.email = email;
		this.webtoonCode = webtoonCode;
		this.episodeSequence = episodeSequence;
	}
	public ReportDTO() {
		System.out.println("ReportDTO기본 생성자 생성됨.");
	}
}
