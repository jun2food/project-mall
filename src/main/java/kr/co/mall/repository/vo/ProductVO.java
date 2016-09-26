package kr.co.mall.repository.vo;

import java.util.Date;

import org.springframework.stereotype.Repository;

@Repository
public class ProductVO {
	private int pNo;
	private int pPrice;
	private String pName;
	private String pDetail;
	private Date pRegDate;
	private String pOri;
	private String pReal;
	private String pPath;
	private String pCategory1;
	private String pCategory2;
	private int page;
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
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
	public String getpDetail() {
		return pDetail;
	}
	public void setpDetail(String pDetail) {
		this.pDetail = pDetail;
	}
	public Date getpRegDate() {
		return pRegDate;
	}
	public void setpRegDate(Date pRegDate) {
		this.pRegDate = pRegDate;
	}
	public String getpOri() {
		return pOri;
	}
	public void setpOri(String pOri) {
		this.pOri = pOri;
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
	public String getpCategory1() {
		return pCategory1;
	}
	public void setpCategory1(String pCategory1) {
		this.pCategory1 = pCategory1;
	}
	public String getpCategory2() {
		return pCategory2;
	}
	public void setpCategory2(String pCategory2) {
		this.pCategory2 = pCategory2;
	}
	
	
}
