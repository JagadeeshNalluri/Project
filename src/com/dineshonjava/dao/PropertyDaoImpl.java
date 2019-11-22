package com.dineshonjava.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dineshonjava.model.Property;

 
@Repository("propertyDao")
public class PropertyDaoImpl implements PropertyDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addProperty(Property property) {
		sessionFactory.getCurrentSession().saveOrUpdate(property);
	}

	@SuppressWarnings("unchecked")
	public List<Property> listPropertiess() {
		return (List<Property>) sessionFactory.getCurrentSession().createCriteria(Property.class).list();
	}

	public Property getProperty(int id) {
		return (Property) sessionFactory.getCurrentSession().get(Property.class, id);
	}

	public void deleteProperty(Property property) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM Property WHERE id = "+property.getId()).executeUpdate();
	}

}
