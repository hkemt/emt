package emt.emt.common.domain;

import java.sql.Date;

public class User {

/*
	  USER_ID		 VARCHAR2(20 BYTE) 
	  USER_PW		 VARCHAR2(20 BYTE) 
	  EMAIL			 VARCHAR2(50 BYTE) 
	  USER_DATE 	 DATE
*/
	private String userId;
	private String userPw;
	private String email;
	private Date userDate;
	private int auth;
	private String uuid;
	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}

	public String getUserId() {
		return userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public String getEmail() {
		return email;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public Date getUserDate() {
		return userDate;
	}

	public void setUserDate(Date userDate) {
		this.userDate = userDate;
	}
	
	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userPw=" + userPw + ", email="
				+ email + ", userDate=" + userDate + ", auth=" + auth
				+ ", uuid=" + uuid + "]";
	}

}
