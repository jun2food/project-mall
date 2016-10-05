package kr.co.mall.service.search;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mall.repository.mapper.ProductDAO;
import kr.co.mall.repository.mapper.SearchDAO;
import kr.co.mall.repository.vo.ProductVO;

@Service
public class SearchServiceImpl implements SearchService {
	@Autowired
	private SearchDAO sDao;
	
	@Override
	public List<ProductVO> searchPage(Map<String, String> map) {
		System.out.println("in");
		System.out.println(map.get("page"));
		List<ProductVO> list = sDao.searchPage(map);
		System.out.println(list.get(0).getpPath());
		System.out.println(list.get(0).getpOri());
		return list;
		
	}
	
}
