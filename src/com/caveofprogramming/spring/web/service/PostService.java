package com.caveofprogramming.spring.web.service;

import java.util.List;

import javax.crypto.spec.PSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;





import com.caveofprogramming.spring.web.dao.PostDao;
import com.caveofprogramming.spring.web.models.Message;
import com.caveofprogramming.spring.web.models.Offer;
import com.caveofprogramming.spring.web.models.Post;

@Service("postService")
public class PostService {
	
	
	private PostDao postDao;
	
	@Autowired
	public void setPostDao(PostDao postDao) {
		this.postDao = postDao;
	}


	public void saveOrUpdate(Post post) {
		postDao.saveOrUpdate(post);
	}
	
	
	public List<Post> getPosts(String username) {
		System.out.println(username);
		return postDao.getPosts(username);
	}
	
	public List<Post> getAllPosts() {
		return postDao.getAllPosts();
	}
	
	public Post getOnePost(int post_id)
	{
		return postDao.getOnePost(post_id);
	}

}
