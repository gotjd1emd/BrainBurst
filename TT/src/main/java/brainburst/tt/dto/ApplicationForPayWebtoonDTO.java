package brainburst.tt.dto;

import org.springframework.stereotype.Component;

/**
 * 包府磊 蜡丰拳 脚没 包府 DTO
 * */
@Component
public class ApplicationForPayWebtoonDTO {
 		private int applyPaidSequence;
 		private String email;
 		private String webtoonCode;
	
 	
 		private UserDTO userDTO;
 		private WebtoonDTO webtoonDTO;
 		private CategoryDTO categoryDTO;
 		
 		
 		
 		public ApplicationForPayWebtoonDTO() {
			// TODO Auto-generated constructor stub
		}
 		
 	
 		


		public int getApplyPaidSequence() {
			return applyPaidSequence;
		}
		public void setApplyPaidSequence(int applyPaidSequence) {
			this.applyPaidSequence = applyPaidSequence;
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
		public UserDTO getUserDTO() {
			return userDTO;
		}
		public void setUserDTO(UserDTO userDTO) {
			this.userDTO = userDTO;
		}
		public WebtoonDTO getWebtoonDTO() {
			return webtoonDTO;
		}
		public void setWebtoonDTO(WebtoonDTO webtoonDTO) {
			this.webtoonDTO = webtoonDTO;
		}
		public CategoryDTO getCategoryDTO() {
			return categoryDTO;
		}
		public void setCategoryDTO(CategoryDTO categoryDTO) {
			this.categoryDTO = categoryDTO;
		}
	
	
 		
 	
 		
 	
	
}