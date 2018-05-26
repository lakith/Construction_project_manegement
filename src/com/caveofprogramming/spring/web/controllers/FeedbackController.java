package com.caveofprogramming.spring.web.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.caveofprogramming.spring.web.models.Feedback;
import com.caveofprogramming.spring.web.models.FormValidationGroup;
import com.caveofprogramming.spring.web.models.User;
import com.caveofprogramming.spring.web.service.FeedbackService;

@Controller
public class FeedbackController {
	
	private FeedbackService feedbackService;
	
	@Autowired
	public void setFeedbackService(FeedbackService feedbackService) {
		this.feedbackService = feedbackService;
	}


	@RequestMapping("/feedback")
	public String showNewAccount(Model model) {
		model.addAttribute("feedback", new Feedback());
		return "feedback";
	}
	


	@RequestMapping(value="/savefeedback", method=RequestMethod.POST)
	public ModelAndView createAccount(@Validated(FormValidationGroup.class) Feedback feedback, BindingResult result) {
		
		if(result.hasErrors()) {
			return new ModelAndView("redirect:/feedback");
		}
		feedbackService.create(feedback);
		return new ModelAndView("redirect:/");
		
	}


}
