package kr.co.mall.repository.mapper;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mall.repository.vo.MemberVO;

@Repository
public class LoginDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	public void insertLogin(MemberVO member){
		sqlSessionTemplate.insert("kr.co.mall.login.LoginDAO.insertLogin",member);
	}
	public List<MemberVO> selectLoginList(){
		return sqlSessionTemplate.selectList("kr.co.mall.login.LoginDAO.selectLoginList");
	}
	public MemberVO selectLoginByOne(String id){
		return sqlSessionTemplate.selectOne("kr.co.mall.login.LoginDAO.selectLoginByOne",id);
	}
	public void updateLogin(MemberVO member) {
		sqlSessionTemplate.update("kr.co.mall.login.LoginDAO.updateLogin", member);
	}
}
