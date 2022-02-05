package com.travel.userinfo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.user.dao.UserInfoDAO;

public class UserLoginOKAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserInfoDAO udao = new UserInfoDAO();
		
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		if(udao.login(user_id, user_pw)) {
			//로그인 성공
			forward.setPath(request.getContextPath() + "/userinfo/index.jsp");
			forward.setRedirect(false);
		} else {
			//로그인 실패
			forward.setPath(request.getContextPath() + "/userinfo/login.jsp");
			forward.setRedirect(true);
		}
		
		return forward;
	}

}
