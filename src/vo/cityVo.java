package vo;

public class cityVo 
{
	private int cityID;
	 private String cityName;
	 private String cityCode;
	 private stateVO statevo;
	 
	public int getCityID() {
		return cityID;
	}
	public void setCityID(int cityID) {
		this.cityID = cityID;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getCityCode() {
		return cityCode;
	}
	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}
	public stateVO getStatevo() {
		return statevo;
	}
	public void setStatevo(stateVO statevo) {
		this.statevo = statevo;
	}
}
