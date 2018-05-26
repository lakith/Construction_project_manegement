package com.caveofprogramming.spring.web.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="post_comment")
public class Post_comment {
	
	@Id
	@GeneratedValue
	private int comment_id;
	
	@Column
	private String comment;
	
	@Column
	private String commeent_name;
	
	@Column
	private int post_id;
	
	
	public Post_comment() {

	}
	
	public Post_comment(String comment, String commeent_name,
			int post_id) {
		
		
		this.comment = comment;
		this.commeent_name = commeent_name;
		this.post_id = post_id;
	}

	
	
	public Post_comment(int comment_id, String comment, String commeent_name,
			int post_id) {
		super();
		this.comment_id = comment_id;
		this.comment = comment;
		this.commeent_name = commeent_name;
		this.post_id = post_id;
	}

	public int getComment_id() {
		return comment_id;
	}

	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getCommeent_name() {
		return commeent_name;
	}

	public void setCommeent_name(String commeent_name) {
		this.commeent_name = commeent_name;
	}

	public int getPost_id() {
		return post_id;
	}

	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}
	
	
	

}
