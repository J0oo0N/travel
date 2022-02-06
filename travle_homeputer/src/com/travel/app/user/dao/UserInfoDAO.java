package com.travel.app.user.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.travle.mybatis.SqlMapConfig;
import com.travel.app.user.dao.UserInfoDTO;

public class UserInfoDAO {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public UserInfoDAO() {
		sqlsession = factory.openSession(true);
	}
	
	//회원가입
	public boolean signup(UserInfoDTO user) {
		boolean result = false;
		System.out.println(user.getUser_name());
		
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
	public boolean userDelete(int user_index) {
		boolean result = false;
		if(sqlsession.update("User.delete", user_index) == 1) {
			result = true;
		}
		return result;
	}
	//회원 조희
	public UserInfoDTO getByID(String id) {
		UserInfoDTO dto = null;
		dto = sqlsession.selectOne("User.select", id);
		return dto;
	}
	//회원 수정
	public boolean userUpdate(UserInfoDTO user) {
		boolean result = false;
		System.out.println(user.getUser_email());
		if(sqlsession.update("User.update", user) == 1) {
			result = true;
		}
		return result;
	}

}
