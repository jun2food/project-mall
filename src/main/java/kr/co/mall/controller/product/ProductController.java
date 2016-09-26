package kr.co.mall.controller.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mall.repository.vo.ProductVO;
import kr.co.mall.service.product.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private ProductVO productVO;
	
	@RequestMapping("/selectCount.json")
	@ResponseBody
	public String selectCount(){
		return String.valueOf(productService.selectCount());
	}
	@RequestMapping("/selectPage.json")
	@ResponseBody
	public List<ProductVO>selectPage(String page, String num, String pCategory1,String pCategory2 ){
		
		int page1 = Integer.parseInt(page);
		
		productVO.setPage(page1);
		productVO.setpCategory1(pCategory1);
		productVO.setpCategory2(pCategory2);
		
		switch(num){
		case "1":
			return productService.selectLowPrice(productVO);
		case "2" :
			return productService.selectHighPrice(productVO);
			
		case "3" :
			return productService.selectName(productVO);
		
		default :	
			System.out.println("디폴트들어옴");
			 List<ProductVO> pList= productService.selectRegDate(productVO);
			 System.out.println(pList);
			return pList;
			
		}
	}

	
}
