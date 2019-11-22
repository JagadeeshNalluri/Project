package com.dineshonjava.def;
//create table users(id number primary key,name varchar2(30),password varchar2(30),
//email varchar2(30),country varchar2(30))
public class User {
private String name,phone,password,email,dob;

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getDob() {
	return dob;
}

public void setDob(String dob) {
	this.dob = dob;
}


}
