package com.bishwas.webapp.entity;

public class Notes {
	
	int id;
	String title, details;
	
	public Notes() {
		// TODO Auto-generated constructor stub
	}

	public Notes(int id, String title, String details) {
		
		this.id = id;
		this.title = title;
		this.details = details;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}
	
	
	
	

}
