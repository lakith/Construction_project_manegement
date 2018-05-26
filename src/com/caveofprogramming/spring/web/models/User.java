package com.caveofprogramming.spring.web.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

import com.caveofprogramming.spring.web.validation.ValidEmail;

@Entity
@Table(name="users")
public class User implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -5309825801310600238L;

	@NotBlank(groups={PersistenceValidationGroup.class, FormValidationGroup.class})
	@Id
	@Column(name="username")
	private String username;
	
	@NotBlank(groups={PersistenceValidationGroup.class, FormValidationGroup.class})
	private String password;
	
	@ValidEmail(groups={PersistenceValidationGroup.class, FormValidationGroup.class})
	private String email;
	
	@NotBlank(groups={PersistenceValidationGroup.class, FormValidationGroup.class})
	private String name;
	
	@Column
	private String tel_no;
	
	@Column
	private String address;
	
	@Column
	private String bio;
	
	@Column
	private String type;
	
	
	private boolean enabled = false;
	private String authority;
	
	public User() {

	}
	
	public User(String username, String password, String email, String name,
			String tel_no, String address, String bio, String type,
			boolean enabled, String authority) {
		this.username = username;
		this.password = password;
		this.email = email;
		this.name = name;
		this.tel_no = tel_no;
		this.address = address;
		this.bio = bio;
		this.type = type;
		this.enabled = enabled;
		this.authority = authority;
	}

	

	public String getBio() {
		return bio;
	}



	public void setBio(String bio) {
		this.bio = bio;
	}



	public String getType() {
		return type;
	}



	public void setType(String type) {
		this.type = type;
	}



	public User(String username, String name, String password, String email, boolean enabled,
			String authority) {
		this.username = username;
		this.name = name;
		this.password = password;
		this.email = email;
		this.enabled = enabled;
		this.authority = authority;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel_no() {
		return tel_no;
	}

	public void setTel_no(String tel_no) {
		this.tel_no = tel_no;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((authority == null) ? 0 : authority.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + (enabled ? 1231 : 1237);
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result
				+ ((username == null) ? 0 : username.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (authority == null) {
			if (other.authority != null)
				return false;
		} else if (!authority.equals(other.authority))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (enabled != other.enabled)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (username == null) {
			if (other.username != null)
				return false;
		} else if (!username.equals(other.username))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password
				+ ", email=" + email + ", name=" + name + ", tel_no=" + tel_no
				+ ", address=" + address + ", enabled=" + enabled
				+ ", authority=" + authority + "]";
	}

	
	
	

}
