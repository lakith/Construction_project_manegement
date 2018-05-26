package com.caveofprogramming.spring.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.caveofprogramming.spring.web.dao.Post_commentDao;
import com.caveofprogramming.spring.web.models.Post;
import com.caveofprogramming.spring.web.models.Post_comment;

@Service("post_commentService")
public class Post_commentService {
	
	private Post_commentDao post_commentDao;

	
	@Autowired
	public void setPost_commentDao(Post_commentDao post_commentDao) {
		this.post_commentDao = post_commentDao;
	}

	public void saveComment(Post_comment post_comment) {
		post_commentDao.saveComment(post_comment);
	}
	
	public List<Post_comment> getComments(int post_id) {
		return post_commentDao.getComments(post_id);
	}
	
	

}
