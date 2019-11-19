package com.dineshonjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.dineshonjava.dao.FeedbackDao;
import com.dineshonjava.model.Feedback;

 
@Service("feedbackService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class FeedbackServiceImpl implements FeedbackService {

	@Autowired
	private FeedbackDao feedbackDao;
	
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void addFeedback(Feedback feedback) {
		feedbackDao.addFeedback(feedback);
	}
	
	public List<Feedback> listFeedbackss() {
		return feedbackDao.listFeedbackss();
	}

	public Feedback getFeedback(int id) {
		return feedbackDao.getFeedback(id);
	}
	
	public void deleteFeedback(Feedback feedback) {
		feedbackDao.deleteFeedback(feedback);
	}

}
