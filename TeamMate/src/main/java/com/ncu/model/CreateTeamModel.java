package com.ncu.model;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class CreateTeamModel {

	
	private String project_manager_fname;
	private String project_manager_lname;
	private String project_team_name;
	private String required_position;
	private String required_position2;
	private String required_position3;
	private String required_position4;
	 
	private int number;
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getNumber2() {
		return number2;
	}
	public void setNumber2(int number2) {
		this.number2 = number2;
	}
	public int getNumber3() {
		return number3;
	}
	public void setNumber3(int number3) {
		this.number3 = number3;
	}
	public int getNumber4() {
		return number4;
	}
	public void setNumber4(int number4) {
		this.number4 = number4;
	}
	public int getNumber5() {
		return number5;
	}
	public void setNumber5(int number5) {
		this.number5 = number5;
	}
	
	private int number2;
	
	private int number3;
	
	private int number4;

	private int number5;
	

	
	public String getRequired_position2() {
		return required_position2;
	}
	public void setRequired_position2(String required_position2) {
		this.required_position2 = required_position2;
	}
	public String getRequired_position3() {
		return required_position3;
	}
	public void setRequired_position3(String required_position3) {
		this.required_position3 = required_position3;
	}
	public String getRequired_position4() {
		return required_position4;
	}
	public void setRequired_position4(String required_position4) {
		this.required_position4 = required_position4;
	}
	public String getRequired_position5() {
		return required_position5;
	}
	public void setRequired_position5(String required_position5) {
		this.required_position5 = required_position5;
	}
	private String required_position5;
	private String email;
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProject_manager_fname() {
		return project_manager_fname;
	}
	public void setProject_manager_fname(String project_manager_fname) {
		this.project_manager_fname = project_manager_fname;
	}
	public String getProject_manager_lname() {
		return project_manager_lname;
	}
	public void setProject_manager_lname(String project_manager_lname) {
		this.project_manager_lname = project_manager_lname;
	}
	public String getProject_team_name() {
		return project_team_name;
	}
	public void setProject_team_name(String project_team_name) {
		this.project_team_name = project_team_name;
	}
	public String getRequired_position() {
		return required_position;
	}
	public void setRequired_position(String required_position) {
		this.required_position = required_position;
	}
}
