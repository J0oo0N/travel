package com.travel.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.travle.action.Action;
import com.travle.action.ActionForward;
import com.travel.app.user.dao.UserInfoDAO;

public class UserDeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserInfoDAO udao = new UserInfoDAO();
		HttpSession session = request.getSession();
		int user_index = (Integer)session.getAttribute("user_index");
		
		if(udao.userDelete(user_index)) {
			forward.setPath(request.getContextPath() + "/index.jsp");
			forward.setRedirect(true);
		}
		return forward;
	}

}
