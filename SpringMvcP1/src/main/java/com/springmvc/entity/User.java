package com.springmvc.entity;
public class User {
private String email;
private String name;
private int contact;
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
public int getContact() {
	return contact;
}
public void setContact(int contact) {
	this.contact = contact;
}
public User(String email, String name, int contact) {
	super();
	this.email = email;
	this.name = name;
	this.contact = contact;
}
public User() {
	super();
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "User [email=" + email + ", name=" + name + ", contact=" + contact + "]";
}

}
