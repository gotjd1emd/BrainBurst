package brainburst.tt.dto;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class ImageDTO {
	private int imageIndex;
	private int episodeSequence;
	private String fileName;
	
	private MultipartFile image;
	
	public ImageDTO() {
		// TODO Auto-generated constructor stub
	}

	public ImageDTO(int imageIndex, int episodeSequence, String fileName, MultipartFile image) {
		super();
		this.imageIndex = imageIndex;
		this.episodeSequence = episodeSequence;
		this.fileName = fileName;
		this.image = image;
	}

	public int getImageIndex() {
		return imageIndex;
	}

	public void setImageIndex(int imageIndex) {
		this.imageIndex = imageIndex;
	}

	public int getEpisodeSequence() {
		return episodeSequence;
	}

	public void setEpisodeSequence(int episodeSequence) {
		this.episodeSequence = episodeSequence;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}
	
}
