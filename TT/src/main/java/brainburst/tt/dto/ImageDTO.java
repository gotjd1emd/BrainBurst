package brainburst.tt.dto;

import org.springframework.stereotype.Component;

@Component
public class ImageDTO {
	private int imageIndex;
	private int episodeSequence;
	private String fileName;
	
	public ImageDTO() {
		// TODO Auto-generated constructor stub
	}

	public ImageDTO(int imageIndex, int episodeSequence, String fileName) {
		super();
		this.imageIndex = imageIndex;
		this.episodeSequence = episodeSequence;
		this.fileName = fileName;
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

}
