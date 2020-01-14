package com.camp;

public class User {
	private String UserName;
	private String UserID;
	private String UserGender;
	private String UserEmail;
	private String UserPassword;
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getUserID() {
		return UserID;
	}
	public void setUserID(String userID) {
		UserID = userID;
	}
	public String getUserGender() {
		return UserGender;
	}
	public void setUserGender(String userGender) {
		UserGender = userGender;
	}
	public String getUserEmail() {
		return UserEmail;
	}
	public void setUserEmail(String userEmail) {
		UserEmail = userEmail;
	}
	public String getUserPassword() {
		return UserPassword;
	}
	public void setUserPassword(String userPassword) {
		UserPassword = userPassword;
	}
	@Override
	public String toString() {
		return "User [UserName=" + UserName + ", UserID=" + UserID + ", UserGender=" + UserGender + ", UserEmail="
				+ UserEmail + ", UserPassword=" + UserPassword + "]";
	}
	

	

}
