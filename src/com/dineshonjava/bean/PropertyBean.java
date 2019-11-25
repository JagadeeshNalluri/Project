package com.dineshonjava.bean;
import java.util.List;
//create table employee(empid number,empname varchar2(30),empage number,salary number,
//empaddress varchar2(30));
public class PropertyBean {
	private Integer id;
	private String type;
	private String bhk;
	private String city;
	private String state;
	private String price;
	private String status;
	private String carparking;
	private String swimmingpool;
	private String fitnesscenter;
	private String water;
	private String elevator;
	
	 
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getBhk() {
		return bhk;
	}
	public void setBhk(String bhk) {
		this.bhk = bhk;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCarparking() {
		return carparking;
	}
	public void setCarparking(String carparking) {
		this.carparking = carparking;
	}
	public String getSwimmingpool() {
		return swimmingpool;
	}
	public void setSwimmingpool(String swimmingpool) {
		this.swimmingpool = swimmingpool;
	}
	public String getFitnesscenter() {
		return fitnesscenter;
	}
	public void setFitnesscenter(String fitnesscenter) {
		this.fitnesscenter = fitnesscenter;
	}
	public String getWater() {
		return water;
	}
	public void setWater(String water) {
		this.water = water;
	}
	public String getElevator() {
		return elevator;
	}
	public void setElevator(String elevator) {
		this.elevator = elevator;
	}
	
	
	
	
	
	

	
	
}
