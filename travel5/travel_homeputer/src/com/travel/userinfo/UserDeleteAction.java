package com.travel.userinfo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travel.action.Action;
import com.travel.action.ActionForward;
import com.travel.user.dao.UserInfoDAO;

public class UserDeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserInfoDAO udao = new UserInfoDAO();
		int idx = Integer.parseInt(request.getParameter("idx"));
		
		if(udao.userDelete(idx)) {
			//로그인 성공
			forward.setPath(request.getContextPath() + "/userinfo/index.jsp");
			forward.setRedirect(false);
		}
		return forward;
	}

}
