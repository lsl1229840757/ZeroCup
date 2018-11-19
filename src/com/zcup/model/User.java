package com.zcup.model;

import java.util.Set;

public class User {

	private String username;
	private String password;
	private String name;
	private Integer age;
	private Integer gender;
	private Set<Note> notes;

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}


	public Integer getGender() {
		return gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}

	public Set<Note> getNotes() {
		return notes;
	}

	public void setNotes(Set<Note> notes) {
		this.notes = notes;
	}

}
