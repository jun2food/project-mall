package kr.co.mall.service.login;

import java.util.List;

import kr.co.mall.login.LoginDAO;
import kr.co.mall.vo.MemberVO;

public class LoginServiceImpl implements LoginService {
	private LoginDAO dao = new LoginDAO();
	@Override
	public void loginInsert(MemberVO member) {
		dao.insertLogin(member);
	}

	@Override
	public MemberVO loginSelectByOne(String id) {
		return dao.selectLoginByOne(id);
	}

	@Override
	public List<MemberVO> loginSelect() {
		return dao.selectLoginList();
	}

	@Override
	public void loginDelete(String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void loginUpdate(MemberVO member) {
		dao.updateLogin(member);
	}
	
}
