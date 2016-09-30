package kr.co.mall.controller.mybag;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mall.repository.vo.MemberVO;
import kr.co.mall.repository.vo.MyBagVO;
import kr.co.mall.service.mybag.MyBagService;

@Controller
@RequestMapping("/myBag")
public class MyBagController {
	
	@Autowired
	private MyBagService myBagService;
	
	@RequestMapping("/myBagList.do")
	@ResponseBody
	public List<MyBagVO> myBagList(int pageNum, HttpSession session){
		MemberVO member = (MemberVO) session.getAttribute("user");
		if(member == null){
			return null;
		}
		String id = member.getId();
		System.out.println(pageNum);
		System.out.println(id);
		List<MyBagVO> list = myBagService.myBagSelectAll(pageNum, id);
		for(MyBagVO a : list){
			System.out.println(a.getbNo());
		}
		return list;
	}
}
