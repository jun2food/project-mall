package kr.co.mall.controller.search;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mall.repository.vo.ProductVO;
import kr.co.mall.service.product.ProductService;
import kr.co.mall.service.search.SearchService;

@Controller
@RequestMapping("/search")
public class SearchController {
	@Autowired
	private SearchService searchService;
	
	@RequestMapping("/searchPage.json")
	@ResponseBody
	public List<ProductVO> searchPage(String pName, String price1, String price2, String pCategory1, String pCategory2){
		Map<String,String> map = new HashMap<>();
		System.out.println("1"+pName);
		System.out.println("2"+price1);
		System.out.println("3"+price2);
		System.out.println("4"+pCategory1);
		System.out.println("5"+pCategory2);
		map.put("pName", pName);
		map.put("price1", price1);
		map.put("price2", price2);
		map.put("pCategory1", pCategory1);
		map.put("pCategory2", pCategory2);
		
		System.out.println("6"+map.get("pCategory1"));
		List<ProductVO> sList= searchService.searchPage(map);
		System.out.println(sList);
		return sList;
	
	}
}
