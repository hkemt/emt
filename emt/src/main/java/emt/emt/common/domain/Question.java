package emt.emt.common.domain;

public class Question {
	
/*	
  	TEST_NO			NUMBER
	TEST_CONTENT	VARCHAR2(400 BYTE)
	TEST_TYPE		NUMBER
	TEST_MP3		VARCHAR2(100 BYTE)
	TEST_IMG		VARCHAR2(100 BYTE)
*/
	
	private int testNo;
	private String testContent;
	private int testType;
	private String testMp3;
	private String testImg;
	
	public Question() {	}
	
	public Question(int testNo, String testContent, int testType, String testMp3, String testImg) {
		this.testNo = testNo;
		this.testContent = testContent;
		this.testType = testType;
		this.testMp3 = testMp3;
		this.testImg = testImg;
	}
	
	public int getTestNo() {
		return testNo;
	}
	public void setTestNo(int testNo) {
		this.testNo = testNo;
	}
	public String getTestContent() {
		return testContent;
	}
	public void setTestContent(String testContent) {
		this.testContent = testContent;
	}
	public int getTestType() {
		return testType;
	}
	public void setTestType(int testType) {
		this.testType = testType;
	}
	public String getTestMp3() {
		return testMp3;
	}
	public void setTestMp3(String testMp3) {
		this.testMp3 = testMp3;
	}
	public String getTestImg() {
		return testImg;
	}
	public void setTestImg(String testImg) {
		this.testImg = testImg;
	}
	
	

}
