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

import com.caveofprogramming.spring.web.models.Feedback;
import com.caveofprogramming.spring.web.models.Offer;



@Repository
@Transactional
@Component("feedbackDao")
public class FeedbackDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public Session session() {
		return sessionFactory.getCurrentSession();
	}
	
	@SuppressWarnings("unchecked")
	public List<Feedback> getFeedbacks() {
		return session().createQuery("from Feedback").list();
	}
	
	public void create(Feedback feedback) {
		session().save(feedback);
	}

}
