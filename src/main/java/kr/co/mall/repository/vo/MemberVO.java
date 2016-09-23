package kr.co.mall.repository.vo;

public class MemberVO {
	// 회원넘버
	private int no;
	// 아이디
	private String id;
	// 이름
	private String name;
	// 비밀번호
	private String pw;
	// 등급  n,null: 비회원, y: 회원, a: 관리자
	private String flag;
	// 성별 male/ female
	private String gender;
	// 외부 아이디(페이스북)
	private String fId;
	// 외부 판단 N,null:normal, F:facebook
	private String signFlag;
	
	
	
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getFbId() {
		return fId;
	}
	public void setFbId(String fbId) {
		this.fId = fbId;
	}
	public String getSignFlag() {
		return signFlag;
	}
	public void setSignFlag(String signFlag) {
		this.signFlag = signFlag;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	
	
}
