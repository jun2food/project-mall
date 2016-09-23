package kr.co.mall.service.login;

import java.util.List;

import kr.co.mall.repository.vo.MemberVO;


public interface LoginService {
	// 회원가입
	public void loginInsert(MemberVO member);
	// 회원 정보
	public MemberVO loginSelectByOne(String id);
	// 회원 리스트
	public List<MemberVO> loginSelect();
	// 탈퇴
	public void loginDelete(String id);
	// 회원정보 수정
	public void loginUpdate(MemberVO member);
}
