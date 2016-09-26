package kr.co.mall.service.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mall.repository.mapper.ProductDAO;
import kr.co.mall.repository.vo.ProductVO;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDAO pDao;
	
	@Override
	public int selectCount() {
		return pDao.selectCount();
	}

	@Override
	public List<ProductVO> selectRegDate(int page) {
		return pDao.selectRegDate(page);
		
	}

	@Override
	public List<ProductVO> selectLowPrice(int page) {
		return pDao.selectLowPrice(page);
	}

	@Override
	public List<ProductVO> selectHighPrice(int page) {
		return pDao.selectHighPrice(page);
	}

	@Override
	public List<ProductVO> selectName(int page) {
		return pDao.selectName(page);
	}

	
	
}
