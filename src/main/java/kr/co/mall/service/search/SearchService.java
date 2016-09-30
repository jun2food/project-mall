package kr.co.mall.service.search;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.mall.repository.vo.ProductVO;

public interface SearchService {
	public List<ProductVO> searchPage(Map<String, String> map);
}
