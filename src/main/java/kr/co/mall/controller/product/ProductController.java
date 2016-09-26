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
	
	@RequestMapping("/selectCount.json")
	@ResponseBody
	public String selectCount(){
		
		return String.valueOf(productService.selectCount());
	}
	@RequestMapping("/selectPage.json")
	@ResponseBody
	public List<ProductVO>selectPage(String page, String num){
		System.out.println("컨트롤들어옴");
		int page1 = Integer.parseInt(page);
		System.out.println("변환됨들어옴");
		switch(num){
		case "1":
			return productService.selectLowPrice(page1);
		case "2" :
			return productService.selectHighPrice(page1);
			
		case "3" :
			return productService.selectName(page1);
		
		default :	
			return productService.selectRegDate(page1);
			
		}
	}

	
}
