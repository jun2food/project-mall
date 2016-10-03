package kr.co.mall.repository.mapper;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mall.repository.vo.MyBagVO;

@Repository
public class MyBagDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<MyBagVO> selectAllMyBag(int pageNum, String id){
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pageNum", pageNum);
		map.put("id", id);
		List<MyBagVO> list = sqlSessionTemplate.selectList("selectAllMyBag",map);
		return list;
	}
	
}
