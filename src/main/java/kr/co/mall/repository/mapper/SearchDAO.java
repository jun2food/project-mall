package kr.co.mall.repository.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mall.repository.vo.ProductVO;

@Repository
public class SearchDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<ProductVO> searchPage(Map<String, String> map){
		return sqlSessionTemplate.selectList("kr.co.mall.search.SearchDAO.searchPage", map);
	}
	
}
