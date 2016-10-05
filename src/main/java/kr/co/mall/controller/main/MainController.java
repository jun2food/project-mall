package kr.co.mall.controller.main;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mall.repository.vo.ProductVO;
import kr.co.mall.service.search.SearchService;

@Controller
public class MainController {
	@Autowired
	private SearchService searchService;
	@RequestMapping("/main.do")
	public void main() {
	}

	@RequestMapping("/mainList.do")
	@ResponseBody
	public List<ProductVO> mainList() {
		Map<String,String> map = new HashMap<>();
		map.put("page", "1");
		map.put("pName", "");
		map.put("price1", "");
		map.put("price2", "");
		map.put("pCategory1", "");
		map.put("pCategory2", "");
		List<ProductVO> sList= searchService.searchPage(map);
		for(ProductVO a : sList){
			System.out.println(a.getpOri());
			System.out.println(a.getpPath());
		}
		System.out.println("list ::: "+sList);
		return sList;
	}
}

