package kr.co.mall.repository.vo;

public class MyBagVO {
	// 장바구니 넘버
	private int bNo;
	// 회원 넘버
	private int mNo;
	// 제품 넘버
	private int pNo;
	// 제품 갯수
	private int bCnt;
	// 제품 사이즈
	private String bSize;
	// 페이지 수
	private int pageNum;
	// ---- return value
	// 아이디
	private String id;
	// 가격
	private int pPrice;
	// 제품명
	private String pName;
	// 경로 + 이름
	private String pReal;
	private String pPath;
	public int getbNo() {
		return bNo;
	}
	public void setbNo(int bNo) {
		this.bNo = bNo;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public int getbCnt() {
		return bCnt;
	}
	public void setbCnt(int bCnt) {
		this.bCnt = bCnt;
	}
	public String getbSize() {
		return bSize;
	}
	public void setbSize(String bSize) {
		this.bSize = bSize;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getpPrice() {
		return pPrice;
	}
	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpReal() {
		return pReal;
	}
	public void setpReal(String pReal) {
		this.pReal = pReal;
	}
	public String getpPath() {
		return pPath;
	}
	public void setpPath(String pPath) {
		this.pPath = pPath;
	}
	@Override
	public String toString() {
		return "MyBagVO [bNo=" + bNo + ", mNo=" + mNo + ", pNo=" + pNo + ", bCnt=" + bCnt + ", bSize=" + bSize
				+ ", pageNum=" + pageNum + ", id=" + id + ", pPrice=" + pPrice + ", pName=" + pName + ", pReal=" + pReal
				+ ", pPath=" + pPath + "]";
	}
	
	
}
