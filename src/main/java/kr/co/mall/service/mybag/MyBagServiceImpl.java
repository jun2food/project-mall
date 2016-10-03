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
	public void myBagSelectOne() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void myBagInsert() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void myBagUpdate() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void myBagDelete() {
		// TODO Auto-generated method stub
		
	}
	
}
