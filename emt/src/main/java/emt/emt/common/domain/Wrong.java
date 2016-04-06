package emt.emt.common.domain;

public class Wrong {
/*
	MY_NO		NUMBER
	MY_CODE		NUMBER
	USER_ID		VARCHAR2(20 BYTE)
*/
	private int myNo;
	private int myCode;
	private String userId;
	
	public Wrong() {	}
	
	public Wrong(int myNo, int myCode, String userId) {
		this.myNo = myNo;
		this.myCode = myCode;
		this.userId = userId;
	}
	
	public int getMyNo() {
		return myNo;
	}
	public void setMyNo(int myNo) {
		this.myNo = myNo;
	}
	public int getMyCode() {
		return myCode;
	}
	public void setMyCode(int myCode) {
		this.myCode = myCode;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
}
