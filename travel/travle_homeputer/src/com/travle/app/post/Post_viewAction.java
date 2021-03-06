package com.travle.app.post;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travle.action.Action;
import com.travle.action.ActionForward;
import com.travle.app.post.dao.PostDAO;

public class Post_viewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		PostDAO pdao = new PostDAO();
		
		int postId = Integer.parseInt(request.getParameter("postId"));
		
		request.setAttribute("post", pdao.getDetail(postId));
		forward.setRedirect(false);
		forward.setPath(request.getContextPath() + "/app/post/post_view.jsp");
		return forward;
	}
}
