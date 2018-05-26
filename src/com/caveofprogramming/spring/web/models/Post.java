package com.caveofprogramming.spring.web.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="post")
public class Post {
	
	@Id
	@GeneratedValue
	private int post_id;
	
	@Column
	private String architecture;
	
	@Column
	private String carpenter;
	
	@Column
	private String contractor;
	
	@Column

	private String discription;
	
	@Column
	private String engineer;
	
	@Column
	private String Interior_designer;
	
	@Column
	private String other;
	
	@Column
	private String post_name;
	
	@ManyToOne
	@JoinColumn(name="username")
	private User username;
	
	@Column
	private String quantity_surveyor;
	
	@Column
	private String recommendation;
	
	@Column
	private String short_discription;
	
	@Column
	private String image;
	
	public Post(){
		this.username = new User(); 
	}
	
	public Post(String architecture, String carpenter,
			String contractor, String discription, String engineer,
			String interior_designer, String other, String post_name,
			User post_user, String quantity_surveyor, String recommendation,
			String short_discription, String image) {
		
		this.architecture = architecture;
		this.carpenter = carpenter;
		this.contractor = contractor;
		this.discription = discription;
		this.engineer = engineer;
		Interior_designer = interior_designer;
		this.other = other;
		this.post_name = post_name;
		this.username = post_user;
		this.quantity_surveyor = quantity_surveyor;
		this.recommendation = recommendation;
		this.short_discription = short_discription;
		this.image = image;
	}
	
	

	public Post(int post_id, String architecture, String carpenter,
			String contractor, String discription, String engineer,
			String interior_designer, String other, String post_name,
			User post_user, String quantity_surveyor, String recommendation,
			String short_discription, String image) {
		super();
		this.post_id = post_id;
		this.architecture = architecture;
		this.carpenter = carpenter;
		this.contractor = contractor;
		this.discription = discription;
		this.engineer = engineer;
		Interior_designer = interior_designer;
		this.other = other;
		this.post_name = post_name;
		this.username = post_user;
		this.quantity_surveyor = quantity_surveyor;
		this.recommendation = recommendation;
		this.short_discription = short_discription;
		this.image = image;
	}

	public int getPost_id() {
		return post_id;
	}

	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}

	public String getArchitecture() {
		return architecture;
	}

	public void setArchitecture(String architecture) {
		this.architecture = architecture;
	}

	public String getCarpenter() {
		return carpenter;
	}

	public void setCarpenter(String carpenter) {
		this.carpenter = carpenter;
	}

	public String getContractor() {
		return contractor;
	}

	public void setContractor(String contractor) {
		this.contractor = contractor;
	}

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}

	public String getEngineer() {
		return engineer;
	}

	public void setEngineer(String engineer) {
		this.engineer = engineer;
	}

	public String getInterior_designer() {
		return Interior_designer;
	}

	public void setInterior_designer(String interior_designer) {
		Interior_designer = interior_designer;
	}

	public String getOther() {
		return other;
	}

	public void setOther(String other) {
		this.other = other;
	}

	public String getPost_name() {
		return post_name;
	}

	public void setPost_name(String post_name) {
		this.post_name = post_name;
	}

	public User getPost_user() {
		return username;
	}

	public void setPost_user(User post_user) {
		this.username = post_user;
	}

	public String getQuantity_surveyor() {
		return quantity_surveyor;
	}

	public void setQuantity_surveyor(String quantity_surveyor) {
		this.quantity_surveyor = quantity_surveyor;
	}

	public String getRecommendation() {
		return recommendation;
	}

	public void setRecommendation(String recommendation) {
		this.recommendation = recommendation;
	}

	public String getShort_discription() {
		return short_discription;
	}

	public void setShort_discription(String short_discription) {
		this.short_discription = short_discription;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
}
