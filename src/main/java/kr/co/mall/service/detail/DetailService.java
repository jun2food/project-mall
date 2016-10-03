package kr.co.mall.service.detail;

import java.util.List;

import kr.co.mall.repository.vo.DetailVO;
import kr.co.mall.repository.vo.ProductVO;

public interface DetailService {
	public ProductVO detailPage(int pNo);
	public List<DetailVO> detailImage(int pNo);
	public List<String> categorySize(int pNo);
	public void insertImage(DetailVO detailVO);
}
