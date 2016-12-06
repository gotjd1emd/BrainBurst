package brainburst.tt.dto;

import org.springframework.stereotype.Component;

@Component
public class CashHistoryDTO {
	private String email;
	private String accountDay;
	private int cashPoint;
	private String content;
	private String tradeState;
	
	public CashHistoryDTO() {
		System.out.println("THistory 기본 생성자 호출");
	}

	public CashHistoryDTO(String email, String date, int cashPoint, String content, String tradeState) {
		this.email = email;
		this.accountDay = date;
		this.cashPoint = cashPoint;
		this.content = content;
		this.tradeState = tradeState;
		System.out.println("THistory 기본 생성자 호출");
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDate() {
		return accountDay;
	}

	public void setDate(String date) {
		this.accountDay = date;
	}

	public int getCashPoint() {
		return cashPoint;
	}

	public void setCashPoint(int cashPoint) {
		this.cashPoint = cashPoint;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTradeState() {
		return tradeState;
	}

	public void setTradeState(String tradeState) {
		this.tradeState = tradeState;
	}
	
}
