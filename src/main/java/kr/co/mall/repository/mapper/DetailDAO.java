package kr.co.mall.repository.mapper;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mall.repository.vo.DetailVO;
import kr.co.mall.repository.vo.ProductVO;

@Repository
public class DetailDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public ProductVO detailPage(int pNo){
		return sqlSessionTemplate.selectOne("kr.co.mall.detail.DetailDAO.detailPage", pNo);
	};
	
	public List<DetailVO> detailImage(int pNo){
		System.out.println(pNo);
		 
		List<DetailVO> dList=sqlSessionTemplate.selectList("kr.co.mall.detail.DetailDAO.detailImage", pNo);
		System.out.println("씨발"+dList.get(0).getIfPath());
		return dList;
	};
	public List<String> categorySize(int pNo){
		return sqlSessionTemplate.selectList("kr.co.mall.detail.DetailDAO.categorySize", pNo);
	}
	public void insertImage(DetailVO detailVO){
		 sqlSessionTemplate.insert("kr.co.mall.detail.DetailDAO.insertImage", detailVO);
	}
};
