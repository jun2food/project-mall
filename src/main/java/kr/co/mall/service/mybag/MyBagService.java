package kr.co.mall.service.mybag;

import java.util.List;

import kr.co.mall.repository.vo.MyBagVO;

public interface MyBagService {
	List<MyBagVO> myBagSelectAll(int pageNum, String id);
<<<<<<< HEAD
	public void myBagSelectOne();
	public void myBagInsert();
	public void myBagUpdate();
	public void myBagDelete();
=======
	public void myBagDelete(int[] bNo);
	public void myBagAllDelete(int mNo);
	public void myBagUpdateCnt(MyBagVO myBag);
	public void myBagInsert(MyBagVO myBag);
>>>>>>> d4e1ef708a6df85f351e9bfd110722808d15b6fe
}
