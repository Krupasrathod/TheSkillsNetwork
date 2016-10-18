package vo;

import java.io.Serializable;

public class RegistrationVO implements Serializable {
 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
 private int regId;
 private String email;
 private String gender;
 private String firstname;
 private String lastname;
 private String password;
 private String salt;
 private String rpassword;
 private String filePath;
 private String contactNumber;
 private String since;
 private String companyName;
 private String currentPosition;
 private String department;
 
 private String branchName;
 private String dateofBirth;
 private String branchAddress;
 private String maritalStatus;
 private String nationality;
 private String zipCode;
 private String street;
 private String country;
 private String state;
 private String city;
 private String languagesKnown;
 private String designation;
 private String role;


 
public String getSince() {
	return since;
}
public void setSince(String since) {
	this.since = since;
}
public String getCompanyName() {
	return companyName;
}
public void setCompanyName(String companyName) {
	this.companyName = companyName;
}
public String getCurrentPosition() {
	return currentPosition;
}
public void setCurrentPosition(String currentPosition) {
	this.currentPosition = currentPosition;
}
public String getDepartment() {
	return department;
}
public void setDepartment(String department) {
	this.department = department;
}
public String getBranchName() {
	return branchName;
}
public void setBranchName(String branchName) {
	this.branchName = branchName;
}
public String getDateofBirth() {
	return dateofBirth;
}
public void setDateofBirth(String dateofBirth) {
	this.dateofBirth = dateofBirth;
}
public String getBranchAddress() {
	return branchAddress;
}
public void setBranchAddress(String branchAddress) {
	this.branchAddress = branchAddress;
}
public String getMaritalStatus() {
	return maritalStatus;
}
public void setMaritalStatus(String maritalStatus) {
	this.maritalStatus = maritalStatus;
}
public String getNationality() {
	return nationality;
}
public void setNationality(String nationality) {
	this.nationality = nationality;
}
public String getZipCode() {
	return zipCode;
}
public void setZipCode(String zipCode) {
	this.zipCode = zipCode;
}
public String getStreet() {
	return street;
}
public void setStreet(String street) {
	this.street = street;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getLanguagesKnown() {
	return languagesKnown;
}
public void setLanguagesKnown(String languagesKnown) {
	this.languagesKnown = languagesKnown;
}

public static long getSerialversionuid() {
	return serialVersionUID;
}


 

public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

public int getRegId() {
	return regId;
}
public void setRegId(int regId) {
	this.regId = regId;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}
public String getRpassword() {
	return rpassword;
}
public void setRpassword(String rpassword) {
	this.rpassword = rpassword;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getContactNumber() {
	return contactNumber;
}
public void setContactNumber(String contactNumber) {
	this.contactNumber = contactNumber;
}
public String getDesignation() {
	return designation;
}
public void setDesignation(String designation) {
	this.designation = designation;
}
public String getFilePath() {
	return filePath;
}
public void setFilePath(String filePath) {
	this.filePath = filePath;
}
public String getSalt() {
	return salt;
}
public void setSalt(String salt) {
	this.salt = salt;
}
}