package com.ncu.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.ncu.validations.pwdmatcher;

public class UserModel {

	@Size(min=1,message="cannot be empty")
	private String fname;
	@Size(min=1,message="cannot be empty")
	private String lname;
	@Size(min=1,message="cannot be empty")
	private String age;
	@Pattern(regexp="[0-9a-zA-Z][a-zA-Z]+@[a-zA-Z]+([.][a-z]+)+",message="invalid email id : write in this form , eg : text@yahoo.org.co.in")
	@Size(min=1,message="cannot be empty")
	private String email;
	@Size(min=3,message="min 3 ch should be there")
	//@Size(min=1,message="cannot be empty")
	@pwdmatcher(value="password")
	@Pattern(regexp="[A-Z]([a-zA-Z0-9_@.,]+)+",message="First letter must be in caps..and password can have an '@' , '_' , ' . ' ")
	@Size(min=1,message="Cannot be empty")
	private String password;
	@Size(min=1,message="cannot be empty")
	private String user_position;
	@pwdmatcher(value="password" ,message="enter the same password as above")
	private String confirmpassword;
	
	public String getConfirmpassword() {
		return confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
	public String getUser_position() {
		return user_position;
	}
	public void setUser_position(String user_position) {
		this.user_position = user_position;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
