package brainburst.tt.dto;

import org.springframework.stereotype.Component;

@Component
public class AdditionalInfoDTO {
	private String email;
	private String accountPassword;
	private String bankName;
	private String accountNumber;
	private String identificationCard;
	
	public AdditionalInfoDTO() {
		System.out.println("AdditionalInfoDTO 기본생성자 호출");
	}

	public AdditionalInfoDTO(String email, String secondaryPassword, String bankName, String accountNumber, String identificationCard) {
		this.email = email;
		this.accountPassword = secondaryPassword;
		this.bankName = bankName;
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

	public String getAccountPassword() {
		return accountPassword;
	}

	public void setAccountPassword(String accountPassword) {
		this.accountPassword = accountPassword;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
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
