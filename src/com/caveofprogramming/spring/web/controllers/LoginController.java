package com.caveofprogramming.spring.web.controllers;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;





import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestBody;

import com.caveofprogramming.spring.web.models.FormValidationGroup;
import com.caveofprogramming.spring.web.models.Message;
import com.caveofprogramming.spring.web.models.User;
import com.caveofprogramming.spring.web.service.UsersService;

@Controller
public class LoginController {
	
	private UsersService usersService;
	
	@Autowired
	private MailSender mailSender;
	
	
	@Autowired
	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}

	@RequestMapping("/login")
	public String showLogin() {
		return "login";
	}
	
	@RequestMapping("/denied")
	public String showDenied() {
		return "denied";
	}
	
	@RequestMapping("/messages")
	public String showMessages() {
		return "messages";
	}
	
	@RequestMapping("/admin")
	public String showAdmin(Model model) {
		
		List<User> users = usersService.getAllUsers();
		
		model.addAttribute("users", users);
		
		return "admin";
	}
	
	@RequestMapping("/loggedout")
	public String showLoggedOut() {
		return "loggedout";
	}
	
	@RequestMapping("/viewusers")
	public String showUsers(Model model) {
		
		List<User> users = usersService.getAllUsers();
		
		model.addAttribute("users", users);
		
		return "viewusers";
	}
	
	
	@RequestMapping("/newaccount")
	public String showNewAccount(Model model) {
		
		model.addAttribute("user", new User());
		return "newaccount";
	}
	
	
	@RequestMapping(value="/viewprofile", method = RequestMethod.GET)
	public String showViewprofile(Model model,HttpServletRequest request) {
		String username = request.getParameter("user");
		User user = usersService.getUser(username);
		model.addAttribute("user", user);
		System.out.println(user);
		return "viewprofile";
	}
	

	@RequestMapping(value="/createaccount", method=RequestMethod.POST)
	public String createAccount(@Validated(FormValidationGroup.class) User user, BindingResult result) {
		
		if(result.hasErrors()) {
			return "newaccount";
		}
		
		user.setAuthority("ROLE_USER");
		user.setEnabled(true);
		
		if(usersService.exists(user.getUsername())) {
			result.rejectValue("username", "DuplicateKey.user.username");
			return "newaccount";
		}
		
		try {
			usersService.create(user);
		} catch (DuplicateKeyException e) {
			result.rejectValue("username", "DuplicateKey.user.username");
			return "newaccount";
		}
		
		
		return "accountcreated";
	}
	
	@RequestMapping(value="/getmessages", method=RequestMethod.GET, produces="application/json")
	@ResponseBody
	public Map<String, Object> getMessages(Principal principal) {
		
		List<Message> messages = null;
		
		if(principal == null) {
			messages = new ArrayList<Message>();
		}
		else {
			String username = principal.getName();
			messages = usersService.getMessages(username);
		}
		
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("messages", messages);
		data.put("number", messages.size());
		
		return data;
	}
	
	@RequestMapping(value="/sendmessage", method=RequestMethod.POST, produces="application/json")
	@ResponseBody
	public Map<String, Object> sendMessage(Principal principal, @RequestBody Map<String, Object> data) {
		
		
		String text = (String)data.get("text");
		String name = (String)data.get("name");
		String email = (String)data.get("email");
		Integer target = (Integer)data.get("target");
		

		SimpleMailMessage mail = new SimpleMailMessage();
		mail.setFrom("learnhungarianfast@gmail.com");
		mail.setTo(email);
		mail.setSubject("Re: " + name + ", your message");
		mail.setText(text);
		
		try {
			mailSender.send(mail);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Can't send message");
		}

		Map<String, Object> rval = new HashMap<String, Object>();
		rval.put("success", true);
		rval.put("target", target);
		
		return rval;
	}
}
