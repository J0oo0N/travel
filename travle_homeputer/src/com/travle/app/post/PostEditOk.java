package com.travle.app.post;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travle.action.Action;
import com.travle.action.ActionForward;
import com.travle.app.post.dao.PostDAO;
import com.travle.app.post.dao.PostDTO;

public class PostEditOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		PostDAO pdao = new PostDAO();
		PostDTO pdto = new PostDTO();
		
		String postTitle = request.getParameter("postTitle");
		String postContent = request.getParameter("postContent");
		
		pdto.setPostTitle(postTitle);
		pdto.setPostContent(postContent);
		
		forward.setRedirect(true);
		
		if(pdao.insertPost(pdto)) {
			forward.setPath(request.getContextPath() + "/post/post.do?page=1");
		} else {
			forward.setPath(request.getContextPath() + "/post/postEdit.do");
		}
		
		return forward;
	}
}
