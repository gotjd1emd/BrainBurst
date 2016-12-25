package brainburst.tt.dto;

public class PayHistoryDTO {
	private String email;
	private int fundCode;
	private int cashPoint;
	private String paymentDate;
	private String paymentItem;
	
	public PayHistoryDTO() {
		// TODO Auto-generated constructor stub
	}

	public PayHistoryDTO(String email, int fundCode, int cashPoint, String paymentDate, String paymentItem) {
		super();
		this.email = email;
		this.fundCode = fundCode;
		this.cashPoint = cashPoint;
		this.paymentDate = paymentDate;
		this.paymentItem = paymentItem;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getFundCode() {
		return fundCode;
	}

	public void setFundCode(int fundCode) {
		this.fundCode = fundCode;
	}

	public int getCashPoint() {
		return cashPoint;
	}

	public void setCashPoint(int cashPoint) {
		this.cashPoint = cashPoint;
	}

	public String getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}

	public String getPaymentItem() {
		return paymentItem;
	}

	public void setPaymentItem(String paymentItem) {
		this.paymentItem = paymentItem;
	}
}
