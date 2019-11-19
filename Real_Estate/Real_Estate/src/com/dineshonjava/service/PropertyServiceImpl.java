package com.dineshonjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.dineshonjava.dao.PropertyDao;
import com.dineshonjava.model.Property;

 
@Service("propertyService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class PropertyServiceImpl implements PropertyService {

	@Autowired
	private PropertyDao propertyDao;
	
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void addProperty(Property property) {
		propertyDao.addProperty(property);
	}
	
	public List<Property> listPropertiess() {
		return propertyDao.listPropertiess();
	}

	public Property getProperty(int id) {
		return propertyDao.getProperty(id);
	}
	
	public void deleteProperty(Property property) {
		propertyDao.deleteProperty(property);
	}

}
