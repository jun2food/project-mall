package kr.co.mall.controller.mybag;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
		List<MyBagVO> list = myBagService.myBagSelectAll(pageNum, id);
		return list;
	}
	@RequestMapping("/myBagDelete.do")
	@ResponseBody
	public void myBagDelete(@RequestBody int[] bNo){
		myBagService.myBagDelete(bNo);
	}
	@RequestMapping("/myBagAllDelete.do")
	@ResponseBody
	public void myBagAllDelete(HttpSession session){
		MemberVO member = (MemberVO)session.getAttribute("user");
		int mNo = member.getNo();
		myBagService.myBagAllDelete(mNo);
	}
	@RequestMapping("/myBagCntUpdate.do")
	@ResponseBody
	public void myBagUpdateCnt(MyBagVO myBag){
		myBagService.myBagUpdateCnt(myBag);
	}
}
