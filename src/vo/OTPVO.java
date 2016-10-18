package vo;

import sun.util.calendar.BaseCalendar.Date;

public class OTPVO {
	private int userID;
	private String fpasswd;
	private int otp1;
	private long sentTime;
	private long expireTime;
	private String Status;
	private String email1;
	
	public long getSentTime() {
		return sentTime;
	}
	public void setSentTime(long sentTime) {
		this.sentTime = sentTime;
	}
	public long getExpireTime() {
		return expireTime;
	}
	public void setExpireTime(long expireTime) {
		this.expireTime = expireTime;
	}
	public String getFpasswd() {
		return fpasswd;
	}
	public void setFpasswd(String fpasswd) {
		this.fpasswd = fpasswd;
	}
	public int getOtp1() {
		return otp1;
	}
	public void setOtp1(int otp1) {
		this.otp1 = otp1;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public String getEmail1() {
		return email1;
	}
	public void setEmail1(String email1) {
		this.email1 = email1;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
}