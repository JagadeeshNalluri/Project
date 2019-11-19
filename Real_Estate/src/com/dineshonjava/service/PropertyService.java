package com.dineshonjava.service;

import java.util.List;

import com.dineshonjava.model.Property;

 
public interface PropertyService {
	
	public void addProperty(Property property);

	public List<Property> listPropertiess();
	
	public Property getProperty(int id);
	
	public void deleteProperty(Property property);
}
