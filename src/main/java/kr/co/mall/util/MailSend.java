package kr.co.mall.util;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import kr.co.mall.repository.vo.MemberVO;

public class MailSend {
	public ModelAndView mailSend(MemberVO member, HttpServletRequest req) throws ServletException, IOException {
		System.out.println("mailSend 메서드 호출 성공");
		// String from = request.getParameter("from");
		String contextPath = req.getContextPath();
		System.out.println("contextpath:::::::::"+contextPath);
		String from = "lololoy@naver.com";
		String to = member.getId();
		String subject = "Mall - 이메일 인증";
//		String userIdTemp = member.getUserIdTemp();
		String content = "";
		content+="<body>";
		content+="<form action='http://localhost:11002/"+contextPath+"/login/mailCheck.do' method='post'>";
		content+="<div>";
		content+="<div style='";
		content+="	margin: auto;";
		content+="	border: 3px dashed #959595;";
		content+="	padding: 50px 50px 50px 30px;";
		content+="	font-size: 30px;";
		content+="	text-align: center;";
		content+="	width: 600px;";
		content+="	line-height: 60px;'";
		content+=">";
		content+="<input type='hidden' name='id' value='"+member.getId()+"'/>";
		content+="Mr.BARK에 가입하신 것을 환영합니다.<br>";
		content+="홈페이지에 가입하시고 싶으신분은<br>";
		content+="아래 버튼을 클릭해 주세요.<br>";
		content+="<button ";
		content+="style='";
	    content+="background-color: #4CAF50;";
	    content+="border: none;";
	    content+="color: white;";
	    content+="padding: 8px 16px;";
	    content+="text-align: center;";
	    content+="text-decoration: none;";
	    content+="display: inline-block;";
	    content+="font-size: 16px;";
	    content+="margin: 4px 2px;";
	    content+="-webkit-transition-duration: 0.4s;"; 
	    content+="transition-duration: 0.4s;";
	    content+="cursor: pointer;";
	    content+="background-color: white;";
	    content+="color: black;";
	    content+="border: 2px solid #555555;";
	    content+="'";
	  	content+="onmouseover=\"this.style.color='white';this.style.background='black'\""; 
	  	content+="onmouseout=\"this.style.color='black';this.style.background='white'\" ";
		content+="'>Email Confirm</button>";
		content+="</div>";
		content+="</div>";
		content+="</form>";
		content+="</body>";
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
			ModelAndView mav = new ModelAndView("/login/joinEmailSend");
			mav.addObject("mailFlag", 0);
//			out.println("<script>alert('Send Mail Failed..');history.back();</script>");
			return mav;
		}
		//성공시
		ModelAndView mav = new ModelAndView("/login/joinEmailSend");
		mav.addObject("mailFlag", 1);
		return mav;
//		out.println("<script>alert('Send Mail Success!!');location.href='/MyBoard/servlet/join/joinListServlet.jsp';</script>");
	}
}
