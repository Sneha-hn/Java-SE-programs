 package com.niit.jewellarycartbackend.domain;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class User {
	
	
	@Id
	private String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	private String name;

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	private String password;

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContact() {
		return contact;
	}

	private String contact;

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getRole() {
		return role;
	}

	private String role;

	public void setRole(String role) {
		this.role = role;
	}
	public String Email_id;

	public String getEmail_id() {
		return Email_id;
	}

	public void setEmail_id(String email_id) {
		Email_id = email_id;
	}
}

