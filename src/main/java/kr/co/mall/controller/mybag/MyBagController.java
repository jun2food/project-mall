package kr.co.mall.controller.mybag;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.mall.service.login.LoginService;

@Controller
@RequestMapping("/myBag")
public class MyBagController {
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/myBagList.do")
	public void myBagList(){
		
	}
}
