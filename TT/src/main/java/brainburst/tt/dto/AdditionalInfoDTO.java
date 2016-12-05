package brainburst.tt.dto;

public class AdditionalInfoDTO {
	private String email;
	private String secondaryPassword;
	private String accountNumber;
	private String identificationCard;
	
	public AdditionalInfoDTO() {
		System.out.println("AdditionalInfoDTO 기본생성자 호출");
	}

	public AdditionalInfoDTO(String email, String secondaryPassword, String accountNumber, String identificationCard) {
		this.email = email;
		this.secondaryPassword = secondaryPassword;
		this.accountNumber = accountNumber;
		this.identificationCard = identificationCard;
		System.out.println("additionalInfoDTO 전체 생성자 호출");
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSecondaryPassword() {
		return secondaryPassword;
	}

	public void setSecondaryPassword(String secondaryPassword) {
		this.secondaryPassword = secondaryPassword;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getIdentificationCard() {
		return identificationCard;
	}

	public void setIdentificationCard(String identificationCard) {
		this.identificationCard = identificationCard;
	}
}
