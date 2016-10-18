package vo;

import java.io.Serializable;

public class countryVO implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	 private int countryID;
	 private String countryName;
	 private String countryCode;
	 
	public int getCountryID() {
		return countryID;
	}
	public void setCountryID(int countryID) {
		this.countryID = countryID;
	}
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
	public String getCountryCode() {
		return countryCode;
	}
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}
	 
	 
	

}
