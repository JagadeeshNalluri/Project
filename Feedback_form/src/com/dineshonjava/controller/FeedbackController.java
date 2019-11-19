package com.dineshonjava.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dineshonjava.bean.FeedbackBean;
import com.dineshonjava.model.Feedback;
import com.dineshonjava.service.FeedbackService;

 
@Controller
public class FeedbackController {
	
	@Autowired
	private FeedbackService feedbackService;
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView saveFeedback(@ModelAttribute("command") FeedbackBean feedbackBean, 
			BindingResult result) {
		Feedback feedback = prepareModel(feedbackBean);
		feedbackService.addFeedback(feedback);
		return new ModelAndView("redirect:/add.html");
	}

	@RequestMapping(value="/feedbacks", method = RequestMethod.GET)
	public ModelAndView listFeedbacks() {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("feedbacks",  prepareListofBean(feedbackService.listFeedbackss()));
		return new ModelAndView("feedbacksList", model);
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView addFeedback(@ModelAttribute("command") FeedbackBean feedbackBean,
			BindingResult result) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("feedbacks",  prepareListofBean(feedbackService.listFeedbackss()));
		return new ModelAndView("addFeedback", model);
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView welcome() {
		return new ModelAndView("index");
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public ModelAndView editFeedback(@ModelAttribute("command")  FeedbackBean feedbackBean,
			BindingResult result) {
		feedbackService.deleteFeedback(prepareModel(feedbackBean));
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("feedback", null);
		model.put("feedbacks",  prepareListofBean(feedbackService.listFeedbackss()));
		return new ModelAndView("addFeedback", model);
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView deleteFeedback(@ModelAttribute("command")  FeedbackBean feedbackBean,
			BindingResult result) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("feedback", prepareFeedbackBean(feedbackService.getFeedback(feedbackBean.getId())));
		model.put("feedbacks",  prepareListofBean(feedbackService.listFeedbackss()));
		return new ModelAndView("addFeedback", model);
	}
	
	private Feedback prepareModel(FeedbackBean feedbackBean){
		Feedback feedback = new Feedback();
		feedback.setName(feedbackBean.getName());
		feedback.setEmail(feedbackBean.getEmail());
		feedback.setComment(feedbackBean.getComment());
		feedback.setId(feedbackBean.getId());
		feedbackBean.setId(null);
		return feedback;
	}
	
	private List<FeedbackBean> prepareListofBean(List<Feedback> feedbacks){
		List<FeedbackBean> beans = null;
		if(feedbacks != null && !feedbacks.isEmpty()){
			beans = new ArrayList<FeedbackBean>();
			FeedbackBean bean = null;
			for(Feedback feedback : feedbacks){
				bean = new FeedbackBean();
				bean.setName(feedback.getName());
				bean.setId(feedback.getId());
				bean.setEmail(feedback.getEmail());
				bean.setComment(feedback.getComment());
				beans.add(bean);
			}
		}
		return beans;
	}
	
	private FeedbackBean prepareFeedbackBean(Feedback feedback){
		FeedbackBean bean = new FeedbackBean();
		bean.setEmail(feedback.getEmail());
		bean.setComment(feedback.getComment());
		bean.setName(feedback.getName());
		bean.setId(feedback.getId());
		return bean;
	}
}






