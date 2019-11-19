package com.dineshonjava.bean;

 //create table feedback(feedid number,feedname varchar2(30),feedemail varchar2(30),
//comment varchar2(30));

public class FeedbackBean {
	private Integer id;
	private String name;
	private String email;
	private String comment;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
}
