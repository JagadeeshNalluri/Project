package com.dineshonjava.dao;

import java.util.List;

import com.dineshonjava.model.Feedback;

 
public interface FeedbackDao {
	
	public void addFeedback(Feedback feedback);

	public List<Feedback> listFeedbackss();
	
	public Feedback getFeedback(int id);
	
	public void deleteFeedback(Feedback feedback);
}
