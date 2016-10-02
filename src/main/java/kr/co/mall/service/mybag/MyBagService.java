package kr.co.mall.service.mybag;

import java.util.List;

import kr.co.mall.repository.vo.MyBagVO;

public interface MyBagService {
	List<MyBagVO> myBagSelectAll(int pageNum, String id);
	public void myBagDelete(int[] bNo);
	public void myBagAllDelete(int mNo);
	public void myBagUpdateCnt(MyBagVO myBag);
	public void myBagInsert(MyBagVO myBag);
}
