package kr.co.mall.controller.detail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.mall.service.detail.DetailService;

@Controller
@RequestMapping("/detail")
public class DetailController {
	@Autowired
	private DetailService detailService;
	
	@RequestMapping("/detailList.do")
	public String  detailPage(String pNo,Model model ){
		int pNo1 = Integer.parseInt(pNo);
		model.addAttribute("detailPage",detailService.detailPage(pNo1));
		System.out.println("PNO1값은? " +pNo1 );
		System.out.println("이미지 가져오나" +detailService.detailImage(pNo1));
		model.addAttribute("detailImage", detailService.detailImage(pNo1));
		System.out.println(detailService.detailImage(pNo1).get(0).getIfPath());
		model.addAttribute("categorySize",detailService.categorySize(pNo1));
		return "detail/detail";
	}
}
