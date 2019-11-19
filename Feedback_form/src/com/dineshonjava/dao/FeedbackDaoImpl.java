package com.dineshonjava.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dineshonjava.model.Feedback;

 
@Repository("feedbackDao")
public class FeedbackDaoImpl implements FeedbackDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addFeedback(Feedback feedback) {
		sessionFactory.getCurrentSession().saveOrUpdate(feedback);
	}

	@SuppressWarnings("unchecked")
	public List<Feedback> listFeedbackss() {
		return (List<Feedback>) sessionFactory.getCurrentSession().createCriteria(Feedback.class).list();
	}

	public Feedback getFeedback(int id) {
		return (Feedback) sessionFactory.getCurrentSession().get(Feedback.class, id);
	}

	public void deleteFeedback(Feedback feedback) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM Feedback WHERE id = "+feedback.getId()).executeUpdate();
	}

}
