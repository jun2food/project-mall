package kr.co.mall.service.product;

import java.util.List;

import kr.co.mall.repository.vo.ProductVO;

public interface ProductService {
	//현재 총 게시물수
	public int selectCount();
	//현재 페이지에 따라 보여줄 게시물db
	public List<ProductVO> selectRegDate(int page);
	public List<ProductVO> selectLowPrice(int page);
	public List<ProductVO> selectHighPrice(int page);
	public List<ProductVO> selectName(int page);
}
