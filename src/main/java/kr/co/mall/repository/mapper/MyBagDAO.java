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
<<<<<<< HEAD
=======
	public void deleteMyBag(int[] bNo){
		sqlSessionTemplate.delete("deleteMyBag",bNo);
	}
	public void deleteAllMyBag(int mNo){
		sqlSessionTemplate.delete("deleteAllMyBag",mNo);
	}
	public void updateCntMyBag(MyBagVO myBag) {
		sqlSessionTemplate.update("updateCntMyBag",myBag);
	}
	public void insertCntMyBag(MyBagVO myBag) {
		sqlSessionTemplate.insert("insertCntMyBag",myBag);
	}
>>>>>>> d4e1ef708a6df85f351e9bfd110722808d15b6fe
	
}
