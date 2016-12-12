package brainburst.tt.dto;

import org.springframework.stereotype.Component;

@Component
public class CategoryDTO {
	private String categoryCode;
	private String categoryName;
	
	public CategoryDTO() {
		// TODO Auto-generated constructor stub
	}

	public CategoryDTO(String categoryCode, String categoryName) {
		super();
		this.categoryCode = categoryCode;
		this.categoryName = categoryName;
	}

	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
}
