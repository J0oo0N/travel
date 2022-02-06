package com.travel.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travle.action.Action;
import com.travle.action.ActionForward;
import com.travel.app.user.dao.UserInfoDAO;

public class UserLoginOKAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserInfoDAO udao = new UserInfoDAO();
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		if(udao.login(user_id, user_pw)) {
			//로그인 성공
			HttpSession session = request.getSession();
			session.setAttribute("id", user_id);
			forward.setRedirect(true);
			forward.setPath(request.getContextPath() + "/");
//			forward.setRedirect(false);
//			forward.setPath(request.getContextPath() + "/index.jsp");
		} else {
			//로그인 실패
			forward.setRedirect(true);
			forward.setPath(request.getContextPath() + "/app/userinfo/login.jsp?try=false");
		}
		
		return forward;
	}

}
