package com.caveofprogramming.spring.web.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.caveofprogramming.spring.web.models.Post;
import com.caveofprogramming.spring.web.models.Post_comment;

@Repository
@Transactional
@Component("post_commentDao")
public class Post_commentDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public Session session() {
		return sessionFactory.getCurrentSession();
	}
	
	public void saveComment(Post_comment post_comment) {
		session().save(post_comment);
	}
	
	@SuppressWarnings("unchecked")
	public List<Post_comment> getComments(int post_id) {
			
		System.out.println(post_id);
		Criteria crit = session().createCriteria(Post_comment.class);
		crit.add(Restrictions.eq("post_id", post_id));
		return crit.list();
		
	}

}
