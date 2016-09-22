package kr.co.mall.controller.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.google.gson.Gson;
import framework.Controller;
import framework.ModelAndView;
import framework.RequestMapping;
import kr.co.mall.login.LoginDAO;
import kr.co.mall.login.service.LoginService;
import kr.co.mall.login.service.LoginServiceImpl;
import kr.co.mall.util.MailSend;
import kr.co.mall.vo.MemberVO;


@Controller
public class LoginController {
	private LoginService loginService;
	public LoginController(){
		loginService = new LoginServiceImpl();
	}
	// 회원가입 아이디 체크
	@RequestMapping("/login/idCheck.do")
	public String idCheck(String id){
		MemberVO member = loginService.loginSelectByOne(id);
		String memberStr = "";
		if(member!=null){
			Gson gson = new Gson();
			memberStr = gson.toJson(member);	
//			System.out.println(memberStr);
		}
		return "ajax:"+memberStr;
	}
	// 회원가입 저장폼
	@RequestMapping("/login/signUp.do")
	public ModelAndView signUp(MemberVO member){
		loginService.loginInsert(member);
		MailSend send = new MailSend();
		ModelAndView mav = send.mailSend(member);
		return mav;
	}
	// 로그아웃
	@RequestMapping("/login/logout.do")
	public String logout(HttpServletRequest req)throws ServletException, IOException{
		HttpSession session = req.getSession();
		session.invalidate();
		return "redirect:" + req.getContextPath() + "/index.jsp";
	}
	// 로그인폼 이동
	@RequestMapping("/login/loginForm.do")
	public void loginForm() throws ServletException, IOException {}
	
	// 로그인 확인
	@RequestMapping("/login/login.do")
	public String login(HttpServletRequest req) throws ServletException, IOException {

		// 로그인 처리
		// 사용자 입력 파라미터 얻기
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		/* 간편로그인 아이디:a 비밀번호:1
		// id = a, pass = 1 이 경우 로그인 성공
		// 메인페이지로 이동
		// 세션에 정보를 설정한다.
		if ("a".equals(id) && "1".equals(pw)) {
			MemberVO m = new MemberVO();
			m.setId(id);
			m.setPw(pw);

			HttpSession session = req.getSession();
			session.setAttribute("user", m);
			return "redirect:" + req.getContextPath() + "/index.jsp";
		}
		// 로그인 실패
		// 로그인 폼 페이지로 이동
		else {
			return "redirect:loginForm.do";
		}
		*/
		// SQL의 ID값이 있으며, 그것으로 불러온 비밀번호와 입력한 비밀번호를 비교해서 둘다 참일경우
		// session에 정보를 올리고 만약 둘중 하나라도 아니라면 다시 로그인창으로.
		// 추후 ajax로 수정할 계획입.
		MemberVO member = loginService.loginSelectByOne(id);
		if(member != null && member.getPw().equals(pw)){
			HttpSession session = req.getSession();
			session.setAttribute("user", member);
			return "redirect:"+req.getContextPath()+"/index.jsp";
		}
		return "redirect:loginForm.do";
	}
	
	@RequestMapping("/login/mailCheck.do")
	public String mailCheck(MemberVO member) throws ServletException, IOException {
//		System.out.println("userId:"+member.getId());
		LoginDAO loginDAO = new LoginDAO();
		MemberVO mVO = loginService.loginSelectByOne(member.getId());
//		System.out.println("member.getId() : "+member.getId());
//		boolean flag = false;
		// 임시 아이디값을 준경우 비교하여 참을 만든다.
//		if(member != null){
//			if(member.getUserIdTemp().equals(userIdTemp)){
//				flag = true;
//			}
//		} 
		
		if(mVO != null && mVO.getFlag() == "N"){
			mVO.setId(member.getId());
			System.out.println("mVO.getId() : "+mVO.getId());
			mVO.setFlag("Y");
			System.out.println("mVO.getFlag : "+mVO.getFlag());
			loginService.loginUpdate(mVO);
			return "loginForm.do";
		}else if(mVO == null){
			return "/index.jsp";
		}else{
			return "/index.jsp";
		}
		
	}
}
