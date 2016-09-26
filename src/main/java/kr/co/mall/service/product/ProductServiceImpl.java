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
	public List<ProductVO> selectRegDate(ProductVO productVO) {
		return pDao.selectRegDate(productVO);
		
	}

	@Override
	public List<ProductVO> selectLowPrice(ProductVO productVO) {
		return pDao.selectLowPrice(productVO);
	}

	@Override
	public List<ProductVO> selectHighPrice(ProductVO productVO) {
		return pDao.selectHighPrice(productVO);
	}

	@Override
	public List<ProductVO> selectName(ProductVO productVO) {
		return pDao.selectName(productVO);
	}

	
	
}
