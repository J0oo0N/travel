package com.travel.user.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.travel.mybatis.SqlMapConfig;
import com.travel.user.dto.UserInfoDTO;

public class UserInfoDAO {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public UserInfoDAO() {
		sqlsession = factory.openSession(true);
	}
	
	//회원가입
	public boolean signup(UserInfoDTO user) {
		boolean result = false;
		System.out.println(user);
		
		if(sqlsession.insert("User.signup", user) == 1) {
			result = true;
		}
		
		return result;
	}
	
	//로그인
	public boolean login(String user_id, String user_pw) {
		boolean result = false;
		HashMap<String, String> datas = new HashMap<>();
		datas.put("user_id", user_id);
		datas.put("user_pw", user_pw);
		
		if((Integer)sqlsession.selectOne("User.login", datas) == 1) {
			result = true;
		}
		
		return result;
	}
	
	//회원 삭제

}
