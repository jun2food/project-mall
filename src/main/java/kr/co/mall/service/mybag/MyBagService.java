package kr.co.mall.service.mybag;

import java.util.List;

import kr.co.mall.repository.vo.MyBagVO;

public interface MyBagService {
	List<MyBagVO> myBagSelectAll(int pageNum, String id);
	public void myBagSelectOne();
	public void myBagInsert();
	public void myBagUpdate();
	public void myBagDelete();
}
