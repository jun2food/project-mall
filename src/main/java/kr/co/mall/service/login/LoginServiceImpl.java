package kr.co.mall.service.login;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mall.repository.mapper.LoginDAO;
import kr.co.mall.repository.vo.MemberVO;


@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private LoginDAO dao;
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
