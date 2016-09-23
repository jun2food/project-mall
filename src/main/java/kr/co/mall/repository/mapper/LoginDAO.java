package kr.co.mall.repository.mapper;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.mall.repository.vo.MemberVO;
import kr.co.mall.util.MyAppSqlConfig;

@Repository
public class LoginDAO {
	private static SqlSession session = null;
	public LoginDAO(){
		session = MyAppSqlConfig.getSqlSessionInstance();
	}
	public void insertLogin(MemberVO member){
		session.insert("kr.co.mall.login.LoginDAO.insertLogin",member);
		session.commit();
	}
	public List<MemberVO> selectLoginList(){
		return session.selectList("kr.co.mall.login.LoginDAO.selectLoginList");
	}
	public MemberVO selectLoginByOne(String id){
		return session.selectOne("kr.co.mall.login.LoginDAO.selectLoginByOne",id);
	}
	public void updateLogin(MemberVO member) {
		session.update("kr.co.mall.login.LoginDAO.updateLogin", member);
		session.commit();
	}
}
