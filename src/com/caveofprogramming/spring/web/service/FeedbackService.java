package com.caveofprogramming.spring.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.caveofprogramming.spring.web.dao.FeedbackDao;
import com.caveofprogramming.spring.web.models.Feedback;




@Service("feedbackService")
public class FeedbackService {
	
	private FeedbackDao feedbackDao;

	@Autowired
	public void setFeedbackDao(FeedbackDao feedbackDao) {
		this.feedbackDao = feedbackDao;
	}
	
	public void create(Feedback feedback) {
		feedbackDao.create(feedback);
	}
	
	public List<Feedback> getCurrent() {
		return feedbackDao.getFeedbacks();
	}

}
