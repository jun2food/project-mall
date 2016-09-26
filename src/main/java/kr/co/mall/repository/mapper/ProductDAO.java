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
	public List<ProductVO> selectRegDate(ProductVO productVO){
		productVO.setPage((productVO.getPage()-1)*8);
		return sqlSessionTemplate.selectList("kr.co.mall.product.ProductDAO.selectRegDate", productVO);
				
	}
	public List<ProductVO> selectLowPrice(ProductVO productVO){
		productVO.setPage((productVO.getPage()-1)*8);
		return sqlSessionTemplate.selectList("kr.co.mall.product.ProductDAO.selectLowPrice", productVO);
	}
	public List<ProductVO> selectHighPrice(ProductVO productVO){
		productVO.setPage((productVO.getPage()-1)*8);
		return sqlSessionTemplate.selectList("kr.co.mall.product.ProductDAO.selectHighPrice", productVO);
	}
	public List<ProductVO> selectName(ProductVO productVO){
		productVO.setPage((productVO.getPage()-1)*8);
		return sqlSessionTemplate.selectList("kr.co.mall.product.ProductDAO.selectName", productVO);
	}
}
