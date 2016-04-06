package emt.emt.common.domain;

public class User {
	
/*	
  	USER_ID		VARCHAR2(20 BYTE)
	USER_PW		VARCHAR2(20 BYTE)
	EMAIL		VARCHAR2(50 BYTE)
*/
	private String userId;
	private String userPw;
	private String email;
	
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
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userPw=" + userPw + ", email="
				+ email + "]";
	}
}
