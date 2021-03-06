package kr.co.mall.service.mybag;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mall.repository.mapper.MyBagDAO;
import kr.co.mall.repository.vo.MyBagVO;

@Service
public class MyBagServiceImpl implements MyBagService {
	
	@Autowired
	private MyBagDAO myBagDao;

	@Override
	public List<MyBagVO> myBagSelectAll(int pageNum, String id) {
		List<MyBagVO> list = myBagDao.selectAllMyBag(pageNum, id);
		return list;
	}
	@Override
	public void myBagDelete(int[] bNo) {
		myBagDao.deleteMyBag(bNo);
	}
	@Override
	public void myBagAllDelete(int mNo) {
		myBagDao.deleteAllMyBag(mNo);
	}
	@Override
	public void myBagUpdateCnt(MyBagVO myBag) {
		myBagDao.updateCntMyBag(myBag);
	}
	@Override
	public void myBagInsert(MyBagVO myBag) {
		myBagDao.insertCntMyBag(myBag);
	}
	
}
