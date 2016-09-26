package kr.co.mall.repository.mapper;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mall.repository.vo.ProductVO;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int selectCount(){
		return sqlSessionTemplate.selectOne("kr.co.mall.product.ProductDAO.selectCount");
	}
	public List<ProductVO> selectRegDate(int page){
		int page1= (page-1)*8;
		return sqlSessionTemplate.selectList("kr.co.mall.product.ProductDAO.selectRegDate", page1);
				
	}
	public List<ProductVO> selectLowPrice(int page){
		int page1= (page-1)*8;
		return sqlSessionTemplate.selectList("kr.co.mall.product.ProductDAO.selectLowPrice", page1);
	}
	public List<ProductVO> selectHighPrice(int page){
		int page1= (page-1)*8;
		return sqlSessionTemplate.selectList("kr.co.mall.product.ProductDAO.selectHighPrice", page1);
	}
	public List<ProductVO> selectName(int page){
		int page1= (page-1)*8;
		return sqlSessionTemplate.selectList("kr.co.mall.product.ProductDAO.selectName", page1);
	}
}
