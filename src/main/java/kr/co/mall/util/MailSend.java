package kr.co.mall.util;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.web.servlet.ModelAndView;

import kr.co.mall.repository.vo.MemberVO;

public class MailSend {
	public ModelAndView mailSend(MemberVO member) {
		System.out.println("mailSend 메서드 호출 성공");
		// String from = request.getParameter("from");
		String from = "lololoy@naver.com";
		String to = member.getId();
		String subject = "Mall - 이메일 인증";
//		String userIdTemp = member.getUserIdTemp();
		String content = "<h1><a href='http://localhost:11002/shoppignMall/login/mailCheck.do?id="+member.getId()+"'>인증하긔~</a></h1>";
		//입력값 받음
		Properties p = new Properties(); // 정보를 담을 객체

		p.put("mail.smtp.host","smtp.naver.com"); // 네이버 SMTP
		p.put("mail.smtp.port", "465");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.socketFactory.prot", "465");
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.socketFactory.fallback", "false");
		// SMTP 서버에 접속하기 위한 정보들

		try{
			Authenticator auth = new SMTPAuthenticatior();
			Session ses = Session.getInstance(p, auth);
			
			ses.setDebug(true);
			
			MimeMessage msg = new MimeMessage(ses); // 메일의 내용을 담을 객체
			msg.setSubject(subject); // 제목
			
			Address fromAddr = new InternetAddress(from);
			msg.setFrom(fromAddr); // 보내는 사람
			
			Address toAddr = new InternetAddress(to);
			msg.setRecipient(Message.RecipientType.TO, toAddr); // 받을사람
			
			msg.setContent(content, "text/html;charset=UTF-8"); // 내용과 인코딩
			
			Transport.send(msg); // 전송
			System.out.println(member.getId());
		}catch(Exception e){
			e.printStackTrace();
			ModelAndView mav = new ModelAndView("joinEmailSend.jsp");
			mav.addObject("mailFlag", 0);
//			out.println("<script>alert('Send Mail Failed..');history.back();</script>");
			return mav;
		}
		//성공시
		ModelAndView mav = new ModelAndView("joinEmailSend.jsp");
		mav.addObject("mailFlag", 1);
		return mav;
//		out.println("<script>alert('Send Mail Success!!');location.href='/MyBoard/servlet/join/joinListServlet.jsp';</script>");
	}
}
