package brainburst.tt.dto;

public class WebtoonManageDTO {
	private WebtoonDTO webtoonDTO;
	private CashHistoryDTO cashHistoryDTO;

	public WebtoonManageDTO() {	}
	public WebtoonManageDTO(WebtoonDTO webtoonDTO, CashHistoryDTO cashHistoryDTO) {
		this.webtoonDTO = webtoonDTO;
		this.cashHistoryDTO = cashHistoryDTO;
	}

	public WebtoonDTO getWebtoonDTO() {
		return webtoonDTO;
	}

	public void setWebtoonDTO(WebtoonDTO webtoonDTO) {
		this.webtoonDTO = webtoonDTO;
	}

	public CashHistoryDTO getCashHistoryDTO() {
		return cashHistoryDTO;
	}

	public void setCashHistoryDTO(CashHistoryDTO cashHistoryDTO) {
		this.cashHistoryDTO = cashHistoryDTO;
	}
	
}
