package com.caveofprogramming.spring.web.controllers;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.junit.experimental.theories.PotentialAssignment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.caveofprogramming.spring.web.models.Feedback;
import com.caveofprogramming.spring.web.models.FormValidationGroup;
import com.caveofprogramming.spring.web.models.Offer;
import com.caveofprogramming.spring.web.models.Post;
import com.caveofprogramming.spring.web.models.Post_comment;
import com.caveofprogramming.spring.web.models.User;
import com.caveofprogramming.spring.web.service.PostService;
import com.caveofprogramming.spring.web.service.Post_commentService;
import com.caveofprogramming.spring.web.service.UsersService;

@Controller
public class PostController {

	
	UsersService userService;
	PostService postService;
	Post_commentService post_commentservice;
	
	private static int post_id2;
	
	@Autowired
	public void setPost_commentservice(Post_commentService post_commentservice) {
		this.post_commentservice = post_commentservice;
	}
	
	@Autowired
	public void setUserService(UsersService userService) {
		this.userService = userService;
	}

	@Autowired
	public void setPostService(PostService postService) {
		this.postService = postService;
	}


	@RequestMapping("/postadd")
	public String showNewAccount(Model model,Principal principal) {
		
	List<User> user =userService.getAllUsers();
	model.addAttribute("users",user);
	model.addAttribute("posts",new Post());
		
		return "postadd";
	}
	
	
	@RequestMapping("/test2")
	public String showTest(Model model) {
		model.addAttribute("post_comments", new Post_comment());
		return "test2";
	}
	
	@RequestMapping("/projects")
	public String showProjects(Model model) {
		List<Post> posts = postService.getAllPosts();
		model.addAttribute("posts", posts);
		return "projects";
	}
	
	@RequestMapping(value = "/viewpost", method = RequestMethod.GET)
	public String showMypost(Model model,Principal principal,HttpServletRequest request) {
		
		int post_id = Integer.parseInt(request.getParameter("post_id"));
		Post post = postService.getOnePost(post_id);
		model.addAttribute("posts", post);
		post_id2 = post.getPost_id();
		model.addAttribute("post_comments",new Post_comment());
		
		List<Post_comment> post_comments = post_commentservice.getComments(post_id) ;
		if(post_comments != null){
		model.addAttribute("comment", true);
		model.addAttribute("post_comments2",post_comments);
		System.out.println(post_comments);
		}
		else
		{
			model.addAttribute("comment", false);
		}
		return "viewpost";
	}
	
	
	@RequestMapping(value = "/savecomment", method = RequestMethod.POST)
	public ModelAndView doCreate(Model model,
			@Validated(value = FormValidationGroup.class) Post_comment post_comment,
			BindingResult result, Principal principal
			/*@RequestParam(value = "delete", required = false) String delete*/) {

		if (result.hasErrors()) {
			return new ModelAndView("redirect:/test2");
		}

		//if (delete == null) {
			post_comment.setPost_id(post_id2);
			post_commentservice.saveComment(post_comment);
			return new ModelAndView("redirect:/myposts");
		//} else {
			//offersService.delete(offer.getId());
			//return "/";
	//	}

	} 
	
	@RequestMapping("/myposts")
	public String showMyposts(Model model,Principal principal) {
		
		System.out.println(principal.getName());
		
		List<Post> posts = postService.getPosts(principal.getName());

		model.addAttribute("posts", posts);

		return "myposts";
	}

	
	
	@RequestMapping(value = "/savepost", method = RequestMethod.POST)
	public String doCreate(Model model,
			@Validated(value = FormValidationGroup.class) Post post,
			BindingResult result, Principal principal
			/*@RequestParam(value = "delete", required = false) String delete*/) {

		if (result.hasErrors()) {
			return "postadd";
		}

		//if (delete == null) {
			String username = principal.getName();
			post.getPost_user().setUsername(username);
			postService.saveOrUpdate(post);
			return "myposts";
		//} else {
			//offersService.delete(offer.getId());
			//return "/";
	//	}

	} 
	
	
}
