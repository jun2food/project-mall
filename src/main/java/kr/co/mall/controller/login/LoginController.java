package kr.co.mall.controller.login;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.mall.repository.vo.MemberVO;
import kr.co.mall.service.login.LoginService;
import kr.co.mall.util.MailSend;

@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired
	private LoginService loginService;

	// 페이스북
	@RequestMapping("/fbCheck.do")
	@ResponseBody
	public void fbCheck(MemberVO member, HttpServletRequest req) throws ServletException, IOException {
		System.out.println(member.getId());
		MemberVO memberLogin = idCheck(member.getId());
		// 페이스북은 가입. 우리사이트는 가입XXXX
		if (memberLogin == null) {
			loginService.loginInsert(member);
			memberLogin = idCheck(member.getId());
		}
		HttpSession session = req.getSession();
		session.setAttribute("user", member);
		System.out.println("로그인 ::" + member.getId() + "님 환영합니다!!!!");
	}

	// 회원가입 아이디 체크
	@RequestMapping("/idCheck.do")
	@ResponseBody
	public MemberVO idCheck(String id) {
		MemberVO member = loginService.loginSelectByOne(id);
		return member;
	}

	// 회원가입 저장폼
	@RequestMapping("/signUp.do")
	public ModelAndView signUp(MemberVO member, HttpServletRequest req) throws ServletException, IOException {
		loginService.loginInsert(member);
		MailSend send = new MailSend();
		ModelAndView mav = send.mailSend(member, req);
		return mav;
	}

	// 로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest req) throws ServletException, IOException {
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("user");
		System.out.println("로그아웃 :::" + memberVO.getId() + "님 안녕히 가세요.");
		session.invalidate();
		return "redirect:/main.do";
	}

	// 로그인 확인
	@RequestMapping("/login.do")
	public String login(HttpServletRequest req) throws ServletException, IOException {

		// 로그인 처리
		// 사용자 입력 파라미터 얻기
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		/*
		 * 간편로그인 아이디:a 비밀번호:1 // id = a, pass = 1 이 경우 로그인 성공 // 메인페이지로 이동 //
		 * 세션에 정보를 설정한다. if ("a".equals(id) && "1".equals(pw)) { MemberVO m =
		 * new MemberVO(); m.setId(id); m.setPw(pw);
		 * 
		 * HttpSession session = req.getSession(); session.setAttribute("user",
		 * m); return "redirect:" + req.getContextPath() + "/index.jsp"; } //
		 * 로그인 실패 // 로그인 폼 페이지로 이동 else { return "redirect:loginForm.do"; }
		 */
		// SQL의 ID값이 있으며, 그것으로 불러온 비밀번호와 입력한 비밀번호를 비교해서 둘다 참일경우
		// session에 정보를 올리고 만약 둘중 하나라도 아니라면 다시 로그인창으로.
		// 추후 ajax로 수정할 계획입.
		MemberVO member = loginService.loginSelectByOne(id);
		if (member != null && member.getPw().equals(pw)) {
			HttpSession session = req.getSession();
			session.setAttribute("user", member);
			System.out.println("로그인 ::" + member.getId() + "님 환영합니다!!!!");
			return "redirect:/main.do";
		}
		return "redirect:loginForm.do";
	}

	@RequestMapping("/mailCheck.do")
	public String mailCheck(MemberVO member) throws ServletException, IOException {
		MemberVO mVO = loginService.loginSelectByOne(member.getId());
		System.out.println(member.getId());
		if (mVO != null && mVO.getFlag() == null) {
			mVO.setId(member.getId());
			System.out.println("mVO.getId() : " + mVO.getId());
			mVO.setFlag("Y");
			System.out.println("mVO.getFlag : " + mVO.getFlag());
			loginService.loginUpdate(mVO);
			return "redirect:/main.do";
		} else if (mVO == null) {
			return "redirect:/main.do";
		} else {
			return "redirect:/main.do";
		}

	}

	@RequestMapping("/loginList.do")
	public void memberList(Model model) {
		List<MemberVO> list = loginService.loginSelect();
		model.addAttribute("list", list);
	}
}
