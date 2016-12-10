package brainburst.tt.dto;

import org.springframework.stereotype.Component;

@Component
public class UserDTO {
	
	private String email;
	private String nickname;
	private String phone;
	private String password;
	private int cashPoint;
	private String level;
	private String name;
	private String gender;
	private String birthDate;
	
	public UserDTO() {
		System.out.println("userDTO 기본 생성자 호출됨");
	}	
	
	public UserDTO(String email, String nickname, String phone, String password, int cashPoint, String level,
			String name, String gender, String birthDate) {
		this.email = email;
		this.nickname = nickname;
		this.phone = phone;
		this.password = password;
		this.cashPoint = cashPoint;
		this.level = level;
		this.name = name;
		this.gender = gender;
		this.birthDate = birthDate;
		System.out.println("userDTO 전체 호출됨");
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getCashPoint() {
		return cashPoint;
	}
	
	public void setCashPoint(int cashPoint) {
		this.cashPoint = cashPoint;
	}
	
	public String getLevel() {
		return level;
	}
	
	public void setLevel(String level) {
		this.level = level;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	@Override
	public String toString() {
		return "UserDTO [email=" + email + ", nickname=" + nickname + ", phone=" + phone + ", password=" + password
				+ ", cashPoint=" + cashPoint + ", level=" + level + ", name=" + name + ", gender=" + gender
				+ ", birthDate=" + birthDate + "]";
	}
}
