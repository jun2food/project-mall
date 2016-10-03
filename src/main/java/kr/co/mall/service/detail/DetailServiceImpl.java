package kr.co.mall.service.detail;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mall.repository.mapper.DetailDAO;
import kr.co.mall.repository.vo.DetailVO;
import kr.co.mall.repository.vo.ProductVO;

@Service
public class DetailServiceImpl implements DetailService {
	@Autowired
	private DetailDAO dDao;
	
	
	@Override
	public ProductVO detailPage(int pNo) {
		
		return dDao.detailPage(pNo);
	}

	@Override
	public List<DetailVO> detailImage(int pNo) {
		
		return dDao.detailImage(pNo);
	}

	@Override
	public List<String> categorySize(int pNo) {
		
		return dDao.categorySize(pNo);
	}

	@Override
	public void insertImage(DetailVO detailVO) {
		dDao.insertImage(detailVO);
		
	}
	
}
